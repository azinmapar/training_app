import 'package:flutter/material.dart';
import 'package:video_player/consts/app_colors.dart';
import 'package:video_player/consts/consts.dart';

import '../customized_widgets/custom_information_tags.dart';
import '../customized_widgets/custom_second_page_appbar.dart';
import '../customized_widgets/custom_second_page_title.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.kGradientFirst.withOpacity(0.9),
              AppColor.kGradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(k8Width),
          child: Column(
            children: [
              //top app bar
              const CustomSecondPageAppBar(),
              //top info container
              Padding(
                padding: EdgeInsets.only(
                    left: k20Width, right: k20Width, top: k10Height),
                child: SizedBox(
                  width: kScreenWidth,
                  height: k160Height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      const CustomSecondPageTitle(),
                      SizedBox(
                        height: k30Height,
                      ),
                      //info tags
                      const CustomInformationTags(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
