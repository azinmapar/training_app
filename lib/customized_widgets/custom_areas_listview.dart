import 'package:flutter/material.dart';
import 'package:video_player/api/get_data.dart';
import '../consts/consts.dart';
import 'custom_cointainer_focus_area.dart';

class CustomAreasListView extends StatefulWidget {
  const CustomAreasListView({
    super.key,
  });

  @override
  State<CustomAreasListView> createState() => _CustomAreasListViewState();
}

class _CustomAreasListViewState extends State<CustomAreasListView> {
  List info = [];

  void getData() async {
    InfoModel infoModel = InfoModel();
    dynamic i = await infoModel.getInfo();
    setState(() {
      info = i;
    });
    print(info);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(info.length, (i) {
          return Padding(
            padding: EdgeInsets.only(
                top: k15Width,
                right: k15Width,
                left: k15Width,
                bottom: k15Width),
            child: CustomContainerFocusArea(
              name: info[i]['title'],
              imagePath: info[i]['image'],
            ),
          );
        }),
      ),
    );
  }
}
