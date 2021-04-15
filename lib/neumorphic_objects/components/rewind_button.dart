import 'package:bmad_ui_example/neumorphic_objects/collection_of_effects/rewind_effects.dart';
import 'package:bmad_ui_example/neumorphic_objects/element_builder/component_builder.dart';
import 'package:flutter/material.dart';

class RewindButton extends ComponentBuilder {
  RewindButton()
      : super(
          child: Icon(
            Icons.fast_rewind_rounded,
            color: Color(0xff85878A).withOpacity(1.0),
            size: 28.0,
          ),
          effect: RewindEffect(),
        );
}
