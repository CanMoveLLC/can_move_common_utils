// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shipper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shipper _$ShipperFromJson(Map<String, dynamic> json) {
  return _Shipper.fromJson(json);
}

/// @nodoc
class _$ShipperTearOff {
  const _$ShipperTearOff();

  _Shipper call(
      {required String uid,
      required String name,
      required String email,
      String? photoUrl,
      UserType userType = UserType.shipper}) {
    return _Shipper(
      uid: uid,
      name: name,
      email: email,
      photoUrl: photoUrl,
      userType: userType,
    );
  }

  Shipper fromJson(Map<String, Object> json) {
    return Shipper.fromJson(json);
  }
}

/// @nodoc
const $Shipper = _$ShipperTearOff();

/// @nodoc
mixin _$Shipper {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperCopyWith<Shipper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperCopyWith<$Res> {
  factory $ShipperCopyWith(Shipper value, $Res Function(Shipper) then) =
      _$ShipperCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String name,
      String email,
      String? photoUrl,
      UserType userType});
}

/// @nodoc
class _$ShipperCopyWithImpl<$Res> implements $ShipperCopyWith<$Res> {
  _$ShipperCopyWithImpl(this._value, this._then);

  final Shipper _value;
  // ignore: unused_field
  final $Res Function(Shipper) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
abstract class _$ShipperCopyWith<$Res> implements $ShipperCopyWith<$Res> {
  factory _$ShipperCopyWith(_Shipper value, $Res Function(_Shipper) then) =
      __$ShipperCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String name,
      String email,
      String? photoUrl,
      UserType userType});
}

/// @nodoc
class __$ShipperCopyWithImpl<$Res> extends _$ShipperCopyWithImpl<$Res>
    implements _$ShipperCopyWith<$Res> {
  __$ShipperCopyWithImpl(_Shipper _value, $Res Function(_Shipper) _then)
      : super(_value, (v) => _then(v as _Shipper));

  @override
  _Shipper get _value => super._value as _Shipper;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? userType = freezed,
  }) {
    return _then(_Shipper(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipper extends _Shipper {
  const _$_Shipper(
      {required this.uid,
      required this.name,
      required this.email,
      this.photoUrl,
      this.userType = UserType.shipper})
      : super._();

  factory _$_Shipper.fromJson(Map<String, dynamic> json) =>
      _$_$_ShipperFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? photoUrl;
  @JsonKey(defaultValue: UserType.shipper)
  @override
  final UserType userType;

  @override
  String toString() {
    return 'Shipper(uid: $uid, name: $name, email: $email, photoUrl: $photoUrl, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Shipper &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(userType);

  @JsonKey(ignore: true)
  @override
  _$ShipperCopyWith<_Shipper> get copyWith =>
      __$ShipperCopyWithImpl<_Shipper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShipperToJson(this);
  }
}

abstract class _Shipper extends Shipper {
  const factory _Shipper(
      {required String uid,
      required String name,
      required String email,
      String? photoUrl,
      UserType userType}) = _$_Shipper;
  const _Shipper._() : super._();

  factory _Shipper.fromJson(Map<String, dynamic> json) = _$_Shipper.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipperCopyWith<_Shipper> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipperMin _$ShipperMinFromJson(Map<String, dynamic> json) {
  return _ShipperMin.fromJson(json);
}

/// @nodoc
class _$ShipperMinTearOff {
  const _$ShipperMinTearOff();

  _ShipperMin call(
      {required String uid,
      required String name,
      UserType userType = UserType.shipper}) {
    return _ShipperMin(
      uid: uid,
      name: name,
      userType: userType,
    );
  }

  ShipperMin fromJson(Map<String, Object> json) {
    return ShipperMin.fromJson(json);
  }
}

/// @nodoc
const $ShipperMin = _$ShipperMinTearOff();

/// @nodoc
mixin _$ShipperMin {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperMinCopyWith<ShipperMin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperMinCopyWith<$Res> {
  factory $ShipperMinCopyWith(
          ShipperMin value, $Res Function(ShipperMin) then) =
      _$ShipperMinCopyWithImpl<$Res>;
  $Res call({String uid, String name, UserType userType});
}

/// @nodoc
class _$ShipperMinCopyWithImpl<$Res> implements $ShipperMinCopyWith<$Res> {
  _$ShipperMinCopyWithImpl(this._value, this._then);

  final ShipperMin _value;
  // ignore: unused_field
  final $Res Function(ShipperMin) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
abstract class _$ShipperMinCopyWith<$Res> implements $ShipperMinCopyWith<$Res> {
  factory _$ShipperMinCopyWith(
          _ShipperMin value, $Res Function(_ShipperMin) then) =
      __$ShipperMinCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String name, UserType userType});
}

/// @nodoc
class __$ShipperMinCopyWithImpl<$Res> extends _$ShipperMinCopyWithImpl<$Res>
    implements _$ShipperMinCopyWith<$Res> {
  __$ShipperMinCopyWithImpl(
      _ShipperMin _value, $Res Function(_ShipperMin) _then)
      : super(_value, (v) => _then(v as _ShipperMin));

  @override
  _ShipperMin get _value => super._value as _ShipperMin;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? userType = freezed,
  }) {
    return _then(_ShipperMin(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipperMin implements _ShipperMin {
  const _$_ShipperMin(
      {required this.uid,
      required this.name,
      this.userType = UserType.shipper});

  factory _$_ShipperMin.fromJson(Map<String, dynamic> json) =>
      _$_$_ShipperMinFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @JsonKey(defaultValue: UserType.shipper)
  @override
  final UserType userType;

  @override
  String toString() {
    return 'ShipperMin(uid: $uid, name: $name, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipperMin &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(userType);

  @JsonKey(ignore: true)
  @override
  _$ShipperMinCopyWith<_ShipperMin> get copyWith =>
      __$ShipperMinCopyWithImpl<_ShipperMin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShipperMinToJson(this);
  }
}

abstract class _ShipperMin implements ShipperMin {
  const factory _ShipperMin(
      {required String uid,
      required String name,
      UserType userType}) = _$_ShipperMin;

  factory _ShipperMin.fromJson(Map<String, dynamic> json) =
      _$_ShipperMin.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipperMinCopyWith<_ShipperMin> get copyWith =>
      throw _privateConstructorUsedError;
}
