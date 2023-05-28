import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../consts.dart';

class CustomAreasListView extends StatelessWidget {
  const CustomAreasListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OverflowBox(
        maxWidth: kScreenWidth,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (_, i) {
            return Padding(
              padding: EdgeInsets.only(
                  top: k5Height, right: k30Width, left: k30Width),
              child: Row(
                children: [
                  Container(
                    height: kAreaContainerHeight,
                    width: kAreaContainerWidth,
                    decoration: BoxDecoration(
                      color: AppColor.kWhiteColor,
                      borderRadius: k20CircularBorderRadius,
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/ex1.png',
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
                          'glutes',
                          style: TextStyle(
                            fontSize: k20FontSize,
                            color: AppColor.kHomePageDetail,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: k30Width,
                  ),
                  Container(
                    height: kAreaContainerHeight,
                    width: kAreaContainerWidth,
                    decoration: BoxDecoration(
                      borderRadius: k20CircularBorderRadius,
                      color: AppColor.kWhiteColor,
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/ex1.png',
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
                          'glutes',
                          style: TextStyle(
                            fontSize: k20FontSize,
                            color: AppColor.kHomePageDetail,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
