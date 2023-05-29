import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';

class CustomTrainingListTile extends StatelessWidget {
  const CustomTrainingListTile({
    super.key,
    required this.info,
    required this.i,
  });

  final List info;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor,
      ),
      child: Column(
        children: [
          //images and texts
          Row(
            children: [
              //image
              Container(
                width: k80Width,
                height: k80Height,
                decoration: BoxDecoration(
                  borderRadius: k8CircularBorderRadius,
                  image: DecorationImage(
                    image: NetworkImage(info[i]['thumbnail']),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: k10Width,
              ),
              //texts
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    info[i]['title'],
                    style: kSecondPageExerciseTitleTextStyle,
                  ),
                  //space
                  SizedBox(
                    height: k10Height,
                  ),
                  //duration
                  Text(
                    kDurationText,
                    style: kSecondPageExerciseDurationTextStyle,
                  ),
                ],
              ),
            ],
          ),
          //space
          SizedBox(
            height: k18Height,
          ),
          //rest duration
          Row(
            children: [
              //rest duration
              Container(
                decoration: BoxDecoration(
                  color: AppColor.kDurationColor,
                  borderRadius: k20CircularBorderRadius,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: k15Width, vertical: k5Height),
                  child: Text(
                    kRestText,
                    style: kRestTextStyle,
                  ),
                ),
              ),
              //dotted line
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: DottedLine(
                    dashColor: AppColor.kDottedLineColor,
                    dashRadius: kDottedLineDashRadius,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: k18Height,
          ),
        ],
      ),
    );
  }
}
