import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_ai_chat/core/secrets/app_secrets.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.groq.com/openai/v1',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${AppSecrets.apiKey}',
        },
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    );

    return dio;
  }
}
