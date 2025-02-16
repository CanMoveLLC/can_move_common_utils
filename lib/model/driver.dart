import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../helpers/json_converters.dart';
import 'shipper.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

enum VehicleSize {
  Sedan,
  SUV,
  Cargo_Van,
  Pickup_Truck,
  Box_Truck,
  Semi_Truck,
  Flat_Bed
}

@freezed
class Driver with _$Driver {
  const Driver._();

  const factory Driver({
    required String uid,
    String? payID,
    @Default(false) bool payEnabled,
    @Default(false) bool online,
    @Default(false) bool verified,
    @Default('') String isDocumentRejectedReason,
    // required String firstName,
    // required String lastName,
    required String name,
    required String email,
    required String phone,
    required String photoUrl,
    required List<String> vehicleDocs,
    required List<String> vehicleImages,
    @Default(UserType.driver) UserType userType,
    @RatingConverter() required Rating rating,
    @Default(0) int totalMoves,
    @JsonKey(ignore: true) User? user,
    // for storing in hive/sharedPrefs, make sure this is null first.
    @NullGeoPointConverter() GeoPoint? location,
    required VehicleSize vehicleSize,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  // DriverMin get min =>
  //     DriverMin(uid: uid, firstName:firstName,lastName: lastName, location: location, payID: payID);
  DriverMin get min =>
      DriverMin(uid: uid, name:name, location: location, payID: payID);
  String get vehicleSizeTxt =>
      vehicleSize.toString().split(".")[1].replaceAll("_", " ");
}

@freezed
class Rating with _$Rating {
  const Rating._();

  const factory Rating({
    @Default(0.0) double rating,
    @Default(0) int total,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class DriverMin with _$DriverMin {
  const factory DriverMin({
    required String uid,
    String? payID,
    // required String firstName,
    // required String lastName,
    required String name,
    @NullGeoPointConverter() GeoPoint? location,
    @Default(UserType.driver) UserType userType,
  }) = _DriverMin;

  factory DriverMin.fromJson(Map<String, dynamic> json) =>
      _$DriverMinFromJson(json);
}

class DriverAdapter extends TypeAdapter<Driver> {
  @override
  int get typeId => 3; // this is unique, no other Adapter can have the same id.

  @override
  Driver read(BinaryReader reader) {
    return Driver.fromJson(jsonDecode(reader.readString()));
  }

  @override
  void write(BinaryWriter writer, Driver obj) {
    writer.writeString(jsonEncode(obj));
  }
}
