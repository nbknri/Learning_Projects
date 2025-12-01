import 'package:netflix_app/core/strings.dart';

class ApiEndPoints {
  static const downloads = '$kBaseUrl/trending/all/day';
  static const searchIdle = '$kBaseUrl/movie/popular';
  static const searchMovies = '$kBaseUrl/search/movie';
  static const newAndComingSoon = '$kBaseUrl/discover/movie';
  static const newAndEveryonesWatching = '$kBaseUrl/discover/tv';
}
