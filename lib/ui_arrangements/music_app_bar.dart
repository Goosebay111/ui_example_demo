import 'package:bmad_ui_example/constants/play_status.dart';
import 'package:bmad_ui_example/neumorphic_objects/object_builder/objects/history_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/object_builder/objects/menu_button.dart';
import 'package:flutter/material.dart';

class MusicAppBar extends StatelessWidget {
  MusicAppBar({this.topPadding = 0});
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Row(
        children: [
          SizedBox(width: 30.0),
          HistoryButton(),
          Spacer(),
          PlayStatus(),
          Spacer(),
          MenuButton(),
          SizedBox(width: 35.0),
        ],
      ),
    );
  }
}
