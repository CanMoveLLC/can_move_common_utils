import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/model/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';

// Service for managing chat functionality
class ChatService {
  final FirebaseChatCore _fireChat = FirebaseChatCore.instance;

  // Constructor to initialize Firebase Chat Core configuration
  ChatService() {
    _fireChat.setConfig(FirebaseChatCoreConfig(
      null, // Add your Firebase App options here if needed
      chatRoomsCollection,
      chatUsersCollection,
    ));
  }

  // Stream to get a list of chat rooms
  Stream<List<types.Room>> rooms() {
    return _fireChat.rooms();
  }

  // Stream to get messages within a room
  Stream<List<types.Message>> messages(types.Room room) {
    return _fireChat.messages(room);
  }

  // Stream to get details of a specific room
  Stream<types.Room> room(String id) {
    return _fireChat.room(id);
  }

  // Method to update a message within a room
  void updateMessage(types.Message updatedMessage, String id) {
    return _fireChat.updateMessage(updatedMessage, id);
  }

  // Method to create a user in Firestore
  Future<bool> createUser(User user) async {
    final List<String> names = user.displayName!.split(" ");
    final String firstName = names[0];
    String lastName = "";
    if (names.length > 2) {
      lastName = names[names.length - 1];
    }
    try {
      await _fireChat.createUserInFirestore(types.User(
        firstName: firstName,
        id: user.uid,
        imageUrl: user.photoURL,
        lastName: lastName.isNotEmpty ? lastName : null,
      ));
      return true;
    } on Exception catch (e, stack) {
      logError(e, stack);
      return false;
    }
  }

  // Method to send a text message to a room
  void sendMessage(types.PartialText message, String roomId) {
    return _fireChat.sendMessage(message, roomId);
  }

  // Method to create a new room with another user
  Future<types.Room?> createRoom({required types.User other}) async {
    try {
      return _fireChat.createRoom(other);
    } on Exception catch (error, stack) {
      logError(error, stack);
      return null;
    }
  }

  // Method to get details of an existing room
  Future<types.Room?> getRoom({required String id}) async {
    try {
      return await _fireChat.room(id).first;
    } on Exception catch (error, stack) {
      logError(error, stack);
      return null;
    }
  }
}
