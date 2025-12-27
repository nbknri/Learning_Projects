import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

class ForgetPasswordUser {
  final AuthRepository repository;

  ForgetPasswordUser(this.repository);

  Future<UserEntity> calla({required String email}) {
    return repository.forgerPassword(email: email);
  }
}
