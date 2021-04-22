import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_attributes/image_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:flutter/material.dart';

class NeumorphicImage extends ComponentBuilder {
  NeumorphicImage()
      : super(
          image: AssetImage('assets/lowlife.jpg'),
          decorations: DecorationBuilder(
            borderEffect: ImageAttributes(),
            surfaceEffect: ImageSurfaceEffect(),
            shadowEffect: ImageShadowEffect(),
          ),
        );
}
