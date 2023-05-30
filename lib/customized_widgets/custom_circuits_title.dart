import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';

class CustomCircuitsTitle extends StatelessWidget {
  const CustomCircuitsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //circuit text
        Text(
          kCircuitsText,
          style: kCircuitsTextStyles,
        ),
        //space available between circuits and sets
        Expanded(child: Container()),
        //loop icon
        Icon(
          Icons.loop_rounded,
          size: k30IconSize,
          color: AppColor.kLoopColor,
        ),
        //space
        SizedBox(
          width: k10Width,
        ),
        //set text
        Text(
          kSetsText,
          style: kSetsTextStyle,
        ),
      ],
    );
  }
}
