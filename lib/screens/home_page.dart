import 'package:flutter/material.dart';
import 'package:video_player/customized_widgets/CustomPlanContainer.dart';
import 'package:video_player/consts/app_colors.dart';
import 'package:video_player/consts/consts.dart';
import '../customized_widgets/CustomAppBar.dart';
import '../customized_widgets/CustomAreasListView.dart';
import '../customized_widgets/CustomFirstContainer.dart';
import '../customized_widgets/CustomSecondContainer.dart';
import '../customized_widgets/CustomTitleOfFocusArea.dart';

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
