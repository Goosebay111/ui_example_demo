import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:bmad_ui_example/ui_effects/shape_effects.dart';
import 'package:bmad_ui_example/ui_effects/surface_effect.dart';
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
          centre: Alignment.bottomRight,
        );
}

class HistoryButtonShadowEffect extends ShadowEffect {
  HistoryButtonShadowEffect()
      : super(
          shadows: [
            Shadow(
              color: Color(0xff262A2F).withOpacity(0.7),
              translateBy: TranslateBy(x: 4.0, y: 4.0),
              blurSize: 4.0,
              spreadSize: 3.0,
            ),
            Shadow(
              color: Color(0xff3E434A).withOpacity(1.0),
              translateBy: TranslateBy(x: -6.0, y: -6.0),
              blurSize: 8.0,
              spreadSize: 2.0,
            )
          ],
        );
}
