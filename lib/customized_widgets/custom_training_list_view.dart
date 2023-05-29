import 'package:flutter/material.dart';
import '../consts/consts.dart';
import 'custom_training_list_tile.dart';

class CustomTrainingListView extends StatelessWidget {
  const CustomTrainingListView({
    super.key,
    required this.info,
  });

  final List info;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: k10Height),
      itemCount: info.length,
      itemBuilder: (_, i) {
        return GestureDetector(
          child: CustomTrainingListTile(info: info, i: i),
        );
      },
    );
  }
}
