// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoveImpl _$$MoveImplFromJson(Map<String, dynamic> json) => _$MoveImpl(
      uid: json['uid'] as String,
      startDate: const NullTimeStampConverter().fromJson(json['startDate']),
      endDate: const NullTimeStampConverter().fromJson(json['endDate']),
      pickUpDate:
          const TimeStampConverter().fromJson(json['pickUpDate'] as Object),
      pickUp: const MoveLocationConverter().fromJson(json['pickUp'] as Object),
      dropOffs: const ListMoveLocationConverter()
          .fromJson(json['dropOffs'] as Object),
      driver: const NullDriverMinConverter().fromJson(json['driver']),
      shipper: const UserMinConverter().fromJson(json['shipper'] as Object),
      size: $enumDecode(_$VehicleSizeEnumMap, json['size']),
      detail: json['detail'] as String,
      price: (json['price'] as num).toDouble(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      payID: json['payID'] as String?,
      isPaid: json['isPaid'] as bool? ?? false,
      userHasBid: json['userHasBid'] as bool? ?? true,
      driverHasBid: json['driverHasBid'] as bool? ?? false,
      status: $enumDecodeNullable(_$MoveStatusEnumMap, json['status']) ??
          MoveStatus.PENDING,
      createdAt: const ServerTimeStampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$MoveImplToJson(_$MoveImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'startDate': const NullTimeStampConverter().toJson(instance.startDate),
      'endDate': const NullTimeStampConverter().toJson(instance.endDate),
      'pickUpDate': const TimeStampConverter().toJson(instance.pickUpDate),
      'pickUp': const MoveLocationConverter().toJson(instance.pickUp),
      'dropOffs': const ListMoveLocationConverter().toJson(instance.dropOffs),
      'driver': const NullDriverMinConverter().toJson(instance.driver),
      'shipper': const UserMinConverter().toJson(instance.shipper),
      'size': _$VehicleSizeEnumMap[instance.size]!,
      'detail': instance.detail,
      'price': instance.price,
      'images': instance.images,
      'payID': instance.payID,
      'isPaid': instance.isPaid,
      'userHasBid': instance.userHasBid,
      'driverHasBid': instance.driverHasBid,
      'status': _$MoveStatusEnumMap[instance.status]!,
      'createdAt': const ServerTimeStampConverter().toJson(instance.createdAt),
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

const _$MoveStatusEnumMap = {
  MoveStatus.PENDING: 'PENDING',
  MoveStatus.ACCEPTED: 'ACCEPTED',
  MoveStatus.TO_PICKUP: 'TO_PICKUP',
  MoveStatus.HAS_MOVE: 'HAS_MOVE',
  MoveStatus.TO_DROP: 'TO_DROP',
  MoveStatus.DROPPED_MOVE: 'DROPPED_MOVE',
  MoveStatus.CANCELED: 'CANCELED',
};

_$MoveLocationImpl _$$MoveLocationImplFromJson(Map<String, dynamic> json) =>
    _$MoveLocationImpl(
      location:
          const GeoFirePointConverter().fromJson(json['location'] as Object),
      address: json['address'] as String,
    );

Map<String, dynamic> _$$MoveLocationImplToJson(_$MoveLocationImpl instance) =>
    <String, dynamic>{
      'location': const GeoFirePointConverter().toJson(instance.location),
      'address': instance.address,
    };
