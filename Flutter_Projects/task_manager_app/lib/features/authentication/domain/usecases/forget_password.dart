import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

class ForgetPassword {
  final AuthRepository repository;

  ForgetPassword(this.repository);

  Future<void> call({required String email}) {
    return repository.forgetPassword(email: email);
  }
}
