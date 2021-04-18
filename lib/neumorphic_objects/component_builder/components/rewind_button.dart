import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/effect_collection/rewind_effect_collection.dart';
import 'package:flutter/material.dart';

class RewindButton extends ComponentBuilder {
  RewindButton()
      : super(
          child: Icon(
            Icons.fast_rewind_rounded,
            color: Color(0xff85878A).withOpacity(1.0),
            size: 28.0,
          ),
          decorations: RewindEffectCollection(),
        );
}