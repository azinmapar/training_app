import 'package:flutter/material.dart';
import 'custom_video_controller_button.dart';

class CustomPlayerController extends StatelessWidget {
  const CustomPlayerController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomVideoControllerButton(
          icon: Icons.volume_up_rounded,
          onPressed: () {},
        ),
        CustomVideoControllerButton(
          icon: Icons.fast_rewind_rounded,
          onPressed: () {},
        ),
        CustomVideoControllerButton(
          icon: Icons.play_arrow_rounded,
          onPressed: () {},
        ),
        CustomVideoControllerButton(
          icon: Icons.fast_forward_rounded,
          onPressed: () {},
        ),
        const Text(
          '00:00',
        ),
      ],
    );
  }
}
