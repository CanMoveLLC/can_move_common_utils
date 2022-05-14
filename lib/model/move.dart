import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';

import '../helpers/json_converters.dart';
import 'driver.dart';
import 'shipper.dart';

part 'move.freezed.dart';

part 'move.g.dart';

enum MoveStatus {
  PENDING,
  ACCEPTED,
  TO_PICKUP,
  HAS_LOAD,
  TO_DROP,
  DROPPED_MOVE,
  CANCELED,
}

@freezed
class Move with _$Move {
  const Move._();

  const factory Move({
    required String uid,
    @NullTimeStampConverter() Timestamp? startDate,
    @NullTimeStampConverter() Timestamp? endDate, // will be set on firebase func
    @TimeStampConverter() required Timestamp pickUpDate,
    @MoveLocationConverter() required MoveLocation pickUp,
    @ListMoveLocationConverter() required List<MoveLocation> dropOffs,
    @NullDriverMinConverter() DriverMin? driver,
    @UserMinConverter() required ShipperMin shipper,
    required VehicleSize size,
    required String detail,
    required double price,
    // required double distance,
    @Default([]) List<String> images,
    String? payID,
    @Default(false) bool isPaid,
    @Default(true) bool userHasBid,
    @Default(false) bool driverHasBid,
    @Default(MoveStatus.PENDING) MoveStatus status,
    @ServerTimeStampConverter() FieldValue? createdAt,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);

  factory Move.fromFirestore(DocumentSnapshot snapshot) {
    return Move.fromJson(snapshot.data() as Map<String, dynamic>)
        .copyWith(uid: snapshot.id);
  }

  // String get statusStr =>
  //     status.toString().split('.').last.replaceAll("_", " ").toUpperCase();

  String get statusStr {
    switch (status) {
      case MoveStatus.PENDING:
        return "Pending";
      case MoveStatus.ACCEPTED:
        return "Accepted";
      case MoveStatus.TO_PICKUP:
        return "En Route";

      case MoveStatus.HAS_LOAD:
        return "Picked";

      case MoveStatus.TO_DROP:
        return "En Route";

      case MoveStatus.DROPPED_MOVE:
        return "Dropped";
      case MoveStatus.CANCELED:
        return "Canceled";
    }
  }

  String get statusMsg {
    var drive = "Driver";
    if (driver != null)
      drive = driver!.name.split(" ").first;
    switch (status) {
      case MoveStatus.PENDING:
        return "Waiting for $drive to accept.";
      case MoveStatus.ACCEPTED:
        return "$drive has accepted.";
      case MoveStatus.TO_PICKUP:
        return "$drive is going to pick up the move.";
      case MoveStatus.HAS_LOAD:
        return "$drive has picked up the move.";
      case MoveStatus.TO_DROP:
        return "$drive is going to drop off.";
      case MoveStatus.DROPPED_MOVE:
        return "$drive has dropped off the move.";
      case MoveStatus.CANCELED:
        return "Service Canceled.";
    }
  }

  String get sizeStr =>
      size
          .toString()
          .split('.')
          .last
          .replaceAll("_", " ")
          .toUpperCase();

  bool get shouldPay {
    return driver?.payID != null &&
        !isPaid &&
        (status != MoveStatus.PENDING && status != MoveStatus.CANCELED);
  }

  bool get isNotOnGoing {
    return status == MoveStatus.DROPPED_MOVE || status == MoveStatus.CANCELED;
  }
}

@freezed
class MoveLocation with _$MoveLocation {
  const MoveLocation._();

  const factory MoveLocation({
    @GeoFirePointConverter() required GeoFirePoint location,
    required String address,
  }) = _MoveLocation;

  factory MoveLocation.fromJson(Map<String, dynamic> json) =>
      _$MoveLocationFromJson(json);
}
