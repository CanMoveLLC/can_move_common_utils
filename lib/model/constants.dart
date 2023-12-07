import 'dart:ui';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

// Define constants for Firestore collections
const usersCollection = "users";
const movesCollection = "moves";
const notificationsCollection = "notifications";
const chatUsersCollection = "chatUsers";
const chatRoomsCollection = "chatRooms";

// URL for the privacy policy
const String kPrivacyUrl = "https://canmove.io/privacy-policy/";

// List of colors for user avatars in chat
const List<Color> kChatColors = <Color>[
  Color(0xffff6767),
  Color(0xff66e0da),
  Color(0xfff5a2d9),
  Color(0xfff0c722),
  Color(0xff6a85e5),
  Color(0xfffd9a6f),
  Color(0xff92db6e),
  Color(0xff73b8e5),
  Color(0xfffd7590),
  Color(0xffc78ae5),
];

// Function to get a color for the user's avatar based on their ID
Color getUserAvatarNameColor(types.User user) {
  // Calculate an index based on the user's ID to pick a color from the list
  final int index = user.id.hashCode % kChatColors.length;

  // Return the selected color
  return kChatColors[index];
}
