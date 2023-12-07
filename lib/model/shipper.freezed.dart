// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shipper _$ShipperFromJson(Map<String, dynamic> json) {
  return _Shipper.fromJson(json);
}

/// @nodoc
mixin _$Shipper {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperCopyWith<Shipper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperCopyWith<$Res> {
  factory $ShipperCopyWith(Shipper value, $Res Function(Shipper) then) =
      _$ShipperCopyWithImpl<$Res, Shipper>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String email,
      String? photoUrl,
      UserType userType,
      @JsonKey(ignore: true) User? user});
}

/// @nodoc
class _$ShipperCopyWithImpl<$Res, $Val extends Shipper>
    implements $ShipperCopyWith<$Res> {
  _$ShipperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? photoUrl = freezed,
    Object? userType = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipperImplCopyWith<$Res> implements $ShipperCopyWith<$Res> {
  factory _$$ShipperImplCopyWith(
          _$ShipperImpl value, $Res Function(_$ShipperImpl) then) =
      __$$ShipperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String email,
      String? photoUrl,
      UserType userType,
      @JsonKey(ignore: true) User? user});
}

/// @nodoc
class __$$ShipperImplCopyWithImpl<$Res>
    extends _$ShipperCopyWithImpl<$Res, _$ShipperImpl>
    implements _$$ShipperImplCopyWith<$Res> {
  __$$ShipperImplCopyWithImpl(
      _$ShipperImpl _value, $Res Function(_$ShipperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? photoUrl = freezed,
    Object? userType = null,
    Object? user = freezed,
  }) {
    return _then(_$ShipperImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipperImpl extends _Shipper {
  const _$ShipperImpl(
      {required this.uid,
      required this.name,
      required this.email,
      this.photoUrl,
      this.userType = UserType.shipper,
      @JsonKey(ignore: true) this.user})
      : super._();

  factory _$ShipperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipperImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? photoUrl;
  @override
  @JsonKey()
  final UserType userType;
  @override
  @JsonKey(ignore: true)
  final User? user;

  @override
  String toString() {
    return 'Shipper(uid: $uid, name: $name, email: $email, photoUrl: $photoUrl, userType: $userType, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipperImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, name, email, photoUrl, userType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipperImplCopyWith<_$ShipperImpl> get copyWith =>
      __$$ShipperImplCopyWithImpl<_$ShipperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipperImplToJson(
      this,
    );
  }
}

abstract class _Shipper extends Shipper {
  const factory _Shipper(
      {required final String uid,
      required final String name,
      required final String email,
      final String? photoUrl,
      final UserType userType,
      @JsonKey(ignore: true) final User? user}) = _$ShipperImpl;
  const _Shipper._() : super._();

  factory _Shipper.fromJson(Map<String, dynamic> json) = _$ShipperImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get email;
  @override
  String? get photoUrl;
  @override
  UserType get userType;
  @override
  @JsonKey(ignore: true)
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$ShipperImplCopyWith<_$ShipperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipperMin _$ShipperMinFromJson(Map<String, dynamic> json) {
  return _ShipperMin.fromJson(json);
}

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
      _$ShipperMinCopyWithImpl<$Res, ShipperMin>;
  @useResult
  $Res call({String uid, String name, UserType userType});
}

/// @nodoc
class _$ShipperMinCopyWithImpl<$Res, $Val extends ShipperMin>
    implements $ShipperMinCopyWith<$Res> {
  _$ShipperMinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipperMinImplCopyWith<$Res>
    implements $ShipperMinCopyWith<$Res> {
  factory _$$ShipperMinImplCopyWith(
          _$ShipperMinImpl value, $Res Function(_$ShipperMinImpl) then) =
      __$$ShipperMinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, UserType userType});
}

/// @nodoc
class __$$ShipperMinImplCopyWithImpl<$Res>
    extends _$ShipperMinCopyWithImpl<$Res, _$ShipperMinImpl>
    implements _$$ShipperMinImplCopyWith<$Res> {
  __$$ShipperMinImplCopyWithImpl(
      _$ShipperMinImpl _value, $Res Function(_$ShipperMinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? userType = null,
  }) {
    return _then(_$ShipperMinImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipperMinImpl implements _ShipperMin {
  const _$ShipperMinImpl(
      {required this.uid,
      required this.name,
      this.userType = UserType.shipper});

  factory _$ShipperMinImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipperMinImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  @JsonKey()
  final UserType userType;

  @override
  String toString() {
    return 'ShipperMin(uid: $uid, name: $name, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipperMinImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipperMinImplCopyWith<_$ShipperMinImpl> get copyWith =>
      __$$ShipperMinImplCopyWithImpl<_$ShipperMinImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipperMinImplToJson(
      this,
    );
  }
}

abstract class _ShipperMin implements ShipperMin {
  const factory _ShipperMin(
      {required final String uid,
      required final String name,
      final UserType userType}) = _$ShipperMinImpl;

  factory _ShipperMin.fromJson(Map<String, dynamic> json) =
      _$ShipperMinImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  UserType get userType;
  @override
  @JsonKey(ignore: true)
  _$$ShipperMinImplCopyWith<_$ShipperMinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
