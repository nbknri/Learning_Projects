// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_generative_ai/google_generative_ai.dart' as _i656;
import 'package:injectable/injectable.dart' as _i526;

import 'core/module/register_module.dart' as _i690;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i1000;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i382;
import 'features/chat/domain/repositories/chat_repository.dart' as _i453;
import 'features/chat/domain/usecases/send_message.dart' as _i422;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i1026;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i656.GenerativeModel>(
      () => registerModule.generativeModel,
    );
    gh.lazySingleton<_i1000.ChatRemoteDataSource>(
      () => _i1000.ChatRemoteDataSourceImpl(gh<_i656.GenerativeModel>()),
    );
    gh.lazySingleton<_i453.ChatRepository>(
      () => _i382.ChatRepositoryImpl(gh<_i1000.ChatRemoteDataSource>()),
    );
    gh.lazySingleton<_i422.SendMessage>(
      () => _i422.SendMessage(gh<_i453.ChatRepository>()),
    );
    gh.factory<_i1026.ChatBloc>(() => _i1026.ChatBloc(gh<_i422.SendMessage>()));
    return this;
  }
}

class _$RegisterModule extends _i690.RegisterModule {}
