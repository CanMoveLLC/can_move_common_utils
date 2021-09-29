import 'package:freezed_annotation/freezed_annotation.dart';

import 'driver.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({
    required Driver driver,
  }) = Authenticated;
  const factory AuthState.unauthenticated() = UnAuthenticated;
}
