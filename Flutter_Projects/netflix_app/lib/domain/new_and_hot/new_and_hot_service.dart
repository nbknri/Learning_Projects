import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_and_hot/model/new_and_hot_resp/new_and_hot_resp.dart';

abstract class NewAndHotService {
  Future<Either<MainFailures, NewAndHotResp>> comingSoonData({int page = 1});
  Future<Either<MainFailures, NewAndHotResp>> everyonesData({int page = 1});
}
