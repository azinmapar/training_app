import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'app_colors.dart';

//phone I'm testing on:
//height: 707.4285714285714
//width: 411.42857142857144

//titles
const String kTrainingTitle = 'Training';
const String kFontFamily = 'Rubik';
const String kYourProgramTitle = 'Your Program';
const String kDetailsText = 'Details';
const String kNextWorkoutTitle = 'Next workout';
const String kNextWorkoutInfo = 'Legs Toning\nand Glutes Workout';
const String k60MinText = '60 min';
const String kHomePageDetailTitleText = 'You are doing great';
const String kHomePagePlanText1 = 'Keep it up\n';
const String kHomePagePlanText2 = 'Stick to your plan';

//styles
final TextStyle kAppBarTitleStyle = TextStyle(
  color: AppColor.kHomePageTitle,
  fontFamily: kFontFamily,
  fontWeight: FontWeight.w900,
  fontSize: k30FontSize,
);
final TextStyle kYourProgramTitleStyle = TextStyle(
  color: AppColor.kHomePageSubtitle,
  fontFamily: kFontFamily,
  fontSize: k20FontSize,
  fontWeight: FontWeight.w900,
);
final TextStyle kDetailsTextStyle = TextStyle(
  color: AppColor.kHomePageDetail,
  fontFamily: kFontFamily,
  fontSize: k20FontSize,
  fontWeight: FontWeight.w700,
);
final TextStyle kNextWorkoutTitleTextStyle = TextStyle(
  color: AppColor.kHomePageContainerTextSmall,
  fontFamily: kFontFamily,
  fontSize: k16FontSize,
  fontWeight: FontWeight.bold,
);
final TextStyle kNextWorkoutInfoTextStyle = TextStyle(
  color: AppColor.kHomePageContainerTextBig,
  fontFamily: kFontFamily,
  fontSize: k25FontSize,
  fontWeight: FontWeight.bold,
);
final TextStyle kTimerInContainerTextStyle = TextStyle(
  color: AppColor.kHomePageContainerTextSmall,
  fontSize: k15FontSize,
);
final TextStyle kHomePageDetailTitleTextStyle = TextStyle(
  color: AppColor.kHomePageDetail,
  fontSize: k18FontSize,
  fontWeight: FontWeight.bold,
);
final TextStyle kHomePagePlanTextStyle = TextStyle(
  color: AppColor.kHomePagePlanColor,
  fontSize: k16FontSize,
);

//doubles
const double kZeroElevationAppBar = 0.0;

//Radius
const Radius k10CircularRadius = Radius.circular(10.0);
const Radius k80CircularRadius = Radius.circular(80.0);
final BorderRadius k20CircularBorderRadius = BorderRadius.circular(20.0);

//responsive font and icon size, height, width
final double kScreenHeight = 100.h;
final double kScreenWidth = 100.w;
final double k30FontSize =
    SizerUtil.deviceType == DeviceType.mobile ? 30.0 : 40.0;
final double k20FontSize =
    SizerUtil.deviceType == DeviceType.mobile ? 20.0 : 30.0;
final double k16FontSize =
    SizerUtil.deviceType == DeviceType.mobile ? 16.0 : 26.0;
final double k15FontSize =
    SizerUtil.deviceType == DeviceType.mobile ? 15.0 : 25.0;
final double k18FontSize =
    SizerUtil.deviceType == DeviceType.mobile ? 18.0 : 28.0;
final double k25FontSize =
    SizerUtil.deviceType == DeviceType.mobile ? 25.0 : 35.0;
final double k35IconSize =
    SizerUtil.deviceType == DeviceType.mobile ? 35.0 : 50.0;
final double k25IconSize =
    SizerUtil.deviceType == DeviceType.mobile ? 25.0 : 40.0;
final double k20IconSize =
    SizerUtil.deviceType == DeviceType.mobile ? 20.0 : 35.0;
final double k60IconSize =
    SizerUtil.deviceType == DeviceType.mobile ? 60.0 : 75.0;
final double k20Height = 0.03 * kScreenHeight;
final double k10Height = 0.015 * kScreenHeight;
final double k30Height = 0.04 * kScreenHeight;
final double k5Height = 0.007 * kScreenHeight;
final double k120Height = 0.17 * kScreenHeight;
final double k220Height = 0.31 * kScreenHeight;
final double k200Height = 0.28 * kScreenHeight;
final double k180Height = 0.25 * kScreenHeight;
final double k20Width = 0.05 * kScreenWidth;
final double k150Width = 0.36 * kScreenWidth;
final double k8Width = 0.02 * kScreenWidth;
final double k10Width = 0.025 * kScreenWidth;
