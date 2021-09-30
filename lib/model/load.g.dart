// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Load _$_$_LoadFromJson(Map<String, dynamic> json) {
  return _$_Load(
    uid: json['uid'] as String?,
    startDate: const NullTimeStampConverter().fromJson(json['startDate']),
    endDate: const NullTimeStampConverter().fromJson(json['endDate']),
    pickUpDate:
        const TimeStampConverter().fromJson(json['pickUpDate'] as Object),
    pickUp: const LoadLocationConverter().fromJson(json['pickUp'] as Object),
    dropOffs:
        const ListLoadLocationConverter().fromJson(json['dropOffs'] as Object),
    driver: const NullDriverMinConverter().fromJson(json['driver']),
    shipper: const UserMinConverter().fromJson(json['shipper'] as Object),
    size: _$enumDecode(_$VehicleSizeEnumMap, json['size']),
    detail: json['detail'] as String,
    price: (json['price'] as num).toDouble(),
    distance: (json['distance'] as num).toDouble(),
    image: json['image'] as String?,
    status: _$enumDecodeNullable(_$LoadStatusEnumMap, json['status']) ??
        LoadStatus.PENDING,
    createdAt: const ServerTimeStampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_LoadToJson(_$_Load instance) => <String, dynamic>{
      'uid': instance.uid,
      'startDate': const NullTimeStampConverter().toJson(instance.startDate),
      'endDate': const NullTimeStampConverter().toJson(instance.endDate),
      'pickUpDate': const TimeStampConverter().toJson(instance.pickUpDate),
      'pickUp': const LoadLocationConverter().toJson(instance.pickUp),
      'dropOffs': const ListLoadLocationConverter().toJson(instance.dropOffs),
      'driver': const NullDriverMinConverter().toJson(instance.driver),
      'shipper': const UserMinConverter().toJson(instance.shipper),
      'size': _$VehicleSizeEnumMap[instance.size],
      'detail': instance.detail,
      'price': instance.price,
      'distance': instance.distance,
      'image': instance.image,
      'status': _$LoadStatusEnumMap[instance.status],
      'createdAt': const ServerTimeStampConverter().toJson(instance.createdAt),
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

const _$VehicleSizeEnumMap = {
  VehicleSize.Sedan: 'Sedan',
  VehicleSize.SUV: 'SUV',
  VehicleSize.Cargo_Van: 'Cargo_Van',
  VehicleSize.Pickup_Truck: 'Pickup_Truck',
  VehicleSize.Box_Truck: 'Box_Truck',
  VehicleSize.Semi_Truck: 'Semi_Truck',
  VehicleSize.Flat_Bed: 'Flat_Bed',
};

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

const _$LoadStatusEnumMap = {
  LoadStatus.PENDING: 'PENDING',
  LoadStatus.ACCEPTED: 'ACCEPTED',
  LoadStatus.TO_PICKUP: 'TO_PICKUP',
  LoadStatus.HAS_LOAD: 'HAS_LOAD',
  LoadStatus.TO_DROP: 'TO_DROP',
  LoadStatus.DROPPED_LOAD: 'DROPPED_LOAD',
  LoadStatus.RATED: 'RATED',
};

_$_LoadLocation _$_$_LoadLocationFromJson(Map<String, dynamic> json) {
  return _$_LoadLocation(
    location:
        const GeoFirePointConverter().fromJson(json['location'] as Object),
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$_$_LoadLocationToJson(_$_LoadLocation instance) =>
    <String, dynamic>{
      'location': const GeoFirePointConverter().toJson(instance.location),
      'address': instance.address,
    };
