import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';
import 'package:get/get.dart';

class CustomSecondPageAppBar extends StatelessWidget {
  const CustomSecondPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //back arrow
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        color: AppColor.kSecondPageTopIconColor,
        iconSize: k20IconSize,
        onPressed: () {
          Get.back();
        },
      ),
      //info button
      actions: [
        IconButton(
          icon: const Icon(Icons.info_outline_rounded),
          color: AppColor.kSecondPageTopIconColor,
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: kZeroElevationAppBar,
    );
  }
}
