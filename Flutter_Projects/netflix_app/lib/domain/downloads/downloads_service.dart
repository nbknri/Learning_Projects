import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/model/downloads_resp/downloads_resp.dart';

abstract class DownloadsService {
  Future<Either<MainFailures, DownloadsResp>> getTrendingMovieImages();
}
