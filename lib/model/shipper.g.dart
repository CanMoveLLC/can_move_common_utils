// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shipper _$$_ShipperFromJson(Map<String, dynamic> json) => _$_Shipper(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String?,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.shipper,
    );

Map<String, dynamic> _$$_ShipperToJson(_$_Shipper instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'userType': _$UserTypeEnumMap[instance.userType],
    };

const _$UserTypeEnumMap = {
  UserType.shipper: 'shipper',
  UserType.driver: 'driver',
};

_$_ShipperMin _$$_ShipperMinFromJson(Map<String, dynamic> json) =>
    _$_ShipperMin(
      uid: json['uid'] as String,
      name: json['name'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.shipper,
    );

Map<String, dynamic> _$$_ShipperMinToJson(_$_ShipperMin instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'userType': _$UserTypeEnumMap[instance.userType],
    };
