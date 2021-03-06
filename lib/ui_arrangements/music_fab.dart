import 'package:bmad_ui_example/neumorphic_objects/object_builder/objects/fast_forward_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/object_builder/objects/pause_play_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/object_builder/objects/rewind_button.dart';
import 'package:flutter/material.dart';

class MusicFloatingActionButton extends StatelessWidget {
  MusicFloatingActionButton({this.topPadding = 0});
  final double? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Row(
        children: [
          SizedBox(width: 50.0),
          RewindButton(),
          Spacer(),
          PausePlayButton(),
          Spacer(),
          FastForwardButton(),
          SizedBox(width: 50.0),
        ],
      ),
    );
  }
}
