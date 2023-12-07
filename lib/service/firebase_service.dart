import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/model/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

// Service class for handling Firebase-related functionalities
class FirebaseService {
  // Method to retrieve and save the FCM token for the current user
  Future<void> getNSaveFCMToken() async {
    // Do nothing on the web platform
    if (kIsWeb) {
      return;
    }

    // Get the FCM token
    final String? token = await FirebaseMessaging.instance.getToken();

    // Get the UID of the current user
    final String? uid = FirebaseAuth.instance.currentUser?.uid;

    // If UID is not available, return
    if (uid == null) {
      return;
    }

    try {
      // Update the user's document in Firestore with the FCM token
      final FirebaseFirestore fb = FirebaseFirestore.instance;
      await fb.collection(usersCollection).doc(uid).update({"fcmToken": token});
    } on Exception catch (error, stack) {
      // Log any errors that occur during the process
      logError(error, stack);
    }
  }

  // Method to request user permission for FCM notifications
  Future<AuthorizationStatus> requestFCMPerm() async {
    return (await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    ))
        .authorizationStatus;
  }

  // Method to reset the user's password using their email
  Future<bool> resetPassword({required String email}) async {
    try {
      // Send a password reset email
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return true;
    } on Exception catch (error, stack) {
      // Log any errors that occur during the process and return false
      logError(error, stack);
      return false;
    }
  }
}
