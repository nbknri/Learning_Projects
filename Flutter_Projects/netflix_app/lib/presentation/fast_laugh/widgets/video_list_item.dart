import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/fast_laugh/widgets/fast_laugh_video_player.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';
import 'package:netflix_app/presentation/widgets/sound_button_widget.dart';
import 'package:share_plus/share_plus.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    super.key,
    required this.index,
    required this.avatarImgUrl,
    required this.movieTitle,
  });

  final int index;
  final String avatarImgUrl;
  final String movieTitle;

  @override
  Widget build(BuildContext context) {
    final videoUrl = dummyVideoUrl[index % dummyVideoUrl.length];
    return Stack(
      children: [
        BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            return FastLaughVideoPlayer(
              videoUrl: videoUrl,
              onStateChanged: (bool isPlaying) {},
              isMuted: state.isMuted,
            );
          },
        ),

        // left side
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: BlocBuilder<FastLaughBloc, FastLaughState>(
                  builder: (context, state) {
                    return SoundButtonWidget(
                      volumeIcon: state.isMuted
                          ? Icons.volume_off
                          : Icons.volume_up,
                      buttonAction: () {
                        BlocProvider.of<FastLaughBloc>(context).add(
                          SoundMuted(isMuted: state.isMuted ? false : true),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        //right side
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(avatarImgUrl),
                  ),
                ),
                BlocBuilder<FastLaughBloc, FastLaughState>(
                  builder: (context, state) {
                    final videoIndex = index;
                    final isLiked = state.likedVideoIds.contains(videoIndex);
                    return IconWithTextBtn(
                      icon: Icons.emoji_emotions,
                      iconColor: isLiked ? kYellowColor : kWhiteColor,
                      title: 'LOL',
                      buttonAction: () =>
                          BlocProvider.of<FastLaughBloc>(context).add(
                            isLiked
                                ? UnLikeVideo(id: videoIndex)
                                : LikeVideo(id: videoIndex),
                          ),
                    );
                  },
                ),
                BlocBuilder<FastLaughBloc, FastLaughState>(
                  builder: (context, state) {
                    final videoIndex = index;
                    final isAvailableInMyList = state.myListVideoIds.contains(
                      videoIndex,
                    );
                    return IconWithTextBtn(
                      icon: isAvailableInMyList
                          ? Icons.check_outlined
                          : Icons.add,
                      title: 'My List',
                      buttonAction: () =>
                          BlocProvider.of<FastLaughBloc>(context).add(
                            isAvailableInMyList
                                ? RemoveToMyList(id: videoIndex)
                                : AddedToMyList(id: videoIndex),
                          ),
                    );
                  },
                ),
                IconWithTextBtn(
                  icon: Icons.share,
                  title: 'Share',
                  buttonAction: () =>
                      SharePlus.instance.share(ShareParams(text: movieTitle)),
                ),
                IconWithTextBtn(
                  icon: Icons.play_arrow,
                  title: 'Play',
                  buttonAction: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
