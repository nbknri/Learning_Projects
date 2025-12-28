import 'package:injectable/injectable.dart';
import 'package:task_manager_app/features/authentication/data/datasources/firebase_auth_service.dart';
import 'package:task_manager_app/features/authentication/data/model/user_model.dart';
import 'package:task_manager_app/features/authentication/domain/entities/user_entity.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthService _firebaseAuthService;

  AuthRepositoryImpl(this._firebaseAuthService);

  @override
  Future<UserEntity> login({
    required String email,
    required String password,
  }) async {
    final result = await _firebaseAuthService.login(
      email: email,
      password: password,
    );
    final user = result.user!;

    return UserModel.fromFireBaseUser(user).toEntity();
  }

  @override
  Future<UserEntity> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    final result = await _firebaseAuthService.signup(
      email: email,
      password: password,
      name: name,
    );

    final user = result.user!;
    return UserModel.fromFireBaseUser(user).toEntity();
  }

  @override
  Future<void> forgetPassword({required String email}) async {
    await _firebaseAuthService.forgetPassword(email: email);
  }

  @override
  Future<void> logout() async {
    await _firebaseAuthService.logout();
  }
}
