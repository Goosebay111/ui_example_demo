import 'package:bmad_ui_example/decoration_builder/decorations/neumorphic_decoration.dart';
import 'package:flutter/material.dart';

import '../object_builder.dart';

class NeumorphicImage extends ObjectBuilder {
  NeumorphicImage()
      : super(
          image: AssetImage('assets/lowlife.jpg'),
          decorations: ImageDecoration(),
        );
}
