import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/result.dart';

// Service class for reporting issues
class ReportService {
  final _store = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  // Method to report an issue
  Future<Result<bool>> reportIssue({
    required String issue,
  }) async {
    try {
      // Add the issue to the "issues" collection in Firestore
      await _store.collection("issues").add({
        "content": issue,
        "userUid": _auth.currentUser!.uid,
      });

      // Return a successful result
      return defaultOkRes;
    } on Exception catch (e, trace) {
      // Log any errors that occur during the process
      logError(e, trace);

      // Return a result with an error if an exception occurs
      return Result(
        value: false,
        error: CMException(
          exception: e,
          message: "Could not sign in",
          stackTrace: trace,
        ),
      );
    }
  }
}
