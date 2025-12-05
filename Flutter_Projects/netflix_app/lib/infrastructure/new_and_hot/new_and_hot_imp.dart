import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_end_points.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_and_hot/model/new_and_hot_resp/new_and_hot_resp.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';
import 'package:netflix_app/infrastructure/core/api_constants.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotImp implements NewAndHotService {
  @override
  Future<Either<MainFailures, NewAndHotResp>> discoverMovieData({
    int page = 1,
    String sortBy = 'primary_release_date.asc',
    String withOriginCountry = 'IN',
    String releaseDate = '',
    String primaryReleaseDate = ''
  }) async {
    try {

      final response = await Dio(baseOptions).get(
        ApiEndPoints.discoverMovie,
        queryParameters: {
          'page': page,
          'include_adult': 'false',
          'primary_release_date.gte': primaryReleaseDate,
          'sort_by': sortBy,
          'with_origin_country': withOriginCountry,
          'release_date.gte': releaseDate,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHotResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailures, NewAndHotResp>> discoverTvData({
    int page = 1,
    bool isPopular = true,
    String airDateStart = '',
    String airDateEnd = '',
  }) async {
    try {
      final response = await Dio(baseOptions).get(
        ApiEndPoints.discoverTv,
        queryParameters: {
          'page': page,
          'include_adult': 'false',
          'sort_by': isPopular ? 'popularity.desc' : 'vote_count.desc',
          'with_origin_country': 'IN',
          'air_date.gte': airDateStart,
          'air_date.lte': airDateEnd,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHotResp.fromJson(response.data);
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
