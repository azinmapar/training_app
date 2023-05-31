import 'package:flutter/material.dart';
import 'costume_player_controller.dart';
import 'custom_video_player.dart';
import 'custom_video_slider.dart';

class CustomVideoPlayerContainer extends StatelessWidget {
  const CustomVideoPlayerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomVideoPlayer(),
        CustomVideoSlider(),
        CustomPlayerController(),
      ],
    );
  }
}
