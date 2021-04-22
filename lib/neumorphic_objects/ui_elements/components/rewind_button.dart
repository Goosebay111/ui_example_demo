import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_attributes/rewind_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/ui_elements/component_builder.dart';
import 'package:flutter/material.dart';

class RewindButton extends ComponentBuilder {
  RewindButton()
      : super(
          child: Icon(
            Icons.fast_rewind_rounded,
            color: Color(0xff85878A).withOpacity(1.0),
            size: 28.0,
          ),
          decorations: DecorationBuilder(
            borderEffect: RewindAttributes(),
            surfaceEffect: RewindSurfaceEffect(),
            shadowEffect: RewindShadowEffect(),
          ),
        );
}
