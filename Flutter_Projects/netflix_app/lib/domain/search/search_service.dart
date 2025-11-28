import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/search/model/search_resp/search_resp.dart';

abstract class SearchService {
  Future<Either<MainFailures, SearchResp>> getTopSearchImages();
  Future<Either<MainFailures, SearchResp>> searchMovies({
    required String movieQuery,
  });
}