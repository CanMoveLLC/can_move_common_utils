import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/json_converters.dart';
import 'driver.dart';
import 'shipper.dart';

part 'load.freezed.dart';
part 'load.g.dart';

enum LoadStatus {
  PENDING,
  ACCEPTED,
  TO_PICKUP,
  HAS_LOAD,
  TO_DROP,
  DROPPED_LOAD,
  RATED,
}

@freezed
class Load with _$Load {
  const Load._();

  const factory Load({
    String? uid,
    @NullTimeStampConverter() Timestamp? startDate,
    @NullTimeStampConverter()
        Timestamp? endDate, // will be set on firebase func
    @TimeStampConverter() required Timestamp pickUpDate,
    @LoadLocationConverter() required LoadLocation dropOff,
    @LoadLocationConverter() required LoadLocation pickUp,
    @NullDriverMinConverter() DriverMin? driver,
    @UserMinConverter() required ShipperMin shipper,
    required VehicleSize size,
    required String detail,
    required double price,
    required double distance,
    String? image,
    @Default(LoadStatus.PENDING) LoadStatus status,
    @ServerTimeStampConverter() FieldValue? createdAt,
  }) = _Load;

  factory Load.fromJson(Map<String, dynamic> json) => _$LoadFromJson(json);

  factory Load.fromFirestore(DocumentSnapshot snapshot) {
    return Load.fromJson(snapshot.data() as Map<String, dynamic>)
        .copyWith(uid: snapshot.id);
  }

  String get statusStr =>
      status.toString().split('.').last.replaceAll("_", " ").toUpperCase();

  String get statusMsg {
    switch (status) {
      case LoadStatus.PENDING:
        return "Waiting for a driver to accept.";
      case LoadStatus.ACCEPTED:
        return "Driver has accepted.";
      case LoadStatus.TO_PICKUP:
        return "Driver is going to pick up load.";

      case LoadStatus.HAS_LOAD:
        return "Driver has picked up the load.";

      case LoadStatus.TO_DROP:
        return "Driver is going to drop off.";

      case LoadStatus.DROPPED_LOAD:
        return "Driver has dropped off the load.";
      case LoadStatus.RATED:
        return "Service completed.";
    }
  }

  String get sizeStr =>
      size.toString().split('.').last.replaceAll("_", " ").toUpperCase();
}

Load get dummyLoad => Load(
      detail: "",
      image: null,
      price: 111.0,
      distance: 111.0,
      startDate: Timestamp.now(),
      pickUpDate: Timestamp.now(),
      dropOff: LoadLocation(
        location: GeoPoint(-5.32323, 0.32323),
        address: "dropOffAddress",
      ),
      pickUp: LoadLocation(
        location: GeoPoint(-5.32323, 0.32323),
        address: "pickUpAddress",
      ),
      driver: DriverMin(
        uid: "driverUid",
        name: "Driver",
        location: GeoPoint(-5.32323, 0.32323),
      ),
      shipper: ShipperMin(
        uid: "shipperUid",
        name: "Shipper",
      ),
      size: VehicleSize.Sedan,
      status: LoadStatus.PENDING,
      createdAt: FieldValue.serverTimestamp(),
    );

@freezed
class LoadLocation with _$LoadLocation {
  const LoadLocation._();

  const factory LoadLocation({
    @GeoPointConverter() required GeoPoint location,
    required String address,
  }) = _LoadLocation;

  factory LoadLocation.fromJson(Map<String, dynamic> json) =>
      _$LoadLocationFromJson(json);
}
