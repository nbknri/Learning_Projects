import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
    //Initial load (Page 1)
    on<Initialize>((event, emit) async {
      currentPage = 1;
      emit(state.copyWith(isLoading: true, newAndHotResultList: []));
      final result = await _newAndHotService.newAndHotComingSoonData(page: 1);
      final stateResult = result.fold(
        (failure) => state.copyWith(isLoading: false, isError: true),
        (success) {
          totalPages = success.totalPages ?? 1;
          return state.copyWith(
            isLoading: false,
            isError: false,
            newAndHotResultList: success.results,
          );
        },
      );
      emit(stateResult);
    });

    on<LoadNextPage>((event, emit) async {
      if (isFetching || currentPage >= totalPages) return;
      isFetching = true;

      final result = await _newAndHotService.newAndHotComingSoonData(
        page: currentPage + 1,
      );

      result.fold((failed) => isFetching = false, (success) {
        final newList = List<NewAndHotResultData>.from(
          state.newAndHotResultList,
        )..addAll(success.results);

        currentPage++;
        isFetching = false;

        emit(state.copyWith(newAndHotResultList: newList));
      });
    });
  }
}
