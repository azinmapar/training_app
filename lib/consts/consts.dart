import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import './app_colors.dart';

//phone I'm testing on:
//height: 707.4285714285714
//width: 411.42857142857144

//api urls
const String kInfoUrl = 'https://sportapi.etokco.ir/Info/GetAllInfo';
const String kVideoInfoUrl =
    'https://sportapi.etokco.ir/VideoInfo/GetAllVideoInfo';

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
const String kAreaOfFocusTitleText = 'Area of Focus';
const String kCircuitsText = 'Circuit 1: Legs Toning';
const String kSetsText = '3 sets';
const String kDurationText = '30 seconds';
const String kRestText = '15s Rest';
const String kPreparingVideoText = 'Preparing...';
const String kVideoTextSnackBar = 'Video';
const String kVideoMessageSnackBar = 'No more videos to play';

//doubles
const double kZeroElevationAppBar = 0.0;
const double kDottedLineDashRadius = 2.0;

//Radius
const Radius k10CircularRadius = Radius.circular(10.0);
const Radius k80CircularRadius = Radius.circular(80.0);
final BorderRadius k20CircularBorderRadius = BorderRadius.circular(20.0);
final BorderRadius k8CircularBorderRadius = BorderRadius.circular(8.0);

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
final double k30IconSize =
    SizerUtil.deviceType == DeviceType.mobile ? 30.0 : 45.0;
final double k36IconSize =
    SizerUtil.deviceType == DeviceType.mobile ? 36.0 : 51.0;
final double k20Height = 0.03 * kScreenHeight;
final double k10Height = 0.015 * kScreenHeight;
final double k30Height = 0.04 * kScreenHeight;
final double k5Height = 0.007 * kScreenHeight;
final double k120Height = 0.17 * kScreenHeight;
final double k220Height = 0.31 * kScreenHeight;
final double k200Height = 0.28 * kScreenHeight;
final double k180Height = 0.25 * kScreenHeight;
final double k18Height = 0.025 * kScreenHeight;
final double k160Height = 0.22 * kScreenHeight;
final double k80Height = 0.11 * kScreenHeight;
final double k20Width = 0.05 * kScreenWidth;
final double k30Width = 0.072 * kScreenWidth;
final double k15Width = k30Width / 2;
final double k150Width = 0.36 * kScreenWidth;
final double k8Width = 0.02 * kScreenWidth;
final double k4Width = 0.01 * kScreenWidth;
final double k10Width = 0.025 * kScreenWidth;
final double k80Width = 0.194 * kScreenWidth;
final double kAreaContainerWidth =
    (kScreenWidth - (4 * k15Width) - (2 * k8Width)) / 2;
final double kAreaContainerHeight = kAreaContainerWidth;

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
  fontFamily: kFontFamily,
);
final TextStyle kHomePageDetailTitleTextStyle = TextStyle(
  color: AppColor.kHomePageDetail,
  fontSize: k18FontSize,
  fontWeight: FontWeight.bold,
  fontFamily: kFontFamily,
);
final TextStyle kHomePagePlanTextStyle = TextStyle(
  color: AppColor.kHomePagePlanColor,
  fontSize: k16FontSize,
  fontFamily: kFontFamily,
);
final TextStyle kAreaOfFocusTitleTextStyle = TextStyle(
  fontSize: k25FontSize,
  fontWeight: FontWeight.w500,
  color: AppColor.kHomePageTitle,
  fontFamily: kFontFamily,
);
final TextStyle kSecondPageTitleTextStyle = TextStyle(
  color: AppColor.kSecondPageTitleColor,
  fontFamily: kFontFamily,
  fontSize: k25FontSize,
  fontWeight: FontWeight.bold,
);
final TextStyle kCircuitsTextStyles = TextStyle(
  color: AppColor.kCircuitsColor,
  fontFamily: kFontFamily,
  fontSize: k20FontSize,
  fontWeight: FontWeight.w900,
);
final TextStyle kSetsTextStyle = TextStyle(
  color: AppColor.kSetsColor,
  fontFamily: kFontFamily,
  fontSize: k15FontSize,
  fontWeight: FontWeight.w700,
);
final TextStyle kSecondPageExerciseTitleTextStyle = TextStyle(
  fontSize: k18FontSize,
  fontWeight: FontWeight.bold,
  fontFamily: kFontFamily,
);
final TextStyle kSecondPageExerciseDurationTextStyle = TextStyle(
  fontFamily: kFontFamily,
  color: Colors.grey[500],
);
final TextStyle kRestTextStyle = TextStyle(
  fontFamily: kFontFamily,
  color: AppColor.kRestColor,
);
final TextStyle kPreparingVideoTextStyle = TextStyle(
  fontFamily: kFontFamily,
  fontSize: k20FontSize,
  color: Colors.white60,
);

//Decorations
final BoxDecoration kVideoInfoDetailContainerDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      AppColor.kGradientFirst.withOpacity(0.9),
      AppColor.kGradientSecond,
    ],
    begin: const FractionalOffset(0.0, 0.4),
    end: Alignment.topRight,
  ),
);
final BoxDecoration kVideoContainerDecoration = BoxDecoration(
  color: AppColor.kGradientSecond,
);
