import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../consts.dart';

class CustomFirstContainer extends StatelessWidget {
  const CustomFirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: k20Width, right: k20Width, top: k20Height),
      child: Container(
        //dimensions
        height: k220Height,
        width: kScreenWidth,
        decoration: BoxDecoration(
          //gradient color
          gradient: LinearGradient(
            colors: [
              AppColor.kGradientFirst.withOpacity(0.8),
              AppColor.kGradientSecond.withOpacity(0.9),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
          //round corners
          borderRadius: const BorderRadius.only(
            topLeft: k10CircularRadius,
            bottomLeft: k10CircularRadius,
            bottomRight: k10CircularRadius,
            topRight: k80CircularRadius,
          ),
          //shadow
          boxShadow: [
            BoxShadow(
              color: AppColor.kGradientSecond.withOpacity(0.2),
              offset: const Offset(5.0, 10.0),
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(k20Width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //heading title
              Text(
                kNextWorkoutTitle,
                style: kNextWorkoutTitleTextStyle,
              ),
              //text
              Text(
                kNextWorkoutInfo,
                style: kNextWorkoutInfoTextStyle,
              ),
              //the bottom row of icons and texts
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //timer icon
                  Icon(
                    Icons.timer_outlined,
                    color: AppColor.kHomePageContainerTextSmall,
                    size: k20IconSize,
                  ),
                  SizedBox(
                    width: k10Width,
                  ),
                  //timer text
                  Text(
                    k60MinText,
                    style: kTimerInContainerTextStyle,
                  ),
                  //takes the available space
                  Expanded(child: Container()),
                  //container for shadow
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(k60IconSize),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.kGradientFirst,
                          offset: const Offset(4.0, 8.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    //play icon
                    child: Icon(
                      Icons.play_circle_filled_rounded,
                      color: AppColor.kWhiteColor,
                      size: k60IconSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
