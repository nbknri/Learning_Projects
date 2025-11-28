import 'package:dio/dio.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

const Map<String, dynamic> headers = {
  'User-Agent':
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
  'Accept': 'application/json',
  'Authorization': apiToken,
  'Host': 'api.themoviedb.org',
};

final baseOptions = BaseOptions(
  connectTimeout: const Duration(seconds: 60),
  receiveTimeout: const Duration(seconds: 60),
  headers: headers,
);
