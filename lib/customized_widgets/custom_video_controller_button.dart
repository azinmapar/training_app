import 'package:flutter/material.dart';
import 'package:training_app/consts/consts.dart';
import '../consts/app_colors.dart';

class CustomVideoControllerButton extends StatelessWidget {
  const CustomVideoControllerButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: AppColor.kWhiteColor,
        size: k36IconSize,
      ),
    );
  }
}
