import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import '../classes/video_info_provider.dart';
import '../consts/consts.dart';
import 'custom_training_list_tile.dart';

class CustomTrainingListView extends StatefulWidget {
  const CustomTrainingListView({
    super.key,
    required this.info,
  });

  final List info;

  @override
  State<CustomTrainingListView> createState() => _CustomTrainingListViewState();
}

class _CustomTrainingListViewState extends State<CustomTrainingListView> {
  late PlayVideo providerListenFalse;

  @override
  Widget build(BuildContext context) {
    providerListenFalse = Provider.of<PlayVideo>(context);

    return ListView.builder(
      padding: EdgeInsets.only(top: k10Height),
      itemCount: widget.info.length,
      itemBuilder: (_, i) {
        int? j;
        if (Provider.of<PlayVideo>(context).fastRewindForwardTapped) {
          debugPrint('triggered');
          //setState(() {
          j = Provider.of<PlayVideo>(context, listen: false).isPlayingIndex;
          onTapVideo(j);
          //});
        }

        return GestureDetector(
          onTap: () {
            Provider.of<PlayVideo>(context, listen: false)
                .changePlayVideoState(true);
            onTapVideo(i);
          },
          child: CustomTrainingListTile(info: widget.info, i: i),
        );
      },
    );
  }

  onControllerUpdate() async {
    if (providerListenFalse.isDisposed) {
      return;
    }

    Provider.of<PlayVideo>(context, listen: false).setOnUpdateControllerTime(0);
    final now = DateTime.now().millisecondsSinceEpoch;
    if (Provider.of<PlayVideo>(context, listen: false).onUpdateControllerTime >
        now) {
      return;
    }
    Provider.of<PlayVideo>(context, listen: false)
        .setOnUpdateControllerTime(now + 500);

    final controller =
        Provider.of<PlayVideo>(context, listen: false).controller;
    if (controller == null) {
      debugPrint('controller is null');
      return;
    }
    if (!controller.value.isInitialized) {
      debugPrint('not initialized');
      return;
    }

    if (Provider.of<PlayVideo>(context, listen: false).duration == null) {
      Provider.of<PlayVideo>(context, listen: false).setDuration(
          Provider.of<PlayVideo>(context, listen: false)
              .controller!
              .value
              .duration);
    }

    var duration = Provider.of<PlayVideo>(context, listen: false).duration;
    if (duration == null) return;

    var position = await Provider.of<PlayVideo>(context, listen: false)
        .controller
        ?.position;
    providerListenFalse.setPosition(position!);

    final playing = controller.value.isPlaying;
    if (playing) {
      if (providerListenFalse.isDisposed) {
        return;
      }
      providerListenFalse.setProgress(position!.inMilliseconds.ceilToDouble() /
          duration.inMilliseconds.ceilToDouble());
    }
    providerListenFalse.setIsPlaying(playing);
  }

  onTapVideo(int index) async {
    Future.delayed(Duration.zero, () {
      Provider.of<PlayVideo>(context, listen: false)
          .setFastForwardRewindTappedFalse();
      final controller =
          VideoPlayerController.network(widget.info[index]['videoUrl']);
      final old = Provider.of<PlayVideo>(context, listen: false).controller;
      Provider.of<PlayVideo>(context, listen: false)
          .changeController(controller);
      if (old != null) {
        old.removeListener(onControllerUpdate);
        old.pause();
      }
      Provider.of<PlayVideo>(context, listen: false).setStateForVideoPlayer();
      controller.initialize().then((_) {
        old?.dispose();
        Provider.of<PlayVideo>(context, listen: false).setIsPlayingIndex(index);
        controller.addListener(onControllerUpdate);
        controller.play();
        Provider.of<PlayVideo>(context, listen: false).setStateForVideoPlayer();
      });
    });
  }
}
