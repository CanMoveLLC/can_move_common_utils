import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_session.freezed.dart';
// part 'driver_session.g.dart';

@freezed
class DriverSession with _$DriverSession {
  const DriverSession._();

  const factory DriverSession({
    required String uid,
    required String name,
    required GeoPoint location,
  }) = _DriverSession;

  // factory DriverSession.fromJson(Map<String, dynamic> json) =>
  //     _$DriverSessionFromJson(json);
}
