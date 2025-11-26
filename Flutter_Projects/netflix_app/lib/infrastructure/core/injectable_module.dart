import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: kBaseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Accept': 'application/json',
        'Authorization': apiToken,
        'Host': 'api.themoviedb.org',
      },
    ),
  );
}
