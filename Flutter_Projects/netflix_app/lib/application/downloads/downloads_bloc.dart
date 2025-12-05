import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/downloads_service.dart';
import 'package:netflix_app/domain/downloads/model/downloads_resp/downloads_resp.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsService _downloadsService;

  DownloadsBloc(this._downloadsService) : super(DownloadsState.initial()) {
    on<GetDownloadsImages>((event, emit) async {
      emit(
        const DownloadsState(
          downloadsResultList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await _downloadsService.getTrendingMovieImages();
      final stateResult = result.fold(
        (MainFailures f) {
          return const DownloadsState(
            downloadsResultList: [],
            isLoading: false,
            isError: true,
          );
        },
        (DownloadsResp r) {
          return DownloadsState(
            downloadsResultList: r.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(stateResult);
    });
  }
}
