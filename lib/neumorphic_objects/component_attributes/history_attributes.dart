import 'package:bmad_ui_example/decoration_builder/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/shape_effects.dart';
import 'package:bmad_ui_example/decoration_builder/surface_effect.dart';
import 'package:flutter/material.dart';

class HistoryButtonAttributes extends ShapeEffect {
  HistoryButtonAttributes()
      : super(
          diameter: 50.0,
          borderWidth: 2.5,
          borderColor: Color(0xff2E3235).withOpacity(1.0),
        );
}

class HistoryButtonSurfaceEffect extends SurfaceEffect {
  HistoryButtonSurfaceEffect()
      : super(
          color1: Color(0xff262A2F).withOpacity(1.0),
          color2: Color(0xff2C3238).withOpacity(1.0),
          focal: Alignment.bottomLeft,
          radius: 1.1,
          center: Alignment.bottomRight,
        );
}

class HistoryButtonShadowEffect extends ShadowEffect {
  HistoryButtonShadowEffect()
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
