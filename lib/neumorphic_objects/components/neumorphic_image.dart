import 'package:bmad_ui_example/neumorphic_objects/effects/image_effect.dart';
import 'package:bmad_ui_example/neumorphic_objects/element_builder/component_builder.dart';
import 'package:flutter/material.dart';

class NeumorphicImage extends ComponentBuilder {
  NeumorphicImage()
      : super(
          image: AssetImage('assets/lowlife.jpg'),
          effect: ImageEffect(),
        );
}