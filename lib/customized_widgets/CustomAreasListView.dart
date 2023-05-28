import 'package:flutter/material.dart';
import '../consts/consts.dart';
import 'CustomCointainerFocusArea.dart';

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
                  top: k5Height,
                  right: k30Width,
                  left: k30Width,
                  bottom: k20Height),
              child: Row(
                children: [
                  const CustomContainerFocusArea(
                    name: 'glutes',
                    imagePath: 'assets/ex1.png',
                  ),
                  SizedBox(
                    width: k30Width,
                  ),
                  const CustomContainerFocusArea(
                    name: 'glutes',
                    imagePath: 'assets/ex1.png',
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
