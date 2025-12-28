// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/authentication/data/datasources/firebase_auth_service.dart'
    as _i680;
import '../../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i317;
import '../../features/authentication/domain/repositories/auth_repository.dart'
    as _i742;
import '../../features/authentication/domain/usecases/forget_password.dart'
    as _i845;
import '../../features/authentication/domain/usecases/login_user.dart' as _i200;
import '../../features/authentication/domain/usecases/logout_user.dart'
    as _i210;
import '../../features/authentication/domain/usecases/signup_user.dart'
    as _i545;
import '../../features/authentication/presentation/bloc/auth_bloc.dart'
    as _i180;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i680.FirebaseAuthService>(
      () => _i680.FirebaseAuthService(gh<_i59.FirebaseAuth>()),
    );
    gh.lazySingleton<_i742.AuthRepository>(
      () => _i317.AuthRepositoryImpl(gh<_i680.FirebaseAuthService>()),
    );
    gh.lazySingleton<_i845.ForgetPassword>(
      () => _i845.ForgetPassword(gh<_i742.AuthRepository>()),
    );
    gh.lazySingleton<_i200.LoginUser>(
      () => _i200.LoginUser(gh<_i742.AuthRepository>()),
    );
    gh.lazySingleton<_i545.SignupUser>(
      () => _i545.SignupUser(gh<_i742.AuthRepository>()),
    );
    gh.lazySingleton<_i210.LogoutUser>(
      () => _i210.LogoutUser(gh<_i742.AuthRepository>()),
    );
    gh.factory<_i180.AuthBloc>(
      () => _i180.AuthBloc(
        loginUser: gh<_i200.LoginUser>(),
        signupUser: gh<_i545.SignupUser>(),
        forgetPassword: gh<_i845.ForgetPassword>(),
        logoutUser: gh<_i210.LogoutUser>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
