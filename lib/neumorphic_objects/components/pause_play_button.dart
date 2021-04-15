import 'package:bmad_ui_example/neumorphic_objects/collection_of_effects/pause_play_effects.dart';
import 'package:bmad_ui_example/neumorphic_objects/element_builder/component_builder.dart';
import 'package:flutter/material.dart';

class PausePlayButton extends ComponentBuilder {
  PausePlayButton()
      : super(
          child: Icon(
            Icons.pause_rounded,
            color: Color(0xffFFFFFF).withOpacity(1.0),
            size: 25.0,
          ),
          effect: PlayEffect(),
        );
}
