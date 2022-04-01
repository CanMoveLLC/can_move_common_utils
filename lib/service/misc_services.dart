import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/result.dart';

class ReportService {
  final _store = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Future<Result<bool>> reportIssue({
    required String issue,
  }) async {
    try {
      await _store.collection("issues").add({
        "content": issue,
        "userUid": _auth.currentUser!.uid,
      });
      return defaultOkRes;
    } on Exception catch (e, trace) {
      logError(e, trace);
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
