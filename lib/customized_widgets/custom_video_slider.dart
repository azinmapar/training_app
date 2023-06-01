import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../classes/video_info_provider.dart';

class CustomVideoSlider extends StatefulWidget {
  const CustomVideoSlider({
    super.key,
  });

  @override
  State<CustomVideoSlider> createState() => _CustomVideoSliderState();
}

class _CustomVideoSliderState extends State<CustomVideoSlider> {
  String convertTwo(int value) {
    return value < 10 ? '0$value' : '$value';
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<PlayVideo>(context).setState;
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 2.0,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.redAccent,
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.red[700],
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.redAccent,
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
        value:
            max(0, min((Provider.of<PlayVideo>(context).progress) * 100, 100)),
        min: 0,
        max: 100,
        divisions: 100,
        label:
            Provider.of<PlayVideo>(context).progress.toString().split('.')[0],
        onChanged: (value) {
          setState(() {
            Provider.of<PlayVideo>(context, listen: false)
                .setProgress(value * 0.01);
          });
        },
        onChangeStart: (value) {
          Provider.of<PlayVideo>(context, listen: false).controllerPause();
        },
        onChangeEnd: (value) {
          final duration =
              Provider.of<PlayVideo>(context).controller?.value.duration;
          if (duration != null) {
            var newValue = max(0, min(value, 99)) * 0.01;
            var millis = (duration.inMilliseconds * newValue).toInt();
            Provider.of<PlayVideo>(context)
                .controllerSeekTo(Duration(milliseconds: millis));
            Provider.of<PlayVideo>(context).controllerPlay();
          }
        },
      ),
    );
  }
}
