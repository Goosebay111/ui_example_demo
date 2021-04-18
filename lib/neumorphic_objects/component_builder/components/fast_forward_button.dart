import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/effect_collection/fast_forward_effect_collection.dart';
import 'package:flutter/material.dart';

class FastForwardButton extends ComponentBuilder {
  FastForwardButton()
      : super(
          child: Icon(
            Icons.fast_forward_rounded,
            color: Color(0xff85878A).withOpacity(1.0),
            size: 25.0,
          ),
          decorations: FastForwardEffectCollection(),
        );
}
