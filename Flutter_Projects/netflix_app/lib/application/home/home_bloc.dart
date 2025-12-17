import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/domain/downloads/downloads_service.dart';
import 'package:netflix_app/domain/downloads/model/downloads_resp/downloads_resp.dart';
import 'package:netflix_app/domain/new_and_hot/model/new_and_hot_resp/new_and_hot_resp.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';
import 'package:uuid/uuid.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NewAndHotService _homeServices;
  final DownloadsService _homeBigImageService;

  HomeBloc(this._homeServices, this._homeBigImageService)
    : super(HomeState.initial()) {
    final DateTime now = DateTime.now();
    final String formattedDateToday = DateFormat('yyyy-MM-dd').format(now);

    on<GetHomeScreenData>((event, emit) async {
      var uuid = Uuid();

      // Initial screen loading
      emit(state.copyWith(isLoading: true, isError: false));

      // Big Image
      final bigImageResult = await _homeBigImageService
          .getTrendingMovieImages();
      final bigImageState = bigImageResult.fold(
        (failure) =>
            state.copyWith(stateId: uuid.v4(), isError: true, isLoading: false),
        (success) => state.copyWith(
          stateId: uuid.v4(),
          isError: false,
          isLoading: false,
          bigImageList: success.results,
        ),
      );

      emit(bigImageState);

      // Past Year Movie
      final pastYearMovieResult = await _homeServices.discoverMovieData(
        releaseDate: formattedDateToday,
        withOriginCountry: '',
        sortBy: '',
      );
      final pastYearMovieState = pastYearMovieResult.fold(
        (failure) =>
            state.copyWith(stateId: uuid.v4(), isError: true, isLoading: false),
        (success) => state.copyWith(
          stateId: uuid.v4(),
          isError: false,
          isLoading: false,
          pastYearMovieList: success.results,
        ),
      );

      emit(pastYearMovieState);

      // Trending Movie
      final trendingMovieResult = await _homeServices.discoverMovieData(
        sortBy: 'popularity.desc',
      );
      final trendingMovieState = trendingMovieResult.fold(
        (failure) =>
            state.copyWith(stateId: uuid.v4(), isError: true, isLoading: false),
        (success) => state.copyWith(
          stateId: uuid.v4(),
          isError: false,
          isLoading: false,
          trendingMovieList: success.results,
        ),
      );

      emit(trendingMovieState);

      // Tens Drama Movie
      final tensDramaMovieResult = await _homeServices.discoverMovieData(
        sortBy: 'vote_count.desc',
      );
      final tensDramaMovieState = tensDramaMovieResult.fold(
        (failure) =>
            state.copyWith(stateId: uuid.v4(), isError: true, isLoading: false),
        (success) => state.copyWith(
          stateId: uuid.v4(),
          isError: false,
          isLoading: false,
          tensDramaMovieList: success.results,
        ),
      );

      emit(tensDramaMovieState);

      // South Indian Movie
      final southIndianMovieResult = await _homeServices.discoverMovieData(
        withOriginCountry: 'IN',
        sortBy: 'popularity.desc',
        primaryReleaseDate: formattedDateToday,
      );
      final southIndianMovieState = southIndianMovieResult.fold(
        (failure) =>
            state.copyWith(stateId: uuid.v4(), isError: true, isLoading: false),
        (success) => state.copyWith(
          stateId: uuid.v4(),
          isError: false,
          isLoading: false,
          southIndianMovieList: success.results,
        ),
      );

      emit(southIndianMovieState);

      // TopTen TV
      final topTenTvResult = await _homeServices.discoverTvData(
        isPopular: false,
      );
      final topTenTvState = topTenTvResult.fold(
        (failure) =>
            state.copyWith(stateId: uuid.v4(), isError: true, isLoading: false),
        (success) => state.copyWith(
          stateId: uuid.v4(),
          isError: false,
          isLoading: false,
          topTenTvList: success.results,
        ),
      );

      emit(topTenTvState);
    });
  }
}
