import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<UserEntity> call({required String email, required String password}) {
    return repository.login(email: email, password: password);
  }
}
