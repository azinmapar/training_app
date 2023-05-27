import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../consts.dart';

class CustomPlanContainer extends StatelessWidget {
  const CustomPlanContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: k20Width, right: k8Width),
      child: Row(
        children: [
          //your program text
          Text(
            kYourProgramTitle,
            style: kYourProgramTitleStyle,
          ),
          //Takes all the available space
          Expanded(child: Container()),
          //details text
          Text(
            kDetailsText,
            style: kDetailsTextStyle,
          ),
          //arrow icon
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_rounded,
              color: AppColor.kHomePageIcons,
              size: k25IconSize,
            ),
          )
        ],
      ),
    );
  }
}
