import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../consts.dart';

class CustomSecondContainer extends StatelessWidget {
  const CustomSecondContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: k20Width, right: k20Width),
      child: SizedBox(
        width: kScreenWidth,
        height: k180Height,
        child: Stack(
          children: [
            //background image
            Container(
              margin: EdgeInsets.only(top: k30Height),
              width: kScreenWidth,
              height: k120Height,
              decoration: BoxDecoration(
                borderRadius: k20CircularBorderRadius,
                image: const DecorationImage(
                  image: AssetImage('assets/card.png'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  //bottom shadow
                  BoxShadow(
                    color: AppColor.kGradientSecond.withOpacity(0.3),
                    blurRadius: 40.0,
                    offset: const Offset(8.0, 10.0),
                  ),
                  //top shadow
                  BoxShadow(
                    color: AppColor.kGradientSecond.withOpacity(0.3),
                    blurRadius: 10.0,
                    offset: const Offset(-1.0, -5.0),
                  ),
                ],
              ),
            ),
            //human image
            Container(
              width: kScreenWidth * 0.41,
              height: k120Height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/figure.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            //texts
            Container(
              width: double.maxFinite,
              height: k120Height,
              margin: EdgeInsets.only(left: k150Width, top: k30Height),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kHomePageDetailTitleText,
                    style: kHomePageDetailTitleTextStyle,
                  ),
                  SizedBox(
                    height: k10Height,
                  ),
                  RichText(
                    text: TextSpan(
                        text: kHomePagePlanText1,
                        style: kHomePagePlanTextStyle,
                        children: const [
                          TextSpan(
                            text: kHomePagePlanText2,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
