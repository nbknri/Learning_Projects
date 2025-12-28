import 'package:injectable/injectable.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUser {
  final AuthRepository authRepository;

  LogoutUser(this.authRepository);

  Future<void> call() async {
    return await authRepository.logout();
  }
}
