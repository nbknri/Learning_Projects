import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

class LogoutUser {
  final AuthRepository authRepository;

  LogoutUser(this.authRepository);

  Future<void> call() async {
    return await authRepository.logout();
  }
}
