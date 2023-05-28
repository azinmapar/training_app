import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../consts.dart';

class CustomContainerFocusArea extends StatelessWidget {
  final String imagePath;
  final String name;

  const CustomContainerFocusArea({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAreaContainerHeight,
      width: kAreaContainerWidth,
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor,
        borderRadius: k20CircularBorderRadius,
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            offset: const Offset(5, 5),
            color: AppColor.kGradientSecond.withOpacity(0.1),
          ),
          BoxShadow(
            blurRadius: 3,
            offset: const Offset(-5, -5),
            color: AppColor.kGradientSecond.withOpacity(0.1),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: k8Width),
          child: Text(
            name,
            style: TextStyle(
              fontSize: k20FontSize,
              color: AppColor.kHomePageDetail,
            ),
          ),
        ),
      ),
    );
  }
}
