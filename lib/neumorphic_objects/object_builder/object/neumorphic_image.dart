import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/attributes/image_attributes.dart';
import 'package:flutter/material.dart';

import '../object_builder.dart';

class NeumorphicImage extends ComponentBuilder {
  NeumorphicImage()
      : super(
          image: AssetImage('assets/lowlife.jpg'),
          decorations: DecorationBuilder(
            borderEffect: ImageBorderEffect(),
            surfaceEffect: ImageSurfaceEffect(),
            shadowEffect: ImageShadowEffect(),
          ),
        );
}
