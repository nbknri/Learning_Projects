import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_and_hot/model/new_and_hot_resp/new_and_hot_resp.dart';

abstract class NewAndHotService {
  Future<Either<MainFailures, NewAndHotResp>> discoverMovieData({
    int page = 1,
    String sortBy = 'primary_release_date.asc',
    String withOriginCountry = 'IN',
    String releaseDate = '',
    String primaryReleaseDate = '',
  });
  Future<Either<MainFailures, NewAndHotResp>> discoverTvData({
    int page = 1,
    bool isPopular = true,
    String airDateStart = '',
    String airDateEnd = '',
  });
}
