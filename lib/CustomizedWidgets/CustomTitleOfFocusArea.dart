import 'package:flutter/material.dart';
import '../consts.dart';

class CustomTitleOfFocusArea extends StatelessWidget {
  const CustomTitleOfFocusArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: k20Width),
      child: Row(
        children: [
          Text(
            kAreaOfFocusTitleText,
            style: kAreaOfFocusTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
