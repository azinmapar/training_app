import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';
import 'custom_tags.dart';

class CustomInformationTags extends StatelessWidget {
  const CustomInformationTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //timer
        const CustomTags(
          name: '68 min',
          icon: Icons.timer_outlined,
        ),
        SizedBox(
          width: k20Width,
        ),
        //requirements
        const CustomTags(
          name: 'Resistant Band, kettle-bell',
          icon: Icons.handyman_rounded,
        ),
      ],
    );
  }
}
