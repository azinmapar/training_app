import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:training_app/consts/app_colors.dart';
import 'package:training_app/consts/consts.dart';
import '../classes/video_info_provider.dart';
import 'custom_video_controller_button.dart';

class CustomPlayerController extends StatefulWidget {
  const CustomPlayerController({
    super.key,
  });

  @override
  State<CustomPlayerController> createState() => _CustomPlayerControllerState();
}

class _CustomPlayerControllerState extends State<CustomPlayerController> {
  String convertTwo(int value) {
    return value < 10 ? '0$value' : '$value';
  }

  late PlayVideo providerListenFalse;

  @override
  Widget build(BuildContext context) {
    final notMute = (Provider.of<PlayVideo>(context, listen: false)
                .controller
                ?.value
                .volume ??
            0) >
        0;

    int duration;
    int head;
    int remained;
    late String min;
    late String sec;
    setState(() {
      duration = Provider.of<PlayVideo>(context).duration?.inSeconds ?? 0;
      head = Provider.of<PlayVideo>(context).position?.inSeconds ?? 0;
      remained = max(0, duration - head);
      min = convertTwo(remained ~/ 60.0);
      sec = convertTwo(remained % 60);
      print(head);
    });

    Provider.of<PlayVideo>(context).setState;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomVideoControllerButton(
          icon: notMute ? Icons.volume_up_rounded : Icons.volume_off_rounded,
          onPressed: () {
            Provider.of<PlayVideo>(context, listen: false)
                .setVolumeController(notMute);
            //Provider.of<PlayVideo>(context, listen: false)
            // .setStateForVideoPlayer();
          },
        ),
        CustomVideoControllerButton(
          icon: Icons.fast_rewind_rounded,
          onPressed: () {
            final index =
                Provider.of<PlayVideo>(context, listen: false).isPlayingIndex -
                    1;
            if (index >= 0) {
              Provider.of<PlayVideo>(context, listen: false)
                  .setFastForwardRewindTappedTrue();
              Provider.of<PlayVideo>(context, listen: false)
                  .setIsPlayingIndex(index);
            } else {
              Get.snackbar(
                kVideoTextSnackBar,
                '',
                snackPosition: SnackPosition.BOTTOM,
                icon: Icon(
                  Icons.face,
                  size: k30IconSize,
                  color: AppColor.kWhiteColor,
                ),
                backgroundColor: AppColor.kGradientSecond,
                colorText: AppColor.kWhiteColor,
                messageText: Text(
                  kVideoMessageSnackBar,
                  style: TextStyle(
                    fontSize: k20FontSize,
                    color: AppColor.kWhiteColor,
                  ),
                ),
              );
            }
          },
        ),
        CustomVideoControllerButton(
          icon: Provider.of<PlayVideo>(context).isPlaying
              ? Icons.pause_rounded
              : Icons.play_arrow_rounded,
          onPressed: () {
            if (Provider.of<PlayVideo>(context, listen: false).isPlaying) {
              Provider.of<PlayVideo>(context, listen: false)
                  .setIsPlaying(false);
              Provider.of<PlayVideo>(context, listen: false).controllerPause();
            } else {
              Provider.of<PlayVideo>(context, listen: false).setIsPlaying(true);
              Provider.of<PlayVideo>(context, listen: false).controllerPlay();
            }
          },
        ),
        CustomVideoControllerButton(
          icon: Icons.fast_forward_rounded,
          onPressed: () {
            final index =
                Provider.of<PlayVideo>(context, listen: false).isPlayingIndex +
                    1;
            if (index <
                Provider.of<PlayVideo>(context, listen: false)
                    .videoInfoLength) {
              Provider.of<PlayVideo>(context, listen: false)
                  .setFastForwardRewindTappedTrue();
              Provider.of<PlayVideo>(context, listen: false)
                  .setIsPlayingIndex(index);
            } else {
              Get.snackbar(
                'Video list',
                '',
                snackPosition: SnackPosition.BOTTOM,
                icon: Icon(
                  Icons.face,
                  size: k30IconSize,
                  color: AppColor.kWhiteColor,
                ),
                backgroundColor: AppColor.kGradientSecond,
                colorText: AppColor.kWhiteColor,
                messageText: Text(
                  'You have finished watching all the videos, congrats!',
                  style: TextStyle(
                    fontSize: k20FontSize,
                    color: AppColor.kWhiteColor,
                  ),
                ),
              );
            }
          },
        ),
        Text(
          '$min:$sec',
          style: TextStyle(
            color: AppColor.kWhiteColor,
          ),
        ),
      ],
    );
  }
}
