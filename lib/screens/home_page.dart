import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';
import '../customized_widgets/custom_app_bar.dart';
import '../customized_widgets/custom_areas_listview.dart';
import '../customized_widgets/custom_first_container.dart';
import '../customized_widgets/custom_plan_container.dart';
import '../customized_widgets/custom_second_container.dart';
import '../customized_widgets/custom_title_of_focus_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kHomePageBackground,
      body: Padding(
        padding: EdgeInsets.all(k8Width),
        child: SafeArea(
          child: Column(
            children: [
              //Transparent AppBar
              const CustomAppBar(),
              //your program details
              const CustomPlanContainer(),
              //first blue container
              const CustomFirstContainer(),
              //space between
              SizedBox(height: k5Height),
              //second motivation container
              const CustomSecondContainer(),
              //title of area of focus
              const CustomTitleOfFocusArea(),
              //list view
              const CustomAreasListView(),
            ],
          ),
        ),
      ),
    );
  }
}
