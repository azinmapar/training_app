import 'package:flutter/material.dart';
import 'package:video_player/consts/app_colors.dart';
import 'package:video_player/consts/consts.dart';

class CustomDetailContainer extends StatefulWidget {
  const CustomDetailContainer({
    super.key,
  });

  @override
  State<CustomDetailContainer> createState() => _CustomDetailContainerState();
}

class _CustomDetailContainerState extends State<CustomDetailContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: kScreenWidth,
        decoration: BoxDecoration(
          color: AppColor.kWhiteColor,
          borderRadius: const BorderRadius.only(
            topRight: k80CircularRadius,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(k30Width),
          child: Column(
            children: [
              //title
              Row(
                children: [
                  //circuit text
                  Text(
                    kCircuitsText,
                    style: kCircuitsTextStyles,
                  ),
                  //space available between circuits and sets
                  Expanded(child: Container()),
                  //loop icon
                  Icon(
                    Icons.loop_rounded,
                    size: k30IconSize,
                    color: AppColor.kLoopColor,
                  ),
                  //space
                  SizedBox(
                    width: k10Width,
                  ),
                  //set text
                  Text(
                    kSetsText,
                    style: kSetsTextStyle,
                  ),
                ],
              ),
              //items
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: k10Height,
                          bottom: k10Height,
                          left: k10Width,
                          right: k10Width),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.kWhiteColor,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: AppColor.kGradientSecond,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/ex1.png',
                                  ),
                                  const Column(
                                    children: [
                                      Text(
                                        'title',
                                      ),
                                      Text(
                                        'subtitle',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: const Text(
                                      'rest',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
