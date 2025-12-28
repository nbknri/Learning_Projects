import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/forget_password.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/login_user.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/logout_user.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/signup_user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUser loginUser;
  final SignupUser signupUser;
  final ForgetPassword forgetPassword;
  final LogoutUser logoutUser;

  AuthBloc({
    required this.loginUser,
    required this.signupUser,
    required this.forgetPassword,
    required this.logoutUser,
  }) : super(const AuthState.initial()) {
    on<_Login>(_onLogin);
    on<_Signup>(_onSignup);
    on<_ForgetPassword>(_onForgetPassword);
    on<_Logout>(_onLogout);
  }

  //Login
  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      final user = await loginUser(
        email: event.email,
        password: event.password,
      );
      emit(AuthState.authenticated(user));
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }

  //Signup
  Future<void> _onSignup(_Signup event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      final user = await signupUser(
        name: event.name,
        email: event.email,
        password: event.password,
      );
      emit(AuthState.authenticated(user));
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }

  //Forget password
  Future<void> _onForgetPassword(
    _ForgetPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    try {
      await forgetPassword(email: event.email);

      emit(const AuthState.passwordResetSuccess());
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }

  // Logout
  Future<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      await logoutUser();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }
}
