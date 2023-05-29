import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';

class CustomTags extends StatelessWidget {
  final IconData icon;
  final String name;

  const CustomTags({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.kSecondPageContainerGradient1stColor,
            AppColor.kSecondPageContainerGradient2ndColor,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: k8CircularBorderRadius,
      ),
      child: Padding(
        padding: EdgeInsets.all(k5Height),
        child: Row(
          children: [
            //timer icon
            Icon(
              icon,
              color: AppColor.kSecondPageIconColor,
              size: k20IconSize,
            ),
            SizedBox(
              width: k4Width,
            ),
            //time
            Text(
              name,
              style: kTimerInContainerTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
