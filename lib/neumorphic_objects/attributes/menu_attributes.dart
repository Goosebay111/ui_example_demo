import 'package:bmad_ui_example/decoration_builder/effects/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/effects/border_effects.dart';
import 'package:bmad_ui_example/decoration_builder/effects/surface_effect.dart';
import 'package:flutter/material.dart';

class MenuBorderEffect extends BorderEffect {
  MenuBorderEffect()
      : super(
          diameter: 50.0,
          borderWidth: 2.5,
          borderColor: Color(0xff2E3235).withOpacity(1.0),
        );
}

class MenuSurfaceEffect extends SurfaceEffect {
  MenuSurfaceEffect()
      : super(
          color1: Color(0xff262A2F).withOpacity(1.0),
          color2: Color(0xff2C3238).withOpacity(1.0),
          focal: Alignment.bottomLeft,
          radius: 1.0,
          center: Alignment.bottomRight,
        );
}

class MenuShadowEffect extends ShadowEffect {
  MenuShadowEffect()
      : super(
          shadows: [
            BoxShadow(
              color: Color(0xff262A2F).withOpacity(0.7),
              offset: Offset(4.0, 4.0),
              blurRadius: 4.0,
              spreadRadius: 3.0,
            ),
            BoxShadow(
              color: Color(0xff3E434A).withOpacity(1.0),
              offset: Offset(-6.0, -6.0),
              blurRadius: 8.0,
              spreadRadius: 2.0,
            )
          ],
        );
}
