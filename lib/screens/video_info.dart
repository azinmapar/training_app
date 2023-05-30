import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/classes/VideoInfoProvider.dart';
import 'package:video_player/consts/consts.dart';
import '../customized_widgets/custom_info_container.dart';
import '../customized_widgets/custom_video_player_container.dart';
import '../customized_widgets/custom_detail_container.dart';
import '../customized_widgets/custom_second_page_appbar.dart';

class VideoInfo extends StatelessWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PlayVideo>(
      create: (context) => PlayVideo(),
      builder: (context, child) => Scaffold(
        body: Container(
          decoration: Provider.of<PlayVideo>(context).playVideo
              ? kVideoContainerDecoration
              : kVideoInfoDetailContainerDecoration,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(k8Width),
                child: Column(
                  children: [
                    //top app bar
                    const CustomSecondPageAppBar(),
                    //top info container
                    Provider.of<PlayVideo>(context).playVideo
                        ? const CustomVideoPlayerContainer()
                        : const CustomInfoContainer(),
                  ],
                ),
              ),
              //white container for details
              const CustomDetailContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
