import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:bmad_ui_example/ui_effects/shape_effects.dart';
import 'package:bmad_ui_example/ui_effects/surface_effect.dart';
import 'package:flutter/material.dart';

class RewindAttributes extends ShapeEffect {
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
          centre: Alignment.centerLeft,
        );
}

class RewindShadowEffect extends ShadowEffect {
  RewindShadowEffect()
      : super(
          shadows: [
            Shadow(
              color: Color(0xff171719).withOpacity(1.0),
              translateBy: TranslateBy(x: 15.0, y: 15.0),
              blurSize: 8.0,
              spreadSize: 5.0,
            ),
            Shadow(
              color: Color(0xff222A2F).withOpacity(0.7),
              translateBy: TranslateBy(x: -6.0, y: -7.0),
              blurSize: 9.0,
              spreadSize: 4.0,
            )
          ],
        );
}
