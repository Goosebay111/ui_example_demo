import 'package:bmad_ui_example/neumorphic_objects/object/fast_forward_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/object/pause_play_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/object/rewind_button.dart';
import 'package:flutter/material.dart';

class MusicFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30.0),
        RewindButton(),
        Spacer(),
        PlayButton(),
        Spacer(),
        ForwardButton(),
        SizedBox(width: 30.0),
      ],
    );
  }
}
