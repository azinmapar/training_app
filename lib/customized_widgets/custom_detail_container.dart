import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app/classes/video_info_provider.dart';
import '../api/get_data.dart';
import '../consts/app_colors.dart';
import '../consts/consts.dart';
import 'custom_circuits_title.dart';
import 'custom_training_list_view.dart';

class CustomDetailContainer extends StatefulWidget {
  const CustomDetailContainer({
    super.key,
  });

  @override
  State<CustomDetailContainer> createState() => _CustomDetailContainerState();
}

class _CustomDetailContainerState extends State<CustomDetailContainer> {
  List info = [];

  void getData() async {
    InfoModel infoModel = InfoModel();
    dynamic i = await infoModel.getVideoInfo();
    setState(() {
      info = i ?? [];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    infoLength();
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
              const CustomCircuitsTitle(),
              //space
              SizedBox(height: k5Height),
              //items
              Expanded(
                child: CustomTrainingListView(info: info),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void infoLength() {
    Future.delayed(Duration.zero, () {
      Provider.of<PlayVideo>(context, listen: false)
          .setVideoInfoLength(info.length);
    });
  }
}
