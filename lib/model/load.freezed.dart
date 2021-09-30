// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'load.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Load _$LoadFromJson(Map<String, dynamic> json) {
  return _Load.fromJson(json);
}

/// @nodoc
class _$LoadTearOff {
  const _$LoadTearOff();

  _Load call(
      {String? uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() required Timestamp pickUpDate,
      @LoadLocationConverter() required LoadLocation pickUp,
      @ListLoadLocationConverter() required List<LoadLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() required ShipperMin shipper,
      required VehicleSize size,
      required String detail,
      required double price,
      required double distance,
      String? image,
      LoadStatus status = LoadStatus.PENDING,
      @ServerTimeStampConverter() FieldValue? createdAt}) {
    return _Load(
      uid: uid,
      startDate: startDate,
      endDate: endDate,
      pickUpDate: pickUpDate,
      pickUp: pickUp,
      dropOffs: dropOffs,
      driver: driver,
      shipper: shipper,
      size: size,
      detail: detail,
      price: price,
      distance: distance,
      image: image,
      status: status,
      createdAt: createdAt,
    );
  }

  Load fromJson(Map<String, Object> json) {
    return Load.fromJson(json);
  }
}

/// @nodoc
const $Load = _$LoadTearOff();

/// @nodoc
mixin _$Load {
  String? get uid => throw _privateConstructorUsedError;
  @NullTimeStampConverter()
  Timestamp? get startDate => throw _privateConstructorUsedError;
  @NullTimeStampConverter()
  Timestamp? get endDate =>
      throw _privateConstructorUsedError; // will be set on firebase func
  @TimeStampConverter()
  Timestamp get pickUpDate => throw _privateConstructorUsedError;
  @LoadLocationConverter()
  LoadLocation get pickUp => throw _privateConstructorUsedError;
  @ListLoadLocationConverter()
  List<LoadLocation> get dropOffs => throw _privateConstructorUsedError;
  @NullDriverMinConverter()
  DriverMin? get driver => throw _privateConstructorUsedError;
  @UserMinConverter()
  ShipperMin get shipper => throw _privateConstructorUsedError;
  VehicleSize get size => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadCopyWith<Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() Timestamp pickUpDate,
      @LoadLocationConverter() LoadLocation pickUp,
      @ListLoadLocationConverter() List<LoadLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() ShipperMin shipper,
      VehicleSize size,
      String detail,
      double price,
      double distance,
      String? image,
      LoadStatus status,
      @ServerTimeStampConverter() FieldValue? createdAt});

  $LoadLocationCopyWith<$Res> get pickUp;
  $DriverMinCopyWith<$Res>? get driver;
  $ShipperMinCopyWith<$Res> get shipper;
}

/// @nodoc
class _$LoadCopyWithImpl<$Res> implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(this._value, this._then);

  final Load _value;
  // ignore: unused_field
  final $Res Function(Load) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? pickUpDate = freezed,
    Object? pickUp = freezed,
    Object? dropOffs = freezed,
    Object? driver = freezed,
    Object? shipper = freezed,
    Object? size = freezed,
    Object? detail = freezed,
    Object? price = freezed,
    Object? distance = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      pickUpDate: pickUpDate == freezed
          ? _value.pickUpDate
          : pickUpDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      pickUp: pickUp == freezed
          ? _value.pickUp
          : pickUp // ignore: cast_nullable_to_non_nullable
              as LoadLocation,
      dropOffs: dropOffs == freezed
          ? _value.dropOffs
          : dropOffs // ignore: cast_nullable_to_non_nullable
              as List<LoadLocation>,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverMin?,
      shipper: shipper == freezed
          ? _value.shipper
          : shipper // ignore: cast_nullable_to_non_nullable
              as ShipperMin,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }

  @override
  $LoadLocationCopyWith<$Res> get pickUp {
    return $LoadLocationCopyWith<$Res>(_value.pickUp, (value) {
      return _then(_value.copyWith(pickUp: value));
    });
  }

  @override
  $DriverMinCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverMinCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value));
    });
  }

  @override
  $ShipperMinCopyWith<$Res> get shipper {
    return $ShipperMinCopyWith<$Res>(_value.shipper, (value) {
      return _then(_value.copyWith(shipper: value));
    });
  }
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> implements $LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() Timestamp pickUpDate,
      @LoadLocationConverter() LoadLocation pickUp,
      @ListLoadLocationConverter() List<LoadLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() ShipperMin shipper,
      VehicleSize size,
      String detail,
      double price,
      double distance,
      String? image,
      LoadStatus status,
      @ServerTimeStampConverter() FieldValue? createdAt});

  @override
  $LoadLocationCopyWith<$Res> get pickUp;
  @override
  $DriverMinCopyWith<$Res>? get driver;
  @override
  $ShipperMinCopyWith<$Res> get shipper;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$LoadCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? uid = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? pickUpDate = freezed,
    Object? pickUp = freezed,
    Object? dropOffs = freezed,
    Object? driver = freezed,
    Object? shipper = freezed,
    Object? size = freezed,
    Object? detail = freezed,
    Object? price = freezed,
    Object? distance = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Load(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      pickUpDate: pickUpDate == freezed
          ? _value.pickUpDate
          : pickUpDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      pickUp: pickUp == freezed
          ? _value.pickUp
          : pickUp // ignore: cast_nullable_to_non_nullable
              as LoadLocation,
      dropOffs: dropOffs == freezed
          ? _value.dropOffs
          : dropOffs // ignore: cast_nullable_to_non_nullable
              as List<LoadLocation>,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverMin?,
      shipper: shipper == freezed
          ? _value.shipper
          : shipper // ignore: cast_nullable_to_non_nullable
              as ShipperMin,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Load extends _Load {
  const _$_Load(
      {this.uid,
      @NullTimeStampConverter() this.startDate,
      @NullTimeStampConverter() this.endDate,
      @TimeStampConverter() required this.pickUpDate,
      @LoadLocationConverter() required this.pickUp,
      @ListLoadLocationConverter() required this.dropOffs,
      @NullDriverMinConverter() this.driver,
      @UserMinConverter() required this.shipper,
      required this.size,
      required this.detail,
      required this.price,
      required this.distance,
      this.image,
      this.status = LoadStatus.PENDING,
      @ServerTimeStampConverter() this.createdAt})
      : super._();

  factory _$_Load.fromJson(Map<String, dynamic> json) =>
      _$_$_LoadFromJson(json);

  @override
  final String? uid;
  @override
  @NullTimeStampConverter()
  final Timestamp? startDate;
  @override
  @NullTimeStampConverter()
  final Timestamp? endDate;
  @override // will be set on firebase func
  @TimeStampConverter()
  final Timestamp pickUpDate;
  @override
  @LoadLocationConverter()
  final LoadLocation pickUp;
  @override
  @ListLoadLocationConverter()
  final List<LoadLocation> dropOffs;
  @override
  @NullDriverMinConverter()
  final DriverMin? driver;
  @override
  @UserMinConverter()
  final ShipperMin shipper;
  @override
  final VehicleSize size;
  @override
  final String detail;
  @override
  final double price;
  @override
  final double distance;
  @override
  final String? image;
  @JsonKey(defaultValue: LoadStatus.PENDING)
  @override
  final LoadStatus status;
  @override
  @ServerTimeStampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'Load(uid: $uid, startDate: $startDate, endDate: $endDate, pickUpDate: $pickUpDate, pickUp: $pickUp, dropOffs: $dropOffs, driver: $driver, shipper: $shipper, size: $size, detail: $detail, price: $price, distance: $distance, image: $image, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.pickUpDate, pickUpDate) ||
                const DeepCollectionEquality()
                    .equals(other.pickUpDate, pickUpDate)) &&
            (identical(other.pickUp, pickUp) ||
                const DeepCollectionEquality().equals(other.pickUp, pickUp)) &&
            (identical(other.dropOffs, dropOffs) ||
                const DeepCollectionEquality()
                    .equals(other.dropOffs, dropOffs)) &&
            (identical(other.driver, driver) ||
                const DeepCollectionEquality().equals(other.driver, driver)) &&
            (identical(other.shipper, shipper) ||
                const DeepCollectionEquality()
                    .equals(other.shipper, shipper)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(pickUpDate) ^
      const DeepCollectionEquality().hash(pickUp) ^
      const DeepCollectionEquality().hash(dropOffs) ^
      const DeepCollectionEquality().hash(driver) ^
      const DeepCollectionEquality().hash(shipper) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoadToJson(this);
  }
}

abstract class _Load extends Load {
  const factory _Load(
      {String? uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() required Timestamp pickUpDate,
      @LoadLocationConverter() required LoadLocation pickUp,
      @ListLoadLocationConverter() required List<LoadLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() required ShipperMin shipper,
      required VehicleSize size,
      required String detail,
      required double price,
      required double distance,
      String? image,
      LoadStatus status,
      @ServerTimeStampConverter() FieldValue? createdAt}) = _$_Load;
  const _Load._() : super._();

  factory _Load.fromJson(Map<String, dynamic> json) = _$_Load.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  @NullTimeStampConverter()
  Timestamp? get startDate => throw _privateConstructorUsedError;
  @override
  @NullTimeStampConverter()
  Timestamp? get endDate => throw _privateConstructorUsedError;
  @override // will be set on firebase func
  @TimeStampConverter()
  Timestamp get pickUpDate => throw _privateConstructorUsedError;
  @override
  @LoadLocationConverter()
  LoadLocation get pickUp => throw _privateConstructorUsedError;
  @override
  @ListLoadLocationConverter()
  List<LoadLocation> get dropOffs => throw _privateConstructorUsedError;
  @override
  @NullDriverMinConverter()
  DriverMin? get driver => throw _privateConstructorUsedError;
  @override
  @UserMinConverter()
  ShipperMin get shipper => throw _privateConstructorUsedError;
  @override
  VehicleSize get size => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  double get distance => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  LoadStatus get status => throw _privateConstructorUsedError;
  @override
  @ServerTimeStampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

LoadLocation _$LoadLocationFromJson(Map<String, dynamic> json) {
  return _LoadLocation.fromJson(json);
}

/// @nodoc
class _$LoadLocationTearOff {
  const _$LoadLocationTearOff();

  _LoadLocation call(
      {@GeoFirePointConverter() required GeoFirePoint location,
      required String address}) {
    return _LoadLocation(
      location: location,
      address: address,
    );
  }

  LoadLocation fromJson(Map<String, Object> json) {
    return LoadLocation.fromJson(json);
  }
}

/// @nodoc
const $LoadLocation = _$LoadLocationTearOff();

/// @nodoc
mixin _$LoadLocation {
  @GeoFirePointConverter()
  GeoFirePoint get location => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadLocationCopyWith<LoadLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadLocationCopyWith<$Res> {
  factory $LoadLocationCopyWith(
          LoadLocation value, $Res Function(LoadLocation) then) =
      _$LoadLocationCopyWithImpl<$Res>;
  $Res call({@GeoFirePointConverter() GeoFirePoint location, String address});
}

/// @nodoc
class _$LoadLocationCopyWithImpl<$Res> implements $LoadLocationCopyWith<$Res> {
  _$LoadLocationCopyWithImpl(this._value, this._then);

  final LoadLocation _value;
  // ignore: unused_field
  final $Res Function(LoadLocation) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoFirePoint,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoadLocationCopyWith<$Res>
    implements $LoadLocationCopyWith<$Res> {
  factory _$LoadLocationCopyWith(
          _LoadLocation value, $Res Function(_LoadLocation) then) =
      __$LoadLocationCopyWithImpl<$Res>;
  @override
  $Res call({@GeoFirePointConverter() GeoFirePoint location, String address});
}

/// @nodoc
class __$LoadLocationCopyWithImpl<$Res> extends _$LoadLocationCopyWithImpl<$Res>
    implements _$LoadLocationCopyWith<$Res> {
  __$LoadLocationCopyWithImpl(
      _LoadLocation _value, $Res Function(_LoadLocation) _then)
      : super(_value, (v) => _then(v as _LoadLocation));

  @override
  _LoadLocation get _value => super._value as _LoadLocation;

  @override
  $Res call({
    Object? location = freezed,
    Object? address = freezed,
  }) {
    return _then(_LoadLocation(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoFirePoint,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadLocation extends _LoadLocation {
  const _$_LoadLocation(
      {@GeoFirePointConverter() required this.location, required this.address})
      : super._();

  factory _$_LoadLocation.fromJson(Map<String, dynamic> json) =>
      _$_$_LoadLocationFromJson(json);

  @override
  @GeoFirePointConverter()
  final GeoFirePoint location;
  @override
  final String address;

  @override
  String toString() {
    return 'LoadLocation(location: $location, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadLocation &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$LoadLocationCopyWith<_LoadLocation> get copyWith =>
      __$LoadLocationCopyWithImpl<_LoadLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoadLocationToJson(this);
  }
}

abstract class _LoadLocation extends LoadLocation {
  const factory _LoadLocation(
      {@GeoFirePointConverter() required GeoFirePoint location,
      required String address}) = _$_LoadLocation;
  const _LoadLocation._() : super._();

  factory _LoadLocation.fromJson(Map<String, dynamic> json) =
      _$_LoadLocation.fromJson;

  @override
  @GeoFirePointConverter()
  GeoFirePoint get location => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadLocationCopyWith<_LoadLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
