// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$DriverSessionCopyWithImpl<$Res, DriverSession>;
  @useResult
  $Res call({String uid, String name, GeoPoint location});
}

/// @nodoc
class _$DriverSessionCopyWithImpl<$Res, $Val extends DriverSession>
    implements $DriverSessionCopyWith<$Res> {
  _$DriverSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? location = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverSessionImplCopyWith<$Res>
    implements $DriverSessionCopyWith<$Res> {
  factory _$$DriverSessionImplCopyWith(
          _$DriverSessionImpl value, $Res Function(_$DriverSessionImpl) then) =
      __$$DriverSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, GeoPoint location});
}

/// @nodoc
class __$$DriverSessionImplCopyWithImpl<$Res>
    extends _$DriverSessionCopyWithImpl<$Res, _$DriverSessionImpl>
    implements _$$DriverSessionImplCopyWith<$Res> {
  __$$DriverSessionImplCopyWithImpl(
      _$DriverSessionImpl _value, $Res Function(_$DriverSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$DriverSessionImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc

class _$DriverSessionImpl extends _DriverSession {
  const _$DriverSessionImpl(
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
        (other.runtimeType == runtimeType &&
            other is _$DriverSessionImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverSessionImplCopyWith<_$DriverSessionImpl> get copyWith =>
      __$$DriverSessionImplCopyWithImpl<_$DriverSessionImpl>(this, _$identity);
}

abstract class _DriverSession extends DriverSession {
  const factory _DriverSession(
      {required final String uid,
      required final String name,
      required final GeoPoint location}) = _$DriverSessionImpl;
  const _DriverSession._() : super._();

  @override
  String get uid;
  @override
  String get name;
  @override
  GeoPoint get location;
  @override
  @JsonKey(ignore: true)
  _$$DriverSessionImplCopyWith<_$DriverSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
