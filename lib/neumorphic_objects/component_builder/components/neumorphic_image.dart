import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/effect_collection/image_effect_collection.dart';
import 'package:flutter/material.dart';

class NeumorphicImage extends ComponentBuilder {
  NeumorphicImage()
      : super(
          image: AssetImage('assets/lowlife.jpg'),
          decorations: ImageEffectCollection(),
        );
}
