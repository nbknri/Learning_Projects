import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_end_points.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/downloads_service.dart';
import 'package:netflix_app/domain/downloads/model/downloads_resp/downloads_resp.dart';
import 'package:netflix_app/infrastructure/core/api_constants.dart';

@LazySingleton(as: DownloadsService)
class DownloadsImpl implements DownloadsService {
  @override
  Future<Either<MainFailures, DownloadsResp>> getTrendingMovieImages() async {
    try {
      final response = await Dio(baseOptions).get(ApiEndPoints.trendingMovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DownloadsResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
