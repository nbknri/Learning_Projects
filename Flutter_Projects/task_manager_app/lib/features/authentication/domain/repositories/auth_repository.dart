import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login({required String email, required String password});

  Future<UserEntity> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<void> forgetPassword({required String email});
  Future<void> logout();
}
