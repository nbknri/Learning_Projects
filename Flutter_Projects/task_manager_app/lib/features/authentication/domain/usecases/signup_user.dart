import 'package:injectable/injectable.dart';
import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

@lazySingleton
class SignupUser {
  final AuthRepository repository;

  SignupUser(this.repository);

  Future<UserEntity> call({
    required String name,
    required String email,
    required String password,
  }) {
    return repository.signup(name: name, email: email, password: password);
  }
}
