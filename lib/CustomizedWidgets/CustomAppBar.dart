import 'package:flutter/material.dart';
import '../consts.dart';
import 'custom_appbar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: kZeroElevationAppBar,
      //title
      title: Text(
        kTrainingTitle,
        style: kAppBarTitleStyle,
      ),
      //Icons
      actions: [
        //left arrow
        CustomAppBarIcon(
          icon: Icons.chevron_left_rounded,
          iconSize: k35IconSize,
          onPressed: () {},
        ),
        //calender
        CustomAppBarIcon(
          icon: Icons.calendar_today_outlined,
          iconSize: k25IconSize,
          onPressed: () {},
        ),
        //right arrow
        CustomAppBarIcon(
          icon: Icons.chevron_right_rounded,
          iconSize: k35IconSize,
          onPressed: () {},
        ),
      ],
    );
  }
}
