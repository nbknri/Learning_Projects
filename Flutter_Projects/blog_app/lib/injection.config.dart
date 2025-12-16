// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_ce_flutter/hive_flutter.dart' as _i919;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

import 'core/common/cubits/app_user/app_user_cubit.dart' as _i187;
import 'core/di/app_module.dart' as _i808;
import 'core/network/connection_checker.dart' as _i833;
import 'features/auth/data/datasources/auth_remote_data_source.dart' as _i767;
import 'features/auth/data/repository/auth_repository_impl.dart' as _i814;
import 'features/auth/domain/repository/auth_repository.dart' as _i279;
import 'features/auth/domain/usecases/current_user.dart' as _i448;
import 'features/auth/domain/usecases/user_login.dart' as _i490;
import 'features/auth/domain/usecases/user_sign_up.dart' as _i482;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/blog/data/datasources/blog_local_data_source.dart' as _i32;
import 'features/blog/data/datasources/blog_remote_data_source.dart' as _i143;
import 'features/blog/data/repository/blog_repository_imp.dart' as _i392;
import 'features/blog/domain/repositories/blog_repository.dart' as _i1043;
import 'features/blog/domain/usecases/get_all_blogs.dart' as _i61;
import 'features/blog/domain/usecases/upload_blog.dart' as _i75;
import 'features/blog/presentation/bloc/blog_bloc.dart' as _i335;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i919.Box<dynamic>>(
      () => appModule.blogBox,
      preResolve: true,
    );
    gh.factory<_i161.InternetConnection>(() => appModule.internetConnection);
    gh.lazySingleton<_i187.AppUserCubit>(() => _i187.AppUserCubit());
    gh.lazySingleton<_i187.AppUserInitial>(() => _i187.AppUserInitial());
    gh.lazySingleton<_i454.SupabaseClient>(() => appModule.supabaseClient);
    gh.lazySingleton<_i767.AuthRemoteDataSource>(
      () => _i767.AuthRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i143.BlogRemoteDataSource>(
      () => _i143.BlogRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i833.ConnectionChecker>(
      () => _i833.ConnectionCheckerImpl(gh<_i161.InternetConnection>()),
    );
    gh.lazySingleton<_i279.AuthRepository>(
      () => _i814.AuthRepositoryImpl(
        gh<_i767.AuthRemoteDataSource>(),
        gh<_i833.ConnectionChecker>(),
      ),
    );
    gh.lazySingleton<_i32.BlogLocalDataSource>(
      () => _i32.BlogLocalDataSourceImpl(gh<_i919.Box<dynamic>>()),
    );
    gh.lazySingleton<_i1043.BlogRepository>(
      () => _i392.BlogRepositoryImp(
        gh<_i143.BlogRemoteDataSource>(),
        gh<_i32.BlogLocalDataSource>(),
        gh<_i833.ConnectionChecker>(),
      ),
    );
    gh.lazySingleton<_i448.CurrentUser>(
      () => _i448.CurrentUser(gh<_i279.AuthRepository>()),
    );
    gh.lazySingleton<_i490.UserLogin>(
      () => _i490.UserLogin(gh<_i279.AuthRepository>()),
    );
    gh.lazySingleton<_i482.UserSignUp>(
      () => _i482.UserSignUp(gh<_i279.AuthRepository>()),
    );
    gh.lazySingleton<_i61.GetAllBlogs>(
      () => _i61.GetAllBlogs(gh<_i1043.BlogRepository>()),
    );
    gh.lazySingleton<_i75.UploadBlog>(
      () => _i75.UploadBlog(gh<_i1043.BlogRepository>()),
    );
    gh.factory<_i363.AuthBloc>(
      () => _i363.AuthBloc(
        userSignUp: gh<_i482.UserSignUp>(),
        userLogin: gh<_i490.UserLogin>(),
        currentUser: gh<_i448.CurrentUser>(),
        appUserCubit: gh<_i187.AppUserCubit>(),
      ),
    );
    gh.factory<_i335.BlogBloc>(
      () => _i335.BlogBloc(
        uploadBlog: gh<_i75.UploadBlog>(),
        getAllBlogs: gh<_i61.GetAllBlogs>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i808.AppModule {}
