import 'package:firebase_auth/firebase_auth.dart';

class CMException implements Exception {
  final String message;
  final StackTrace? stackTrace;
  final Exception? exception;

  const CMException({required this.message, this.stackTrace, this.exception});

  factory CMException.fromFBAuthError(FirebaseAuthException exception,
      [StackTrace? trace]) {
    var msg = "Could not authenticate";
    switch (exception.code) {
      case "requires-recent-login":
        msg = "You need to have logged in recently or log in again to do this.";
        break;
      case "user-not-found":
        msg = "No user associated with this email address.";
        break;
      case "network-request-failed":
        msg = "Please check your internet.";
        break;
      case "too-many-requests":
        msg = "Please try again later.";
        break;
      case "user-disabled":
        msg = "Your account has been suspended.";
        break;
      case "email-already-exists":
        msg = "An account with this email already exists.";
        break;
      case "email-already-in-use":
        msg = "An account with this email already exists.";
        break;
      case "invalid-email":
        msg = "Invalid email, please enter a proper email address.";
        break;
      case "invalid-password":
        msg = "Please enter a secure password.";
        break;
      case "wrong-password":
        msg = "Please enter the correct password for this account.";
        break;
      case "weak-password":
        msg = "Please enter a strong password.";
        break;
      default:
    }
    return CMException(message: msg, exception: exception, stackTrace: trace);
  }
}

class Result<T> {
  final T value;
  final CMException? error;

  const Result({required this.value, this.error});
}

Result<bool> get defaultOkRes => Result(value: true);
