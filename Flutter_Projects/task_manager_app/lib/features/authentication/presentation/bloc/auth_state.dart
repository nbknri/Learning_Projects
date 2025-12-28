part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserEntity user) = _Authenticated;
  const factory AuthState.unauthenticated() = _UnAuthenticated;
  const factory AuthState.passwordResetSuccess() = _PasswordResetSuccess;
  const factory AuthState.failure(String message) = _Failure;
}
