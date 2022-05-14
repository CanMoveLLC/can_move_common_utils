import 'dart:ui';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

const usersCollection = "users";
const movesCollection = "moves";
const notificationsCollection = "notifications";
const chatUsersCollection = "chatUsers";
const chatRoomsCollection = "chatRooms";
const kPrivacyUrl = "https://canmove.io/privacy-policy/";
const kChatColors = [
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

Color getUserAvatarNameColor(types.User user) {
  final index = user.id.hashCode % kChatColors.length;
  return kChatColors[index];
}
