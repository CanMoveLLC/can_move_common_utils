import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'shipper.freezed.dart';
part 'shipper.g.dart';

enum UserType { shipper, driver }

@freezed
class Shipper with _$Shipper {
  const Shipper._();

  const factory Shipper({
    required String uid,
    required String name,
    required String email,
    String? photoUrl,
    @Default(UserType.shipper) UserType userType,
    @JsonKey(ignore: true) User? user,
  }) = _Shipper;

  factory Shipper.fromJson(Map<String, dynamic> json) =>
      _$ShipperFromJson(json);

  ShipperMin get min => ShipperMin(uid: uid, name: name);
}

@freezed
class ShipperMin with _$ShipperMin {
  const factory ShipperMin({
    required String uid,
    required String name,
    @Default(UserType.shipper) UserType userType,
  }) = _ShipperMin;

  factory ShipperMin.fromJson(Map<String, dynamic> json) =>
      _$ShipperMinFromJson(json);
}

class ShipperAdapter extends TypeAdapter<Shipper> {
  // this is unique, no other Adapter can have the same id.
  @override
  int get typeId => 10;

  @override
  Shipper read(BinaryReader reader) {
    return Shipper.fromJson(jsonDecode(reader.readString()));
  }

  @override
  void write(BinaryWriter writer, Shipper obj) {
    writer.writeString(jsonEncode(obj));
  }
}
