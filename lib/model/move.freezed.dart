// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Move _$MoveFromJson(Map<String, dynamic> json) {
  return _Move.fromJson(json);
}

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
      _$MoveCopyWithImpl<$Res, Move>;
  @useResult
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
class _$MoveCopyWithImpl<$Res, $Val extends Move>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? pickUpDate = null,
    Object? pickUp = null,
    Object? dropOffs = null,
    Object? driver = freezed,
    Object? shipper = null,
    Object? size = null,
    Object? detail = null,
    Object? price = null,
    Object? images = null,
    Object? payID = freezed,
    Object? isPaid = null,
    Object? userHasBid = null,
    Object? driverHasBid = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      pickUpDate: null == pickUpDate
          ? _value.pickUpDate
          : pickUpDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      pickUp: null == pickUp
          ? _value.pickUp
          : pickUp // ignore: cast_nullable_to_non_nullable
              as MoveLocation,
      dropOffs: null == dropOffs
          ? _value.dropOffs
          : dropOffs // ignore: cast_nullable_to_non_nullable
              as List<MoveLocation>,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverMin?,
      shipper: null == shipper
          ? _value.shipper
          : shipper // ignore: cast_nullable_to_non_nullable
              as ShipperMin,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      payID: freezed == payID
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasBid: null == userHasBid
          ? _value.userHasBid
          : userHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      driverHasBid: null == driverHasBid
          ? _value.driverHasBid
          : driverHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MoveStatus,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoveLocationCopyWith<$Res> get pickUp {
    return $MoveLocationCopyWith<$Res>(_value.pickUp, (value) {
      return _then(_value.copyWith(pickUp: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverMinCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverMinCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipperMinCopyWith<$Res> get shipper {
    return $ShipperMinCopyWith<$Res>(_value.shipper, (value) {
      return _then(_value.copyWith(shipper: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveImplCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$$MoveImplCopyWith(
          _$MoveImpl value, $Res Function(_$MoveImpl) then) =
      __$$MoveImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$MoveImplCopyWithImpl<$Res>
    extends _$MoveCopyWithImpl<$Res, _$MoveImpl>
    implements _$$MoveImplCopyWith<$Res> {
  __$$MoveImplCopyWithImpl(_$MoveImpl _value, $Res Function(_$MoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? pickUpDate = null,
    Object? pickUp = null,
    Object? dropOffs = null,
    Object? driver = freezed,
    Object? shipper = null,
    Object? size = null,
    Object? detail = null,
    Object? price = null,
    Object? images = null,
    Object? payID = freezed,
    Object? isPaid = null,
    Object? userHasBid = null,
    Object? driverHasBid = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$MoveImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      pickUpDate: null == pickUpDate
          ? _value.pickUpDate
          : pickUpDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      pickUp: null == pickUp
          ? _value.pickUp
          : pickUp // ignore: cast_nullable_to_non_nullable
              as MoveLocation,
      dropOffs: null == dropOffs
          ? _value._dropOffs
          : dropOffs // ignore: cast_nullable_to_non_nullable
              as List<MoveLocation>,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverMin?,
      shipper: null == shipper
          ? _value.shipper
          : shipper // ignore: cast_nullable_to_non_nullable
              as ShipperMin,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      payID: freezed == payID
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasBid: null == userHasBid
          ? _value.userHasBid
          : userHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      driverHasBid: null == driverHasBid
          ? _value.driverHasBid
          : driverHasBid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MoveStatus,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveImpl extends _Move {
  const _$MoveImpl(
      {required this.uid,
      @NullTimeStampConverter() this.startDate,
      @NullTimeStampConverter() this.endDate,
      @TimeStampConverter() required this.pickUpDate,
      @MoveLocationConverter() required this.pickUp,
      @ListMoveLocationConverter() required final List<MoveLocation> dropOffs,
      @NullDriverMinConverter() this.driver,
      @UserMinConverter() required this.shipper,
      required this.size,
      required this.detail,
      required this.price,
      final List<String> images = const [],
      this.payID,
      this.isPaid = false,
      this.userHasBid = true,
      this.driverHasBid = false,
      this.status = MoveStatus.PENDING,
      @ServerTimeStampConverter() this.createdAt})
      : _dropOffs = dropOffs,
        _images = images,
        super._();

  factory _$MoveImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveImplFromJson(json);

  @override
  final String uid;
  @override
  @NullTimeStampConverter()
  final Timestamp? startDate;
  @override
  @NullTimeStampConverter()
  final Timestamp? endDate;
// will be set on firebase func
  @override
  @TimeStampConverter()
  final Timestamp pickUpDate;
  @override
  @MoveLocationConverter()
  final MoveLocation pickUp;
  final List<MoveLocation> _dropOffs;
  @override
  @ListMoveLocationConverter()
  List<MoveLocation> get dropOffs {
    if (_dropOffs is EqualUnmodifiableListView) return _dropOffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropOffs);
  }

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
// required double distance,
  final List<String> _images;
// required double distance,
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? payID;
  @override
  @JsonKey()
  final bool isPaid;
  @override
  @JsonKey()
  final bool userHasBid;
  @override
  @JsonKey()
  final bool driverHasBid;
  @override
  @JsonKey()
  final MoveStatus status;
  @override
  @ServerTimeStampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'Move(uid: $uid, startDate: $startDate, endDate: $endDate, pickUpDate: $pickUpDate, pickUp: $pickUp, dropOffs: $dropOffs, driver: $driver, shipper: $shipper, size: $size, detail: $detail, price: $price, images: $images, payID: $payID, isPaid: $isPaid, userHasBid: $userHasBid, driverHasBid: $driverHasBid, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.pickUpDate, pickUpDate) ||
                other.pickUpDate == pickUpDate) &&
            (identical(other.pickUp, pickUp) || other.pickUp == pickUp) &&
            const DeepCollectionEquality().equals(other._dropOffs, _dropOffs) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.shipper, shipper) || other.shipper == shipper) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.payID, payID) || other.payID == payID) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.userHasBid, userHasBid) ||
                other.userHasBid == userHasBid) &&
            (identical(other.driverHasBid, driverHasBid) ||
                other.driverHasBid == driverHasBid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      startDate,
      endDate,
      pickUpDate,
      pickUp,
      const DeepCollectionEquality().hash(_dropOffs),
      driver,
      shipper,
      size,
      detail,
      price,
      const DeepCollectionEquality().hash(_images),
      payID,
      isPaid,
      userHasBid,
      driverHasBid,
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveImplCopyWith<_$MoveImpl> get copyWith =>
      __$$MoveImplCopyWithImpl<_$MoveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveImplToJson(
      this,
    );
  }
}

abstract class _Move extends Move {
  const factory _Move(
      {required final String uid,
      @NullTimeStampConverter() final Timestamp? startDate,
      @NullTimeStampConverter() final Timestamp? endDate,
      @TimeStampConverter() required final Timestamp pickUpDate,
      @MoveLocationConverter() required final MoveLocation pickUp,
      @ListMoveLocationConverter() required final List<MoveLocation> dropOffs,
      @NullDriverMinConverter() final DriverMin? driver,
      @UserMinConverter() required final ShipperMin shipper,
      required final VehicleSize size,
      required final String detail,
      required final double price,
      final List<String> images,
      final String? payID,
      final bool isPaid,
      final bool userHasBid,
      final bool driverHasBid,
      final MoveStatus status,
      @ServerTimeStampConverter() final FieldValue? createdAt}) = _$MoveImpl;
  const _Move._() : super._();

  factory _Move.fromJson(Map<String, dynamic> json) = _$MoveImpl.fromJson;

  @override
  String get uid;
  @override
  @NullTimeStampConverter()
  Timestamp? get startDate;
  @override
  @NullTimeStampConverter()
  Timestamp? get endDate;
  @override // will be set on firebase func
  @TimeStampConverter()
  Timestamp get pickUpDate;
  @override
  @MoveLocationConverter()
  MoveLocation get pickUp;
  @override
  @ListMoveLocationConverter()
  List<MoveLocation> get dropOffs;
  @override
  @NullDriverMinConverter()
  DriverMin? get driver;
  @override
  @UserMinConverter()
  ShipperMin get shipper;
  @override
  VehicleSize get size;
  @override
  String get detail;
  @override
  double get price;
  @override // required double distance,
  List<String> get images;
  @override
  String? get payID;
  @override
  bool get isPaid;
  @override
  bool get userHasBid;
  @override
  bool get driverHasBid;
  @override
  MoveStatus get status;
  @override
  @ServerTimeStampConverter()
  FieldValue? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MoveImplCopyWith<_$MoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoveLocation _$MoveLocationFromJson(Map<String, dynamic> json) {
  return _MoveLocation.fromJson(json);
}

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
      _$MoveLocationCopyWithImpl<$Res, MoveLocation>;
  @useResult
  $Res call({@GeoFirePointConverter() GeoFirePoint location, String address});
}

/// @nodoc
class _$MoveLocationCopyWithImpl<$Res, $Val extends MoveLocation>
    implements $MoveLocationCopyWith<$Res> {
  _$MoveLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoFirePoint,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveLocationImplCopyWith<$Res>
    implements $MoveLocationCopyWith<$Res> {
  factory _$$MoveLocationImplCopyWith(
          _$MoveLocationImpl value, $Res Function(_$MoveLocationImpl) then) =
      __$$MoveLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@GeoFirePointConverter() GeoFirePoint location, String address});
}

/// @nodoc
class __$$MoveLocationImplCopyWithImpl<$Res>
    extends _$MoveLocationCopyWithImpl<$Res, _$MoveLocationImpl>
    implements _$$MoveLocationImplCopyWith<$Res> {
  __$$MoveLocationImplCopyWithImpl(
      _$MoveLocationImpl _value, $Res Function(_$MoveLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? address = null,
  }) {
    return _then(_$MoveLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoFirePoint,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveLocationImpl extends _MoveLocation {
  const _$MoveLocationImpl(
      {@GeoFirePointConverter() required this.location, required this.address})
      : super._();

  factory _$MoveLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveLocationImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveLocationImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveLocationImplCopyWith<_$MoveLocationImpl> get copyWith =>
      __$$MoveLocationImplCopyWithImpl<_$MoveLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveLocationImplToJson(
      this,
    );
  }
}

abstract class _MoveLocation extends MoveLocation {
  const factory _MoveLocation(
      {@GeoFirePointConverter() required final GeoFirePoint location,
      required final String address}) = _$MoveLocationImpl;
  const _MoveLocation._() : super._();

  factory _MoveLocation.fromJson(Map<String, dynamic> json) =
      _$MoveLocationImpl.fromJson;

  @override
  @GeoFirePointConverter()
  GeoFirePoint get location;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$MoveLocationImplCopyWith<_$MoveLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
