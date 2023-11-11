import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

// This extension adds a property to DateTime instances to get a formatted date string.
extension DateTimeExt on DateTime {
  // Returns a formatted date string in the format 'Month Day, Year DayOfWeek' (e.g., 'Sep 10, 2023 Sun').
  String get dateStr {
    return DateFormat.yMMMEd().format(this);
  }
}

// This extension adds a property to Timestamp instances to get a formatted date string.
extension TimestampExt on Timestamp {
  // Returns a formatted date string in the format 'Month Day, Year DayOfWeek' (e.g., 'Sep 10, 2023 Sun').
  String get dateStr {
    // Converts the Timestamp to a DateTime and formats it.
    return DateFormat.yMMMEd().format(toDate());
  }
}
