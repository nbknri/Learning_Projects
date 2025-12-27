part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _Login;

  const factory AuthEvent.signup({
    required String name,
    required String email,
    required String password,
  }) = _Signup;

  const factory AuthEvent.forgetPassword({required String email}) =
      _ForgetPassword;
}
