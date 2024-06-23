// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverImpl _$$DriverImplFromJson(Map<String, dynamic> json) => _$DriverImpl(
      uid: json['uid'] as String,
      payID: json['payID'] as String?,
      payEnabled: json['payEnabled'] as bool? ?? false,
      online: json['online'] as bool? ?? false,
      verified: json['verified'] as bool? ?? false,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      photoUrl: json['photoUrl'] as String,
      vehicleDocs: (json['vehicleDocs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      vehicleImages: (json['vehicleImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.driver,
      rating: const RatingConverter().fromJson(json['rating'] as Object),
      totalMoves: (json['totalMoves'] as num?)?.toInt() ?? 0,
      location: const NullGeoPointConverter().fromJson(json['location']),
      vehicleSize: $enumDecode(_$VehicleSizeEnumMap, json['vehicleSize']),
    );

Map<String, dynamic> _$$DriverImplToJson(_$DriverImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'payID': instance.payID,
      'payEnabled': instance.payEnabled,
      'online': instance.online,
      'verified': instance.verified,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
      'vehicleDocs': instance.vehicleDocs,
      'vehicleImages': instance.vehicleImages,
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'rating': const RatingConverter().toJson(instance.rating),
      'totalMoves': instance.totalMoves,
      'location': const NullGeoPointConverter().toJson(instance.location),
      'vehicleSize': _$VehicleSizeEnumMap[instance.vehicleSize]!,
    };

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

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'total': instance.total,
    };

_$DriverMinImpl _$$DriverMinImplFromJson(Map<String, dynamic> json) =>
    _$DriverMinImpl(
      uid: json['uid'] as String,
      payID: json['payID'] as String?,
      name: json['name'] as String,
      location: const NullGeoPointConverter().fromJson(json['location']),
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.driver,
    );

Map<String, dynamic> _$$DriverMinImplToJson(_$DriverMinImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'payID': instance.payID,
      'name': instance.name,
      'location': const NullGeoPointConverter().toJson(instance.location),
      'userType': _$UserTypeEnumMap[instance.userType]!,
    };
