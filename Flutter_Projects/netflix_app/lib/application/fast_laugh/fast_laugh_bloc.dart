import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/downloads/downloads_service.dart';
import 'package:netflix_app/domain/downloads/model/downloads_resp/downloads_resp.dart';

part 'fast_laugh_bloc.freezed.dart';
part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(DownloadsService downloadsService)
    : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(
        FastLaughState(
          videoList: [],
          isLoading: true,
          isError: false,
          likedVideoIds: state.likedVideoIds,
          myListVideoIds: state.myListVideoIds,
          isMuted: true,
        ),
      );
      // get trending SearchMovies
      final result = await downloadsService.getDownloadsImages();
      final stateResult = result.fold(
        (l) => FastLaughState(
          videoList: [],
          isLoading: false,
          isError: true,
          likedVideoIds: state.likedVideoIds,
          myListVideoIds: state.myListVideoIds,
          isMuted: true,
        ),
        (resp) => FastLaughState(
          videoList: resp.results,
          isLoading: false,
          isError: false,
          likedVideoIds: state.likedVideoIds,
          myListVideoIds: state.myListVideoIds,
          isMuted: true,
        ),
      );
      emit(stateResult);
      //send to ui
    });

    on<LikeVideo>((event, emit) async {
      final likedList = List<int>.from(state.likedVideoIds);
      likedList.add(event.id);
      emit(state.copyWith(likedVideoIds: likedList));
    });

    on<UnLikeVideo>((event, emit) async {
      final likedList = List<int>.from(state.likedVideoIds);
      likedList.remove(event.id);
      emit(state.copyWith(likedVideoIds: likedList));
    });

    on<SoundMuted>((event, emit) async {
      emit(state.copyWith(isMuted: event.isMuted));
    });

    on<AddedToMyList>((event, emit) async {
      final myList = List<int>.from(state.myListVideoIds);
      myList.add(event.id);
      emit(state.copyWith(myListVideoIds: myList));
    });

    on<RemoveToMyList>((event, emit) async {
      final myList = List<int>.from(state.myListVideoIds);
      myList.remove(event.id);
      emit(state.copyWith(myListVideoIds: myList));
    });
  }
}
