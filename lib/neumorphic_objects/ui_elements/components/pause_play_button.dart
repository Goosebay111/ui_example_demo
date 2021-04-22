import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_attributes/pause_play_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/ui_elements/component_builder.dart';
import 'package:flutter/material.dart';

class PausePlayButton extends ComponentBuilder {
  PausePlayButton()
      : super(
          child: Icon(
            Icons.pause_rounded,
            color: Color(0xffFFFFFF).withOpacity(1.0),
            size: 25.0,
          ),
          decorations: DecorationBuilder(
            borderEffect: PlayAttributes(),
            surfaceEffect: PlaySurfaceEffect(),
            shadowEffect: PlayShadowEffect(),
          ),
        );
}
