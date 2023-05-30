import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/classes/VideoInfoProvider.dart';
import '../consts/consts.dart';
import 'custom_training_list_tile.dart';

class CustomTrainingListView extends StatefulWidget {
  const CustomTrainingListView({
    super.key,
    required this.info,
  });

  final List info;

  @override
  State<CustomTrainingListView> createState() => _CustomTrainingListViewState();
}

class _CustomTrainingListViewState extends State<CustomTrainingListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: k10Height),
      itemCount: widget.info.length,
      itemBuilder: (_, i) {
        return GestureDetector(
          child: CustomTrainingListTile(info: widget.info, i: i),
          onTap: () {
            Provider.of<PlayVideo>(context, listen: false)
                .changePlayVideoState(true);
          },
        );
      },
    );
  }
}
