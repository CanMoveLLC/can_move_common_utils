// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
class _$DriverTearOff {
  const _$DriverTearOff();

  _Driver call(
      {required String uid,
      String? payID,
      bool payEnabled = false,
      required String name,
      required String email,
      required String phone,
      String? photoUrl,
      UserType userType = UserType.driver,
      @RatingConverter() required Rating rating,
      int totalLoads = 0,
      @JsonKey(ignore: true) User? user,
      @NullGeoPointConverter() GeoPoint? location,
      required VehicleSize vehicleSize}) {
    return _Driver(
      uid: uid,
      payID: payID,
      payEnabled: payEnabled,
      name: name,
      email: email,
      phone: phone,
      photoUrl: photoUrl,
      userType: userType,
      rating: rating,
      totalLoads: totalLoads,
      user: user,
      location: location,
      vehicleSize: vehicleSize,
    );
  }

  Driver fromJson(Map<String, Object> json) {
    return Driver.fromJson(json);
  }
}

/// @nodoc
const $Driver = _$DriverTearOff();

/// @nodoc
mixin _$Driver {
  String get uid => throw _privateConstructorUsedError;
  String? get payID => throw _privateConstructorUsedError;
  bool get payEnabled => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  @RatingConverter()
  Rating get rating => throw _privateConstructorUsedError;
  int get totalLoads => throw _privateConstructorUsedError;
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
      _$DriverCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String? payID,
      bool payEnabled,
      String name,
      String email,
      String phone,
      String? photoUrl,
      UserType userType,
      @RatingConverter() Rating rating,
      int totalLoads,
      @JsonKey(ignore: true) User? user,
      @NullGeoPointConverter() GeoPoint? location,
      VehicleSize vehicleSize});

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? payID = freezed,
    Object? payEnabled = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? userType = freezed,
    Object? rating = freezed,
    Object? totalLoads = freezed,
    Object? user = freezed,
    Object? location = freezed,
    Object? vehicleSize = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: payID == freezed
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      payEnabled: payEnabled == freezed
          ? _value.payEnabled
          : payEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      totalLoads: totalLoads == freezed
          ? _value.totalLoads
          : totalLoads // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      vehicleSize: vehicleSize == freezed
          ? _value.vehicleSize
          : vehicleSize // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
    ));
  }

  @override
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc
abstract class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) then) =
      __$DriverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String? payID,
      bool payEnabled,
      String name,
      String email,
      String phone,
      String? photoUrl,
      UserType userType,
      @RatingConverter() Rating rating,
      int totalLoads,
      @JsonKey(ignore: true) User? user,
      @NullGeoPointConverter() GeoPoint? location,
      VehicleSize vehicleSize});

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$DriverCopyWithImpl<$Res> extends _$DriverCopyWithImpl<$Res>
    implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(_Driver _value, $Res Function(_Driver) _then)
      : super(_value, (v) => _then(v as _Driver));

  @override
  _Driver get _value => super._value as _Driver;

  @override
  $Res call({
    Object? uid = freezed,
    Object? payID = freezed,
    Object? payEnabled = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? userType = freezed,
    Object? rating = freezed,
    Object? totalLoads = freezed,
    Object? user = freezed,
    Object? location = freezed,
    Object? vehicleSize = freezed,
  }) {
    return _then(_Driver(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: payID == freezed
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      payEnabled: payEnabled == freezed
          ? _value.payEnabled
          : payEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      totalLoads: totalLoads == freezed
          ? _value.totalLoads
          : totalLoads // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      vehicleSize: vehicleSize == freezed
          ? _value.vehicleSize
          : vehicleSize // ignore: cast_nullable_to_non_nullable
              as VehicleSize,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver extends _Driver {
  const _$_Driver(
      {required this.uid,
      this.payID,
      this.payEnabled = false,
      required this.name,
      required this.email,
      required this.phone,
      this.photoUrl,
      this.userType = UserType.driver,
      @RatingConverter() required this.rating,
      this.totalLoads = 0,
      @JsonKey(ignore: true) this.user,
      @NullGeoPointConverter() this.location,
      required this.vehicleSize})
      : super._();

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$$_DriverFromJson(json);

  @override
  final String uid;
  @override
  final String? payID;
  @JsonKey(defaultValue: false)
  @override
  final bool payEnabled;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String? photoUrl;
  @JsonKey(defaultValue: UserType.driver)
  @override
  final UserType userType;
  @override
  @RatingConverter()
  final Rating rating;
  @JsonKey(defaultValue: 0)
  @override
  final int totalLoads;
  @override
  @JsonKey(ignore: true)
  final User? user;
  @override // for storing in hive/sharedPrefs, make sure this is null first.
  @NullGeoPointConverter()
  final GeoPoint? location;
  @override
  final VehicleSize vehicleSize;

  @override
  String toString() {
    return 'Driver(uid: $uid, payID: $payID, payEnabled: $payEnabled, name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, userType: $userType, rating: $rating, totalLoads: $totalLoads, user: $user, location: $location, vehicleSize: $vehicleSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Driver &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.payID, payID) ||
                const DeepCollectionEquality().equals(other.payID, payID)) &&
            (identical(other.payEnabled, payEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.payEnabled, payEnabled)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.totalLoads, totalLoads) ||
                const DeepCollectionEquality()
                    .equals(other.totalLoads, totalLoads)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.vehicleSize, vehicleSize) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleSize, vehicleSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(payID) ^
      const DeepCollectionEquality().hash(payEnabled) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(totalLoads) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(vehicleSize);

  @JsonKey(ignore: true)
  @override
  _$DriverCopyWith<_Driver> get copyWith =>
      __$DriverCopyWithImpl<_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverToJson(this);
  }
}

abstract class _Driver extends Driver {
  const factory _Driver(
      {required String uid,
      String? payID,
      bool payEnabled,
      required String name,
      required String email,
      required String phone,
      String? photoUrl,
      UserType userType,
      @RatingConverter() required Rating rating,
      int totalLoads,
      @JsonKey(ignore: true) User? user,
      @NullGeoPointConverter() GeoPoint? location,
      required VehicleSize vehicleSize}) = _$_Driver;
  const _Driver._() : super._();

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String? get payID => throw _privateConstructorUsedError;
  @override
  bool get payEnabled => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @RatingConverter()
  Rating get rating => throw _privateConstructorUsedError;
  @override
  int get totalLoads => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  User? get user => throw _privateConstructorUsedError;
  @override // for storing in hive/sharedPrefs, make sure this is null first.
  @NullGeoPointConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  @override
  VehicleSize get vehicleSize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverCopyWith<_Driver> get copyWith => throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
class _$RatingTearOff {
  const _$RatingTearOff();

  _Rating call({double rating = 0.0, int total = 0}) {
    return _Rating(
      rating: rating,
      total: total,
    );
  }

  Rating fromJson(Map<String, Object> json) {
    return Rating.fromJson(json);
  }
}

/// @nodoc
const $Rating = _$RatingTearOff();

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
      _$RatingCopyWithImpl<$Res>;
  $Res call({double rating, int total});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? rating = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$RatingCopyWith(_Rating value, $Res Function(_Rating) then) =
      __$RatingCopyWithImpl<$Res>;
  @override
  $Res call({double rating, int total});
}

/// @nodoc
class __$RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$RatingCopyWith<$Res> {
  __$RatingCopyWithImpl(_Rating _value, $Res Function(_Rating) _then)
      : super(_value, (v) => _then(v as _Rating));

  @override
  _Rating get _value => super._value as _Rating;

  @override
  $Res call({
    Object? rating = freezed,
    Object? total = freezed,
  }) {
    return _then(_Rating(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating extends _Rating {
  const _$_Rating({this.rating = 0.0, this.total = 0}) : super._();

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @JsonKey(defaultValue: 0.0)
  @override
  final double rating;
  @JsonKey(defaultValue: 0)
  @override
  final int total;

  @override
  String toString() {
    return 'Rating(rating: $rating, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rating &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$RatingCopyWith<_Rating> get copyWith =>
      __$RatingCopyWithImpl<_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(this);
  }
}

abstract class _Rating extends Rating {
  const factory _Rating({double rating, int total}) = _$_Rating;
  const _Rating._() : super._();

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RatingCopyWith<_Rating> get copyWith => throw _privateConstructorUsedError;
}

DriverMin _$DriverMinFromJson(Map<String, dynamic> json) {
  return _DriverMin.fromJson(json);
}

/// @nodoc
class _$DriverMinTearOff {
  const _$DriverMinTearOff();

  _DriverMin call(
      {required String uid,
      String? payID,
      required String name,
      @NullGeoPointConverter() GeoPoint? location,
      UserType userType = UserType.driver}) {
    return _DriverMin(
      uid: uid,
      payID: payID,
      name: name,
      location: location,
      userType: userType,
    );
  }

  DriverMin fromJson(Map<String, Object> json) {
    return DriverMin.fromJson(json);
  }
}

/// @nodoc
const $DriverMin = _$DriverMinTearOff();

/// @nodoc
mixin _$DriverMin {
  String get uid => throw _privateConstructorUsedError;
  String? get payID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
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
      _$DriverMinCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String? payID,
      String name,
      @NullGeoPointConverter() GeoPoint? location,
      UserType userType});
}

/// @nodoc
class _$DriverMinCopyWithImpl<$Res> implements $DriverMinCopyWith<$Res> {
  _$DriverMinCopyWithImpl(this._value, this._then);

  final DriverMin _value;
  // ignore: unused_field
  final $Res Function(DriverMin) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? payID = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: payID == freezed
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
abstract class _$DriverMinCopyWith<$Res> implements $DriverMinCopyWith<$Res> {
  factory _$DriverMinCopyWith(
          _DriverMin value, $Res Function(_DriverMin) then) =
      __$DriverMinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String? payID,
      String name,
      @NullGeoPointConverter() GeoPoint? location,
      UserType userType});
}

/// @nodoc
class __$DriverMinCopyWithImpl<$Res> extends _$DriverMinCopyWithImpl<$Res>
    implements _$DriverMinCopyWith<$Res> {
  __$DriverMinCopyWithImpl(_DriverMin _value, $Res Function(_DriverMin) _then)
      : super(_value, (v) => _then(v as _DriverMin));

  @override
  _DriverMin get _value => super._value as _DriverMin;

  @override
  $Res call({
    Object? uid = freezed,
    Object? payID = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? userType = freezed,
  }) {
    return _then(_DriverMin(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      payID: payID == freezed
          ? _value.payID
          : payID // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverMin implements _DriverMin {
  const _$_DriverMin(
      {required this.uid,
      this.payID,
      required this.name,
      @NullGeoPointConverter() this.location,
      this.userType = UserType.driver});

  factory _$_DriverMin.fromJson(Map<String, dynamic> json) =>
      _$$_DriverMinFromJson(json);

  @override
  final String uid;
  @override
  final String? payID;
  @override
  final String name;
  @override
  @NullGeoPointConverter()
  final GeoPoint? location;
  @JsonKey(defaultValue: UserType.driver)
  @override
  final UserType userType;

  @override
  String toString() {
    return 'DriverMin(uid: $uid, payID: $payID, name: $name, location: $location, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriverMin &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.payID, payID) ||
                const DeepCollectionEquality().equals(other.payID, payID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(payID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(userType);

  @JsonKey(ignore: true)
  @override
  _$DriverMinCopyWith<_DriverMin> get copyWith =>
      __$DriverMinCopyWithImpl<_DriverMin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverMinToJson(this);
  }
}

abstract class _DriverMin implements DriverMin {
  const factory _DriverMin(
      {required String uid,
      String? payID,
      required String name,
      @NullGeoPointConverter() GeoPoint? location,
      UserType userType}) = _$_DriverMin;

  factory _DriverMin.fromJson(Map<String, dynamic> json) =
      _$_DriverMin.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String? get payID => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @NullGeoPointConverter()
  GeoPoint? get location => throw _privateConstructorUsedError;
  @override
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverMinCopyWith<_DriverMin> get copyWith =>
      throw _privateConstructorUsedError;
}
