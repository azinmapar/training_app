import 'package:flutter/material.dart';
import '../consts/consts.dart';
import 'custom_information_tags.dart';
import 'custom_second_page_title.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: k20Width, right: k20Width, top: k10Height),
      child: SizedBox(
        width: kScreenWidth,
        height: k160Height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            const CustomSecondPageTitle(),
            SizedBox(height: k30Height),
            //info tags
            const CustomInformationTags(),
          ],
        ),
      ),
    );
  }
}
