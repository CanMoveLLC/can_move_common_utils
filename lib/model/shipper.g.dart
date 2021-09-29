// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shipper _$_$_ShipperFromJson(Map<String, dynamic> json) {
  return _$_Shipper(
    uid: json['uid'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    photoUrl: json['photoUrl'] as String?,
    userType: _$enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
        UserType.shipper,
  );
}

Map<String, dynamic> _$_$_ShipperToJson(_$_Shipper instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'userType': _$UserTypeEnumMap[instance.userType],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$UserTypeEnumMap = {
  UserType.shipper: 'shipper',
  UserType.driver: 'driver',
};

_$_ShipperMin _$_$_ShipperMinFromJson(Map<String, dynamic> json) {
  return _$_ShipperMin(
    uid: json['uid'] as String,
    name: json['name'] as String,
    userType: _$enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
        UserType.shipper,
  );
}

Map<String, dynamic> _$_$_ShipperMinToJson(_$_ShipperMin instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'userType': _$UserTypeEnumMap[instance.userType],
    };
