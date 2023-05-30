import 'package:flutter/material.dart';

class PlayVideo extends ChangeNotifier {
  bool playVideo = false;

  void changePlayVideoState(bool state) {
    playVideo = state;
    notifyListeners();
  }
}
