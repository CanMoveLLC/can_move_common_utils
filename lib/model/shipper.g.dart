// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipperImpl _$$ShipperImplFromJson(Map<String, dynamic> json) =>
    _$ShipperImpl(
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String?,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.shipper,
    );

Map<String, dynamic> _$$ShipperImplToJson(_$ShipperImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'userType': _$UserTypeEnumMap[instance.userType]!,
    };

const _$UserTypeEnumMap = {
  UserType.shipper: 'shipper',
  UserType.driver: 'driver',
};

_$ShipperMinImpl _$$ShipperMinImplFromJson(Map<String, dynamic> json) =>
    _$ShipperMinImpl(
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.shipper,
    );

Map<String, dynamic> _$$ShipperMinImplToJson(_$ShipperMinImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userType': _$UserTypeEnumMap[instance.userType]!,
    };
