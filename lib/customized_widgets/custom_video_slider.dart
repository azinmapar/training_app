import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../classes/video_info_provider.dart';

class CustomVideoSlider extends StatelessWidget {
  const CustomVideoSlider({
    super.key,
  });

  String convertTwo(int value) {
    return value < 10 ? '0$value' : '$value';
  }

  @override
  Widget build(BuildContext context) {
    final duration =
        Provider.of<PlayVideo>(context, listen: false).duration?.inSeconds ?? 0;
    final head =
        Provider.of<PlayVideo>(context, listen: false).position?.inSeconds ?? 0;
    final remained = max(0, duration - head);
    final min = convertTwo(remained ~/ 60.0);
    final sec = convertTwo(remained % 60);

    return Container();
  }
}
