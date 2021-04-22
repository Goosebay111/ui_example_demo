import 'package:bmad_ui_example/decoration_builder/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/shape_effects.dart';
import 'package:bmad_ui_example/decoration_builder/surface_effect.dart';
import 'package:flutter/material.dart';

class PlayAttributes extends ShapeEffect {
  PlayAttributes()
      : super(
          diameter: 80.0,
          borderWidth: 2.0,
          borderColor: Color(0xffD05725).withOpacity(1.0),
        );
}

class PlaySurfaceEffect extends SurfaceEffect {
  PlaySurfaceEffect()
      : super(
          color1: Color(0xffEA5E06).withOpacity(1.0),
          color2: Color(0xffBC2911).withOpacity(1.0),
          focal: Alignment.bottomCenter,
          radius: 0.89,
          center: Alignment.centerRight,
        );
}

class PlayShadowEffect extends ShadowEffect {
  PlayShadowEffect()
      : super(
          shadows: [
            BoxShadow(
              color: Color(0xff171717).withOpacity(1.0),
              offset: Offset(15.0, 15.0),
              blurRadius: 8.0,
              spreadRadius: 5.0,
            ),
            BoxShadow(
              color: Color(0xff272d31).withOpacity(0.5),
              offset: Offset(-8.0, -8.0),
              blurRadius: 7.0,
              spreadRadius: 4.0,
            )
          ],
        );
}
