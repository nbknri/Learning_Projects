import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  final bool isMuted;

  const FastLaughVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
    required this.isMuted,
  });

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
        // Set initial volume based on the passed widget parameter
        _videoPlayerController.setVolume(widget.isMuted ? 0.0 : 1.0);
      });
    });
  }

  // Listen for changes from the parent widget
  @override
  void didUpdateWidget(covariant FastLaughVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isMuted != widget.isMuted) {
      if (widget.isMuted) {
        _videoPlayerController.setVolume(0.0);
      } else {
        _videoPlayerController.setVolume(1.0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
