import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:bmad_ui_example/ui_effects/shape_effects.dart';
import 'package:bmad_ui_example/ui_effects/surface_effect.dart';
import 'package:flutter/material.dart';

class ThumbAttributes extends ShapeEffect {
  ThumbAttributes()
      : super(
          diameter: 30.0,
          borderWidth: 2.0,
          borderColor: Color(0xff2E3439).withOpacity(0.4),
        );
}

class ThumbSurfaceEffect extends SurfaceEffect {
  ThumbSurfaceEffect()
      : super(
          color1: Color(0xff22262B).withOpacity(1.0),
          color2: Color(0xff2B2F35).withOpacity(1.0),
          focal: Alignment.center,
          radius: 1.0,
          centre: Alignment.center,
        );
}

class ThumbShadowEffect extends ShadowEffect {
  ThumbShadowEffect()
      : super(
          shadows: [
            Shadow(
              color: Colors.transparent,
              translateBy: TranslateBy(x: 0.0, y: 0.0),
              blurSize: 0.0,
              spreadSize: 0.0,
            ),
            Shadow(
              color: Colors.transparent,
              translateBy: TranslateBy(x: 0.0, y: 0.0),
              blurSize: 0.0,
              spreadSize: 0.0,
            )
          ],
        );
}
