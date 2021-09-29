// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'driver_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverSessionTearOff {
  const _$DriverSessionTearOff();

  _DriverSession call(
      {required String uid, required String name, required GeoPoint location}) {
    return _DriverSession(
      uid: uid,
      name: name,
      location: location,
    );
  }
}

/// @nodoc
const $DriverSession = _$DriverSessionTearOff();

/// @nodoc
mixin _$DriverSession {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  GeoPoint get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverSessionCopyWith<DriverSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverSessionCopyWith<$Res> {
  factory $DriverSessionCopyWith(
          DriverSession value, $Res Function(DriverSession) then) =
      _$DriverSessionCopyWithImpl<$Res>;
  $Res call({String uid, String name, GeoPoint location});
}

/// @nodoc
class _$DriverSessionCopyWithImpl<$Res>
    implements $DriverSessionCopyWith<$Res> {
  _$DriverSessionCopyWithImpl(this._value, this._then);

  final DriverSession _value;
  // ignore: unused_field
  final $Res Function(DriverSession) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? location = freezed,
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
abstract class _$DriverSessionCopyWith<$Res>
    implements $DriverSessionCopyWith<$Res> {
  factory _$DriverSessionCopyWith(
          _DriverSession value, $Res Function(_DriverSession) then) =
      __$DriverSessionCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String name, GeoPoint location});
}

/// @nodoc
class __$DriverSessionCopyWithImpl<$Res>
    extends _$DriverSessionCopyWithImpl<$Res>
    implements _$DriverSessionCopyWith<$Res> {
  __$DriverSessionCopyWithImpl(
      _DriverSession _value, $Res Function(_DriverSession) _then)
      : super(_value, (v) => _then(v as _DriverSession));

  @override
  _DriverSession get _value => super._value as _DriverSession;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_DriverSession(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc

class _$_DriverSession extends _DriverSession {
  const _$_DriverSession(
      {required this.uid, required this.name, required this.location})
      : super._();

  @override
  final String uid;
  @override
  final String name;
  @override
  final GeoPoint location;

  @override
  String toString() {
    return 'DriverSession(uid: $uid, name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriverSession &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$DriverSessionCopyWith<_DriverSession> get copyWith =>
      __$DriverSessionCopyWithImpl<_DriverSession>(this, _$identity);
}

abstract class _DriverSession extends DriverSession {
  const factory _DriverSession(
      {required String uid,
      required String name,
      required GeoPoint location}) = _$_DriverSession;
  const _DriverSession._() : super._();

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  GeoPoint get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverSessionCopyWith<_DriverSession> get copyWith =>
      throw _privateConstructorUsedError;
}
