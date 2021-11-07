// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Driver _$_$_DriverFromJson(Map<String, dynamic> json) {
  return _$_Driver(
    uid: json['uid'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    photoUrl: json['photoUrl'] as String?,
    userType: _$enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
        UserType.driver,
    rating: const RatingConverter().fromJson(json['rating'] as Object),
    totalLoads: json['totalLoads'] as int? ?? 0,
    location: const NullGeoPointConverter().fromJson(json['location']),
    vehicleSize: _$enumDecode(_$VehicleSizeEnumMap, json['vehicleSize']),
  );
}

Map<String, dynamic> _$_$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
      'userType': _$UserTypeEnumMap[instance.userType],
      'rating': const RatingConverter().toJson(instance.rating),
      'totalLoads': instance.totalLoads,
      'location': const NullGeoPointConverter().toJson(instance.location),
      'vehicleSize': _$VehicleSizeEnumMap[instance.vehicleSize],
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

const _$VehicleSizeEnumMap = {
  VehicleSize.Sedan: 'Sedan',
  VehicleSize.SUV: 'SUV',
  VehicleSize.Cargo_Van: 'Cargo_Van',
  VehicleSize.Pickup_Truck: 'Pickup_Truck',
  VehicleSize.Box_Truck: 'Box_Truck',
  VehicleSize.Semi_Truck: 'Semi_Truck',
  VehicleSize.Flat_Bed: 'Flat_Bed',
};

_$_Rating _$_$_RatingFromJson(Map<String, dynamic> json) {
  return _$_Rating(
    rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    total: json['total'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'rating': instance.rating,
      'total': instance.total,
    };

_$_DriverMin _$_$_DriverMinFromJson(Map<String, dynamic> json) {
  return _$_DriverMin(
    uid: json['uid'] as String,
    name: json['name'] as String,
    location: const NullGeoPointConverter().fromJson(json['location']),
    userType: _$enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
        UserType.driver,
  );
}

Map<String, dynamic> _$_$_DriverMinToJson(_$_DriverMin instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'location': const NullGeoPointConverter().toJson(instance.location),
      'userType': _$UserTypeEnumMap[instance.userType],
    };
