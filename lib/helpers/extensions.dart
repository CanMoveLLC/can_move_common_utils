import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get dateStr {
    return DateFormat.yMMMEd().format(this);
  }
}

extension TimestampExt on Timestamp {
  String get dateStr {
    return DateFormat.yMMMEd().format(toDate());
  }
}
