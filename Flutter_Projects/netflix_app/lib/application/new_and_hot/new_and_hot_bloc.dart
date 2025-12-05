import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/new_and_hot/model/new_and_hot_resp/new_and_hot_resp.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';

part 'new_and_hot_bloc.freezed.dart';
part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  int currentPage = 1;
  int totalPages = 1;
  bool isFetching = false;

  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.initial()) {
    final DateTime now = DateTime.now();
    final DateTime tomorrow = now.add(Duration(days: 1));
    final String formattedDate = DateFormat('yyyy-MM-dd').format(tomorrow);

    //Initial load (Page 1)
    on<ComingSoonInitialize>((event, emit) async {
      currentPage = 1;
      emit(state.copyWith(isLoading: true, comingSoonResultList: []));
      final result = await _newAndHotService.discoverMovieData(
        page: 1,
        primaryReleaseDate: formattedDate,
      );
      final stateResult = result.fold(
        (MainFailures failure) =>
            state.copyWith(isLoading: false, isError: true),
        (NewAndHotResp success) {
          totalPages = success.totalPages ?? 1;
          return state.copyWith(
            isLoading: false,
            isError: false,
            comingSoonResultList: success.results,
          );
        },
      );
      emit(stateResult);
    });

    on<ComingSoonLoadNextPage>((event, emit) async {
      if (isFetching || currentPage >= totalPages) return;
      isFetching = true;

      final result = await _newAndHotService.discoverMovieData(
        page: currentPage + 1,
        primaryReleaseDate: formattedDate,
      );

      result.fold((failed) => isFetching = false, (success) {
        final newList = List<NewAndHotResultData>.from(
          state.comingSoonResultList,
        )..addAll(success.results);

        currentPage++;
        isFetching = false;

        emit(state.copyWith(comingSoonResultList: newList));
      });
    });

    on<EveryonesInitialize>((event, emit) async {
      currentPage = 1;
      emit(state.copyWith(isLoading: true, evryonesResultList: []));
      final result = await _newAndHotService.discoverTvData(page: 1);
      final stateResult = result.fold(
        (failed) => state.copyWith(isLoading: false, isError: true),
        (success) {
          totalPages = success.totalPages ?? 1;
          return state.copyWith(
            evryonesResultList: success.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(stateResult);
    });

    on<EveryonesLoadNextPage>((event, emit) async {
      if (isFetching || currentPage >= totalPages) return;
      isFetching = true;

      final result = await _newAndHotService.discoverTvData(
        page: currentPage + 1,
      );

      result.fold((failed) => isFetching = false, (success) {
        final newList = List<NewAndHotResultData>.from(state.evryonesResultList)
          ..addAll(success.results);

        currentPage++;
        isFetching = false;

        emit(state.copyWith(evryonesResultList: newList));
      });
    });
  }
}
