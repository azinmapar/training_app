import 'package:flutter/material.dart';
import '../consts/consts.dart';

class CustomSecondPageTitle extends StatelessWidget {
  const CustomSecondPageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      kNextWorkoutInfo,
      style: kSecondPageTitleTextStyle,
    );
  }
}
