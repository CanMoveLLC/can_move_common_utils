import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/model/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {
  void getNSaveFCMToken() async {
    var token = await FirebaseMessaging.instance.getToken();
    var uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;
    try {
      var fb = FirebaseFirestore.instance;
      await fb.collection(usersCollection).doc(uid).update({"fcmToken": token});
    } on Exception catch (error, stack) {
      logError(error, stack);
    }
  }

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

  Future<bool> resetPassword({required String email}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return true;
    } on Exception catch (error, stack) {
      logError(error, stack);
      return false;
    }
  }
}
