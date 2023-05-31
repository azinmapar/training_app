import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayVideo extends ChangeNotifier {
  bool playVideo = false;
  bool setState = false;
  bool isPlaying = false;
  bool isDisposed = false;
  late int onUpdateControllerTime;
  int isPlayingIndex = -1;
  bool fastRewindForwardTapped = false;
  late int videoInfoLength;
  Duration? duration;
  Duration? position;
  var progress = 0.0;

  VideoPlayerController? controller;

  void setDuration(Duration i) {
    duration = i;
    notifyListeners();
  }

  void setPosition(Duration i) {
    position = i;
    notifyListeners();
  }

  void setProgress(var i) {
    progress = i;
    notifyListeners();
  }

  void setVolumeController(bool notMute) {
    controller?.setVolume(notMute ? 0.0 : 1.0);
    notifyListeners();
  }

  void setFastForwardRewindTappedTrue() {
    fastRewindForwardTapped = true;
    notifyListeners();
  }

  void setVideoInfoLength(int i) {
    videoInfoLength = i;
    notifyListeners();
  }

  void setFastForwardRewindTappedFalse() {
    fastRewindForwardTapped = false;
  }

  void setIsPlayingIndex(int i) {
    isPlayingIndex = i;
    notifyListeners();
  }

  void setOnUpdateControllerTime(var time) {
    onUpdateControllerTime = time;
    notifyListeners();
  }

  void changePlayVideoState(bool state) {
    playVideo = state;
    notifyListeners();
  }

  void changeIsDisposed(bool disposed) {
    isDisposed = disposed;
    notifyListeners();
  }

  void changeController(VideoPlayerController cont) {
    controller = cont;
    notifyListeners();
  }

  void setStateForVideoPlayer() {
    setState = !setState;
    notifyListeners();
  }

  void setIsPlaying(bool playing) {
    isPlaying = playing;
    notifyListeners();
  }

  void controllerPause() {
    controller?.pause();
    notifyListeners();
  }

  void controllerPlay() {
    controller?.play();
    notifyListeners();
  }

  void controllerDispose() {
    controller?.dispose();
    notifyListeners();
  }

  void controllerNull() {
    controller = null;
    notifyListeners();
  }
}
