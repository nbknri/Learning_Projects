part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = Initialize;
  const factory FastLaughEvent.likeVideo({required int id}) = LikeVideo;
  const factory FastLaughEvent.unlikeVideo({required int id}) = UnLikeVideo;
  const factory FastLaughEvent.addedToMyList({required int id}) = AddedToMyList;
  const factory FastLaughEvent.removeToMyList({required int id}) =
      RemoveToMyList;
  const factory FastLaughEvent.soundMuted({required bool isMuted}) = SoundMuted;
}
