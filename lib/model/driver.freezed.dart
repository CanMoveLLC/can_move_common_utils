// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  String get uid => throw _privateConstructorUsedError;
  String? get payID => throw _privateConstructorUsedError;
  bool get payEnabled => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  List<String> get vehicleDocs => throw _privateConstructorUsedError;
  List<String> get vehicleImages => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  @RatingConverter()
  Rating get rating => throw _privateConstructorUsedError;
  int get totalMoves => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  User? get user =>
      throw _privateConstructorUsedError; // for storing in hive/sharedPrefs, make sure this is null first.
  @NullGeoPointConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  VehicleSize get vehicleSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {String uid,
      String? payID,
      bool payEnabled,
      bool online,
      bool verified,
      String firstName,
      String lastName,
      String email,
      String phone,
      String photoUrl,
      List<String> vehicleDocs,
      List<String> vehicleImages,
      UserType userType,
      @RatingConverter() Rating rating,
      int totalMoves,
      @JsonKey(ignore: true) User? user,
      @NullGeoPointConverter() GeoPoint? location,
      VehicleSize vehicleSize});

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? payID = freezed,
    Object? payEnabled = null,
    Object? online = null,
    Object? verified = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? photoUrl = null,
    Object? vehicleDocs = null,
    Object? vehicleImages = null,
    Object? userType = null,
    Object? rating = null,
    Object? totalMoves = null,
    Object? user = freezed,
    Object? location = freezed,
    Object? vehicleSize = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: freezed == payID
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      payEnabled: null == payEnabled
          ? _value.payEnabled
          : payEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleDocs: null == vehicleDocs
          ? _value.vehicleDocs
          : vehicleDocs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vehicleImages: null == vehicleImages
          ? _value.vehicleImages
          : vehicleImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      totalMoves: null == totalMoves
          ? _value.totalMoves
          : totalMoves // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      vehicleSize: null == vehicleSize
          ? _value.vehicleSize
          : vehicleSize // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverImplCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$DriverImplCopyWith(
          _$DriverImpl value, $Res Function(_$DriverImpl) then) =
      __$$DriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String? payID,
      bool payEnabled,
      bool online,
      bool verified,
      String firstName,
      String lastName,
      String email,
      String phone,
      String photoUrl,
      List<String> vehicleDocs,
      List<String> vehicleImages,
      UserType userType,
      @RatingConverter() Rating rating,
      int totalMoves,
      @JsonKey(ignore: true) User? user,
      @NullGeoPointConverter() GeoPoint? location,
      VehicleSize vehicleSize});

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$DriverImplCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$DriverImpl>
    implements _$$DriverImplCopyWith<$Res> {
  __$$DriverImplCopyWithImpl(
      _$DriverImpl _value, $Res Function(_$DriverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? payID = freezed,
    Object? payEnabled = null,
    Object? online = null,
    Object? verified = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? photoUrl = null,
    Object? vehicleDocs = null,
    Object? vehicleImages = null,
    Object? userType = null,
    Object? rating = null,
    Object? totalMoves = null,
    Object? user = freezed,
    Object? location = freezed,
    Object? vehicleSize = null,
  }) {
    return _then(_$DriverImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: freezed == payID
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      payEnabled: null == payEnabled
          ? _value.payEnabled
          : payEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleDocs: null == vehicleDocs
          ? _value._vehicleDocs
          : vehicleDocs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vehicleImages: null == vehicleImages
          ? _value._vehicleImages
          : vehicleImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      totalMoves: null == totalMoves
          ? _value.totalMoves
          : totalMoves // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      vehicleSize: null == vehicleSize
          ? _value.vehicleSize
          : vehicleSize // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverImpl extends _Driver {
  const _$DriverImpl(
      {required this.uid,
      this.payID,
      this.payEnabled = false,
      this.online = false,
      this.verified = false,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.photoUrl,
      required final List<String> vehicleDocs,
      required final List<String> vehicleImages,
      this.userType = UserType.driver,
      @RatingConverter() required this.rating,
      this.totalMoves = 0,
      @JsonKey(ignore: true) this.user,
      @NullGeoPointConverter() this.location,
      required this.vehicleSize})
      : _vehicleDocs = vehicleDocs,
        _vehicleImages = vehicleImages,
        super._();

  factory _$DriverImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverImplFromJson(json);

  @override
  final String uid;
  @override
  final String? payID;
  @override
  @JsonKey()
  final bool payEnabled;
  @override
  @JsonKey()
  final bool online;
  @override
  @JsonKey()
  final bool verified;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String photoUrl;
  final List<String> _vehicleDocs;
  @override
  List<String> get vehicleDocs {
    if (_vehicleDocs is EqualUnmodifiableListView) return _vehicleDocs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleDocs);
  }

  final List<String> _vehicleImages;
  @override
  List<String> get vehicleImages {
    if (_vehicleImages is EqualUnmodifiableListView) return _vehicleImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleImages);
  }

  @override
  @JsonKey()
  final UserType userType;
  @override
  @RatingConverter()
  final Rating rating;
  @override
  @JsonKey()
  final int totalMoves;
  @override
  @JsonKey(ignore: true)
  final User? user;
// for storing in hive/sharedPrefs, make sure this is null first.
  @override
  @NullGeoPointConverter()
  final GeoPoint? location;
  @override
  final VehicleSize vehicleSize;

  @override
  String toString() {
    return 'Driver(uid: $uid, payID: $payID, payEnabled: $payEnabled, online: $online, verified: $verified, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, photoUrl: $photoUrl, vehicleDocs: $vehicleDocs, vehicleImages: $vehicleImages, userType: $userType, rating: $rating, totalMoves: $totalMoves, user: $user, location: $location, vehicleSize: $vehicleSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.payID, payID) || other.payID == payID) &&
            (identical(other.payEnabled, payEnabled) ||
                other.payEnabled == payEnabled) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._vehicleDocs, _vehicleDocs) &&
            const DeepCollectionEquality()
                .equals(other._vehicleImages, _vehicleImages) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalMoves, totalMoves) ||
                other.totalMoves == totalMoves) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.vehicleSize, vehicleSize) ||
                other.vehicleSize == vehicleSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      payID,
      payEnabled,
      online,
      verified,
      firstName,
      lastName,
      email,
      phone,
      photoUrl,
      const DeepCollectionEquality().hash(_vehicleDocs),
      const DeepCollectionEquality().hash(_vehicleImages),
      userType,
      rating,
      totalMoves,
      user,
      location,
      vehicleSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      __$$DriverImplCopyWithImpl<_$DriverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverImplToJson(
      this,
    );
  }
}

abstract class _Driver extends Driver {
  const factory _Driver(
      {required final String uid,
      final String? payID,
      final bool payEnabled,
      final bool online,
      final bool verified,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String phone,
      required final String photoUrl,
      required final List<String> vehicleDocs,
      required final List<String> vehicleImages,
      final UserType userType,
      @RatingConverter() required final Rating rating,
      final int totalMoves,
      @JsonKey(ignore: true) final User? user,
      @NullGeoPointConverter() final GeoPoint? location,
      required final VehicleSize vehicleSize}) = _$DriverImpl;
  const _Driver._() : super._();

  factory _Driver.fromJson(Map<String, dynamic> json) = _$DriverImpl.fromJson;

  @override
  String get uid;
  @override
  String? get payID;
  @override
  bool get payEnabled;
  @override
  bool get online;
  @override
  bool get verified;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get photoUrl;
  @override
  List<String> get vehicleDocs;
  @override
  List<String> get vehicleImages;
  @override
  UserType get userType;
  @override
  @RatingConverter()
  Rating get rating;
  @override
  int get totalMoves;
  @override
  @JsonKey(ignore: true)
  User? get user;
  @override // for storing in hive/sharedPrefs, make sure this is null first.
  @NullGeoPointConverter()
  GeoPoint? get location;
  @override
  VehicleSize get vehicleSize;
  @override
  @JsonKey(ignore: true)
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double get rating => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({double rating, int total});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double rating, int total});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? total = null,
  }) {
    return _then(_$RatingImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl extends _Rating {
  const _$RatingImpl({this.rating = 0.0, this.total = 0}) : super._();

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'Rating(rating: $rating, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rating, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating extends Rating {
  const factory _Rating({final double rating, final int total}) = _$RatingImpl;
  const _Rating._() : super._();

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  double get rating;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverMin _$DriverMinFromJson(Map<String, dynamic> json) {
  return _DriverMin.fromJson(json);
}

/// @nodoc
mixin _$DriverMin {
  String get uid => throw _privateConstructorUsedError;
  String? get payID => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @NullGeoPointConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverMinCopyWith<DriverMin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverMinCopyWith<$Res> {
  factory $DriverMinCopyWith(DriverMin value, $Res Function(DriverMin) then) =
      _$DriverMinCopyWithImpl<$Res, DriverMin>;
  @useResult
  $Res call(
      {String uid,
      String? payID,
      String firstName,
      String lastName,
      @NullGeoPointConverter() GeoPoint? location,
      UserType userType});
}

/// @nodoc
class _$DriverMinCopyWithImpl<$Res, $Val extends DriverMin>
    implements $DriverMinCopyWith<$Res> {
  _$DriverMinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? payID = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? location = freezed,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: freezed == payID
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverMinImplCopyWith<$Res>
    implements $DriverMinCopyWith<$Res> {
  factory _$$DriverMinImplCopyWith(
          _$DriverMinImpl value, $Res Function(_$DriverMinImpl) then) =
      __$$DriverMinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String? payID,
      String firstName,
      String lastName,
      @NullGeoPointConverter() GeoPoint? location,
      UserType userType});
}

/// @nodoc
class __$$DriverMinImplCopyWithImpl<$Res>
    extends _$DriverMinCopyWithImpl<$Res, _$DriverMinImpl>
    implements _$$DriverMinImplCopyWith<$Res> {
  __$$DriverMinImplCopyWithImpl(
      _$DriverMinImpl _value, $Res Function(_$DriverMinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? payID = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? location = freezed,
    Object? userType = null,
  }) {
    return _then(_$DriverMinImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: freezed == payID
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverMinImpl implements _DriverMin {
  const _$DriverMinImpl(
      {required this.uid,
      this.payID,
      required this.firstName,
      required this.lastName,
      @NullGeoPointConverter() this.location,
      this.userType = UserType.driver});

  factory _$DriverMinImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverMinImplFromJson(json);

  @override
  final String uid;
  @override
  final String? payID;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  @NullGeoPointConverter()
  final GeoPoint? location;
  @override
  @JsonKey()
  final UserType userType;

  @override
  String toString() {
    return 'DriverMin(uid: $uid, payID: $payID, firstName: $firstName, lastName: $lastName, location: $location, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverMinImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.payID, payID) || other.payID == payID) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, payID, firstName, lastName, location, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverMinImplCopyWith<_$DriverMinImpl> get copyWith =>
      __$$DriverMinImplCopyWithImpl<_$DriverMinImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverMinImplToJson(
      this,
    );
  }
}

abstract class _DriverMin implements DriverMin {
  const factory _DriverMin(
      {required final String uid,
      final String? payID,
      required final String firstName,
      required final String lastName,
      @NullGeoPointConverter() final GeoPoint? location,
      final UserType userType}) = _$DriverMinImpl;

  factory _DriverMin.fromJson(Map<String, dynamic> json) =
      _$DriverMinImpl.fromJson;

  @override
  String get uid;
  @override
  String? get payID;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @NullGeoPointConverter()
  GeoPoint? get location;
  @override
  UserType get userType;
  @override
  @JsonKey(ignore: true)
  _$$DriverMinImplCopyWith<_$DriverMinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
