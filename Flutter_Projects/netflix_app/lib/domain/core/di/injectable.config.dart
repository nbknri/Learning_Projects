// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflix_app/application/downloads/downloads_bloc.dart' as _i664;
import 'package:netflix_app/application/fast_laugh/fast_laugh_bloc.dart'
    as _i878;
import 'package:netflix_app/application/home/home_bloc.dart' as _i778;
import 'package:netflix_app/application/new_and_hot/new_and_hot_bloc.dart'
    as _i614;
import 'package:netflix_app/application/search/search_bloc.dart' as _i771;
import 'package:netflix_app/domain/downloads/downloads_service.dart' as _i411;
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart'
    as _i109;
import 'package:netflix_app/domain/search/search_service.dart' as _i75;
import 'package:netflix_app/infrastructure/downloads/downloads_imp.dart'
    as _i471;
import 'package:netflix_app/infrastructure/new_and_hot/new_and_hot_imp.dart'
    as _i764;
import 'package:netflix_app/infrastructure/search/search_imp.dart' as _i326;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i75.SearchService>(() => _i326.SearchImp());
    gh.lazySingleton<_i411.DownloadsService>(() => _i471.DownloadsImpl());
    gh.lazySingleton<_i109.NewAndHotService>(() => _i764.NewAndHotImp());
    gh.factory<_i771.SearchBloc>(
      () => _i771.SearchBloc(gh<_i75.SearchService>()),
    );
    gh.factory<_i878.FastLaughBloc>(
      () => _i878.FastLaughBloc(gh<_i411.DownloadsService>()),
    );
    gh.factory<_i664.DownloadsBloc>(
      () => _i664.DownloadsBloc(gh<_i411.DownloadsService>()),
    );
    gh.factory<_i778.HomeBloc>(
      () => _i778.HomeBloc(
        gh<_i109.NewAndHotService>(),
        gh<_i411.DownloadsService>(),
      ),
    );
    gh.factory<_i614.NewAndHotBloc>(
      () => _i614.NewAndHotBloc(gh<_i109.NewAndHotService>()),
    );
    return this;
  }
}
