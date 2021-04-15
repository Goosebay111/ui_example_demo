import 'package:bmad_ui_example/neumorphic_objects/components/fast_forward_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/components/pause_play_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/components/rewind_button.dart';
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
          SizedBox(width: 30.0),
          RewindButton(),
          Spacer(),
          PausePlayButton(),
          Spacer(),
          FastForwardButton(),
          SizedBox(width: 30.0),
        ],
      ),
    );
  }
}
