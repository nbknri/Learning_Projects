part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(UserEntity user) = _Success;
  const factory AuthState.passwordResetSuccess() = _PasswordResetSuccess;
  const factory AuthState.failure(String message) = _Failure;
}
