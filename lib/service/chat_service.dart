import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/model/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';

class ChatService {
  final _fireChat = FirebaseChatCore.instance;
  ChatService() {
    _fireChat.setConfig(
      FirebaseChatCoreConfig(
      null,
      chatUsersCollection,
      chatUsersCollection,
    ));
  }

  Stream<List<types.Room>> rooms() {
    return _fireChat.rooms();
  }

  Stream<List<types.Message>> messages(types.Room room) {
    return _fireChat.messages(room);
  }

  Stream<types.Room> room(String id) {
    return _fireChat.room(id);
  }

  void updateMessage(types.Message updatedMessage, String id) {
    _fireChat.updateMessage(updatedMessage, id);
  }

  Future<bool> createUser(User user) async {
    var names = user.displayName!.split(" ");
    var firstName = names[0];
    var lastName = "";
    if (names.length > 2) lastName = names[names.length - 1];
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

  void sendMessage(types.PartialText message, String roomId) {
    _fireChat.sendMessage(
      message,
      roomId,
    );
  }

  Future<types.Room?> createRoom({required types.User other}) async {
    try {
      return _fireChat.createRoom(other);
    } on Exception catch (error, stack) {
      logError(error, stack);
      return null;
    }
  }

  Future<types.Room?> getRoom({required String id}) async {
    try {
      return await _fireChat.room(id).first;
    } on Exception catch (error, stack) {
      logError(error, stack);
      return null;
    }
  }
}
