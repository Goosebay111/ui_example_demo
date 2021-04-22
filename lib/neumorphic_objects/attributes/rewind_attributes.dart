import 'package:bmad_ui_example/decoration_builder/effects/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/effects/border_effects.dart';
import 'package:bmad_ui_example/decoration_builder/effects/surface_effect.dart';
import 'package:flutter/material.dart';

class RewindAttributes extends BorderEffect {
  RewindAttributes()
      : super(
          diameter: 80.0,
          borderWidth: 4.0,
          borderColor: Color(0xff1C1C1C).withOpacity(0.9),
        );
}

class RewindSurfaceEffect extends SurfaceEffect {
  RewindSurfaceEffect()
      : super(
          color1: Color(0xff222429).withOpacity(1.0),
          color2: Color(0xff2F3238).withOpacity(1.0),
          focal: Alignment.topLeft,
          radius: 1.1,
          center: Alignment.centerLeft,
        );
}

class RewindShadowEffect extends ShadowEffect {
  RewindShadowEffect()
      : super(
          shadows: [
            BoxShadow(
              color: Color(0xff171719).withOpacity(1.0),
              offset: Offset(15.0, 15.0),
              blurRadius: 8.0,
              spreadRadius: 5.0,
            ),
            BoxShadow(
              color: Color(0xff222A2F).withOpacity(0.7),
              offset: Offset(-6.0, -7.0),
              blurRadius: 9.0,
              spreadRadius: 4.0,
            )
          ],
        );
}
