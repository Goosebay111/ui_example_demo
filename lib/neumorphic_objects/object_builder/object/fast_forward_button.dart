import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/attributes/fast_forward_attributes.dart';
import 'package:flutter/material.dart';

import '../component_builder.dart';

class FastForwardButton extends ComponentBuilder {
  FastForwardButton()
      : super(
          child: Icon(
            Icons.fast_forward_rounded,
            color: Color(0xff85878A).withOpacity(1.0),
            size: 25.0,
          ),
          decorations: DecorationBuilder(
            borderEffect: FastForwardBorderEffect(),
            surfaceEffect: FastForwardSurfaceEffect(),
            shadowEffect: FastForwardShadowEffect(),
          ),
        );
}
