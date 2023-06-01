import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app/classes/video_info_provider.dart';
import 'package:training_app/consts/consts.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({
    super.key,
  });

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late PlayVideo provideListenFalse;

  @override
  Widget build(BuildContext context) {
    provideListenFalse = Provider.of<PlayVideo>(context, listen: false);
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: playVideo(context),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    provideListenFalse.changeIsDisposed(true);
    provideListenFalse.controllerPause();
    provideListenFalse.controllerDispose();
    provideListenFalse.controllerNull();
    super.dispose();
  }

  Widget playVideo(BuildContext context) {
    Provider.of<PlayVideo>(context).setState;
    final controller = Provider.of<PlayVideo>(context).controller;
    if (controller!.value.isInitialized) {
      return VideoPlayer(controller);
    } else {
      return Center(
        child: Text(
          kPreparingVideoText,
          style: kPreparingVideoTextStyle,
        ),
      );
    }
  }
}
