// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Move _$MoveFromJson(Map<String, dynamic> json) {
  return _Move.fromJson(json);
}

/// @nodoc
class _$MoveTearOff {
  const _$MoveTearOff();

  _Move call(
      {required String uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() required Timestamp pickUpDate,
      @MoveLocationConverter() required MoveLocation pickUp,
      @ListMoveLocationConverter() required List<MoveLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() required ShipperMin shipper,
      required VehicleSize size,
      required String detail,
      required double price,
      List<String> images = const [],
      String? payID,
      bool isPaid = false,
      bool userHasBid = true,
      bool driverHasBid = false,
      MoveStatus status = MoveStatus.PENDING,
      @ServerTimeStampConverter() FieldValue? createdAt}) {
    return _Move(
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
      images: images,
      payID: payID,
      isPaid: isPaid,
      userHasBid: userHasBid,
      driverHasBid: driverHasBid,
      status: status,
      createdAt: createdAt,
    );
  }

  Move fromJson(Map<String, Object> json) {
    return Move.fromJson(json);
  }
}

/// @nodoc
const $Move = _$MoveTearOff();

/// @nodoc
mixin _$Move {
  String get uid => throw _privateConstructorUsedError;
  @NullTimeStampConverter()
  Timestamp? get startDate => throw _privateConstructorUsedError;
  @NullTimeStampConverter()
  Timestamp? get endDate =>
      throw _privateConstructorUsedError; // will be set on firebase func
  @TimeStampConverter()
  Timestamp get pickUpDate => throw _privateConstructorUsedError;
  @MoveLocationConverter()
  MoveLocation get pickUp => throw _privateConstructorUsedError;
  @ListMoveLocationConverter()
  List<MoveLocation> get dropOffs => throw _privateConstructorUsedError;
  @NullDriverMinConverter()
  DriverMin? get driver => throw _privateConstructorUsedError;
  @UserMinConverter()
  ShipperMin get shipper => throw _privateConstructorUsedError;
  VehicleSize get size => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  double get price =>
      throw _privateConstructorUsedError; // required double distance,
  List<String> get images => throw _privateConstructorUsedError;
  String? get payID => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  bool get userHasBid => throw _privateConstructorUsedError;
  bool get driverHasBid => throw _privateConstructorUsedError;
  MoveStatus get status => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() Timestamp pickUpDate,
      @MoveLocationConverter() MoveLocation pickUp,
      @ListMoveLocationConverter() List<MoveLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() ShipperMin shipper,
      VehicleSize size,
      String detail,
      double price,
      List<String> images,
      String? payID,
      bool isPaid,
      bool userHasBid,
      bool driverHasBid,
      MoveStatus status,
      @ServerTimeStampConverter() FieldValue? createdAt});

  $MoveLocationCopyWith<$Res> get pickUp;
  $DriverMinCopyWith<$Res>? get driver;
  $ShipperMinCopyWith<$Res> get shipper;
}

/// @nodoc
class _$MoveCopyWithImpl<$Res> implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

  final Move _value;
  // ignore: unused_field
  final $Res Function(Move) _then;

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
    Object? images = freezed,
    Object? payID = freezed,
    Object? isPaid = freezed,
    Object? userHasBid = freezed,
    Object? driverHasBid = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
              as MoveLocation,
      dropOffs: dropOffs == freezed
          ? _value.dropOffs
          : dropOffs // ignore: cast_nullable_to_non_nullable
              as List<MoveLocation>,
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
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      payID: payID == freezed
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: isPaid == freezed
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasBid: userHasBid == freezed
          ? _value.userHasBid
          : userHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      driverHasBid: driverHasBid == freezed
          ? _value.driverHasBid
          : driverHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MoveStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }

  @override
  $MoveLocationCopyWith<$Res> get pickUp {
    return $MoveLocationCopyWith<$Res>(_value.pickUp, (value) {
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
abstract class _$MoveCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$MoveCopyWith(_Move value, $Res Function(_Move) then) =
      __$MoveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() Timestamp pickUpDate,
      @MoveLocationConverter() MoveLocation pickUp,
      @ListMoveLocationConverter() List<MoveLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() ShipperMin shipper,
      VehicleSize size,
      String detail,
      double price,
      List<String> images,
      String? payID,
      bool isPaid,
      bool userHasBid,
      bool driverHasBid,
      MoveStatus status,
      @ServerTimeStampConverter() FieldValue? createdAt});

  @override
  $MoveLocationCopyWith<$Res> get pickUp;
  @override
  $DriverMinCopyWith<$Res>? get driver;
  @override
  $ShipperMinCopyWith<$Res> get shipper;
}

/// @nodoc
class __$MoveCopyWithImpl<$Res> extends _$MoveCopyWithImpl<$Res>
    implements _$MoveCopyWith<$Res> {
  __$MoveCopyWithImpl(_Move _value, $Res Function(_Move) _then)
      : super(_value, (v) => _then(v as _Move));

  @override
  _Move get _value => super._value as _Move;

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
    Object? images = freezed,
    Object? payID = freezed,
    Object? isPaid = freezed,
    Object? userHasBid = freezed,
    Object? driverHasBid = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Move(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
              as MoveLocation,
      dropOffs: dropOffs == freezed
          ? _value.dropOffs
          : dropOffs // ignore: cast_nullable_to_non_nullable
              as List<MoveLocation>,
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
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      payID: payID == freezed
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: isPaid == freezed
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasBid: userHasBid == freezed
          ? _value.userHasBid
          : userHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      driverHasBid: driverHasBid == freezed
          ? _value.driverHasBid
          : driverHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MoveStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Move extends _Move {
  const _$_Move(
      {required this.uid,
      @NullTimeStampConverter() this.startDate,
      @NullTimeStampConverter() this.endDate,
      @TimeStampConverter() required this.pickUpDate,
      @MoveLocationConverter() required this.pickUp,
      @ListMoveLocationConverter() required this.dropOffs,
      @NullDriverMinConverter() this.driver,
      @UserMinConverter() required this.shipper,
      required this.size,
      required this.detail,
      required this.price,
      this.images = const [],
      this.payID,
      this.isPaid = false,
      this.userHasBid = true,
      this.driverHasBid = false,
      this.status = MoveStatus.PENDING,
      @ServerTimeStampConverter() this.createdAt})
      : super._();

  factory _$_Move.fromJson(Map<String, dynamic> json) => _$$_MoveFromJson(json);

  @override
  final String uid;
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
  @MoveLocationConverter()
  final MoveLocation pickUp;
  @override
  @ListMoveLocationConverter()
  final List<MoveLocation> dropOffs;
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
  @JsonKey(defaultValue: const [])
  @override // required double distance,
  final List<String> images;
  @override
  final String? payID;
  @JsonKey(defaultValue: false)
  @override
  final bool isPaid;
  @JsonKey(defaultValue: true)
  @override
  final bool userHasBid;
  @JsonKey(defaultValue: false)
  @override
  final bool driverHasBid;
  @JsonKey(defaultValue: MoveStatus.PENDING)
  @override
  final MoveStatus status;
  @override
  @ServerTimeStampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'Move(uid: $uid, startDate: $startDate, endDate: $endDate, pickUpDate: $pickUpDate, pickUp: $pickUp, dropOffs: $dropOffs, driver: $driver, shipper: $shipper, size: $size, detail: $detail, price: $price, images: $images, payID: $payID, isPaid: $isPaid, userHasBid: $userHasBid, driverHasBid: $driverHasBid, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Move &&
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
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.payID, payID) ||
                const DeepCollectionEquality().equals(other.payID, payID)) &&
            (identical(other.isPaid, isPaid) ||
                const DeepCollectionEquality().equals(other.isPaid, isPaid)) &&
            (identical(other.userHasBid, userHasBid) ||
                const DeepCollectionEquality()
                    .equals(other.userHasBid, userHasBid)) &&
            (identical(other.driverHasBid, driverHasBid) ||
                const DeepCollectionEquality()
                    .equals(other.driverHasBid, driverHasBid)) &&
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
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(payID) ^
      const DeepCollectionEquality().hash(isPaid) ^
      const DeepCollectionEquality().hash(userHasBid) ^
      const DeepCollectionEquality().hash(driverHasBid) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$MoveCopyWith<_Move> get copyWith =>
      __$MoveCopyWithImpl<_Move>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveToJson(this);
  }
}

abstract class _Move extends Move {
  const factory _Move(
      {required String uid,
      @NullTimeStampConverter() Timestamp? startDate,
      @NullTimeStampConverter() Timestamp? endDate,
      @TimeStampConverter() required Timestamp pickUpDate,
      @MoveLocationConverter() required MoveLocation pickUp,
      @ListMoveLocationConverter() required List<MoveLocation> dropOffs,
      @NullDriverMinConverter() DriverMin? driver,
      @UserMinConverter() required ShipperMin shipper,
      required VehicleSize size,
      required String detail,
      required double price,
      List<String> images,
      String? payID,
      bool isPaid,
      bool userHasBid,
      bool driverHasBid,
      MoveStatus status,
      @ServerTimeStampConverter() FieldValue? createdAt}) = _$_Move;
  const _Move._() : super._();

  factory _Move.fromJson(Map<String, dynamic> json) = _$_Move.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
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
  @MoveLocationConverter()
  MoveLocation get pickUp => throw _privateConstructorUsedError;
  @override
  @ListMoveLocationConverter()
  List<MoveLocation> get dropOffs => throw _privateConstructorUsedError;
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
  @override // required double distance,
  List<String> get images => throw _privateConstructorUsedError;
  @override
  String? get payID => throw _privateConstructorUsedError;
  @override
  bool get isPaid => throw _privateConstructorUsedError;
  @override
  bool get userHasBid => throw _privateConstructorUsedError;
  @override
  bool get driverHasBid => throw _privateConstructorUsedError;
  @override
  MoveStatus get status => throw _privateConstructorUsedError;
  @override
  @ServerTimeStampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoveCopyWith<_Move> get copyWith => throw _privateConstructorUsedError;
}

MoveLocation _$MoveLocationFromJson(Map<String, dynamic> json) {
  return _MoveLocation.fromJson(json);
}

/// @nodoc
class _$MoveLocationTearOff {
  const _$MoveLocationTearOff();

  _MoveLocation call(
      {@GeoFirePointConverter() required GeoFirePoint location,
      required String address}) {
    return _MoveLocation(
      location: location,
      address: address,
    );
  }

  MoveLocation fromJson(Map<String, Object> json) {
    return MoveLocation.fromJson(json);
  }
}

/// @nodoc
const $MoveLocation = _$MoveLocationTearOff();

/// @nodoc
mixin _$MoveLocation {
  @GeoFirePointConverter()
  GeoFirePoint get location => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveLocationCopyWith<MoveLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveLocationCopyWith<$Res> {
  factory $MoveLocationCopyWith(
          MoveLocation value, $Res Function(MoveLocation) then) =
      _$MoveLocationCopyWithImpl<$Res>;
  $Res call({@GeoFirePointConverter() GeoFirePoint location, String address});
}

/// @nodoc
class _$MoveLocationCopyWithImpl<$Res> implements $MoveLocationCopyWith<$Res> {
  _$MoveLocationCopyWithImpl(this._value, this._then);

  final MoveLocation _value;
  // ignore: unused_field
  final $Res Function(MoveLocation) _then;

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
abstract class _$MoveLocationCopyWith<$Res>
    implements $MoveLocationCopyWith<$Res> {
  factory _$MoveLocationCopyWith(
          _MoveLocation value, $Res Function(_MoveLocation) then) =
      __$MoveLocationCopyWithImpl<$Res>;
  @override
  $Res call({@GeoFirePointConverter() GeoFirePoint location, String address});
}

/// @nodoc
class __$MoveLocationCopyWithImpl<$Res> extends _$MoveLocationCopyWithImpl<$Res>
    implements _$MoveLocationCopyWith<$Res> {
  __$MoveLocationCopyWithImpl(
      _MoveLocation _value, $Res Function(_MoveLocation) _then)
      : super(_value, (v) => _then(v as _MoveLocation));

  @override
  _MoveLocation get _value => super._value as _MoveLocation;

  @override
  $Res call({
    Object? location = freezed,
    Object? address = freezed,
  }) {
    return _then(_MoveLocation(
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
class _$_MoveLocation extends _MoveLocation {
  const _$_MoveLocation(
      {@GeoFirePointConverter() required this.location, required this.address})
      : super._();

  factory _$_MoveLocation.fromJson(Map<String, dynamic> json) =>
      _$$_MoveLocationFromJson(json);

  @override
  @GeoFirePointConverter()
  final GeoFirePoint location;
  @override
  final String address;

  @override
  String toString() {
    return 'MoveLocation(location: $location, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoveLocation &&
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
  _$MoveLocationCopyWith<_MoveLocation> get copyWith =>
      __$MoveLocationCopyWithImpl<_MoveLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveLocationToJson(this);
  }
}

abstract class _MoveLocation extends MoveLocation {
  const factory _MoveLocation(
      {@GeoFirePointConverter() required GeoFirePoint location,
      required String address}) = _$_MoveLocation;
  const _MoveLocation._() : super._();

  factory _MoveLocation.fromJson(Map<String, dynamic> json) =
      _$_MoveLocation.fromJson;

  @override
  @GeoFirePointConverter()
  GeoFirePoint get location => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoveLocationCopyWith<_MoveLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
