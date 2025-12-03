import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/domain/core/api_end_points.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_and_hot/model/new_and_hot_resp/new_and_hot_resp.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';
import 'package:netflix_app/infrastructure/core/api_constants.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotImp implements NewAndHotService {
  @override
  Future<Either<MainFailures, NewAndHotResp>> comingSoonData({
    int page = 1,
  }) async {
    try {
      final DateTime now = DateTime.now();
      final DateTime tomorrow = now.add(Duration(days: 1));
      final String formattedDate = DateFormat('yyyy-MM-dd').format(tomorrow);
      final response = await Dio(baseOptions).get(
        ApiEndPoints.newAndComingSoon,
        queryParameters: {
          'page': page,
          'include_adult': 'false',
          'primary_release_date.gte': formattedDate,
          'sort_by': 'primary_release_date.asc',
          'with_origin_country': 'IN',
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
  Future<Either<MainFailures, NewAndHotResp>> everyonesData({
    int page = 1,
  }) async {
    try {
      final response = await Dio(baseOptions).get(
        ApiEndPoints.newAndEveryonesWatching,
        queryParameters: {
          'page': page,
          'include_adult': 'false',
          'with_origin_country': 'IN',
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
