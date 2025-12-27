import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:task_manager_app/features/authentication/data/datasources/firebase_auth_service.dart';
import 'package:task_manager_app/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/auth_repository.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/forget_password.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/login_user.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/signup_user.dart';
import 'package:task_manager_app/features/authentication/presentation/bloc/auth_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Firebase
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  //Data source
  getIt.registerLazySingleton<FirebaseAuthService>(
    () => FirebaseAuthService(getIt()),
  );

  //repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt()),
  );

  //Usecases
  getIt.registerLazySingleton(() => LoginUser(getIt()));
  getIt.registerLazySingleton(() => SignupUser(getIt()));
  getIt.registerLazySingleton(() => ForgetPassword(getIt()));

  //Bloc
  getIt.registerFactory(
    () => AuthBloc(
      loginUser: getIt(),
      signupUser: getIt(),
      forgetPassword: getIt(),
    ),
  );
}
