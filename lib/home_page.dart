import 'package:flutter/material.dart';
import 'package:video_player/CustomizedWidgets/CustomPlanContainer.dart';
import 'package:video_player/app_colors.dart';
import 'package:video_player/consts.dart';
import 'CustomizedWidgets/CustomAppBar.dart';
import 'CustomizedWidgets/CustomAreasListView.dart';
import 'CustomizedWidgets/CustomFirstContainer.dart';
import 'CustomizedWidgets/CustomSecondContainer.dart';
import 'CustomizedWidgets/CustomTitleOfFocusArea.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              SizedBox(
                height: k5Height,
              ),
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
