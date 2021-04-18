import 'package:bmad_ui_example/ui_properties/objectProperties.dart';
import 'package:bmad_ui_example/ui_properties/shadow_effects.dart';
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
          centre: Alignment.centerRight,
        );
}

class PlayShadowEffect extends ShadowEffect {
  PlayShadowEffect()
      : super(
          shadows: [
            Shadow(
              color: Color(0xff171717).withOpacity(1.0),
              translateBy: TranslateBy(x: 15.0, y: 15.0),
              blurSize: 8.0,
              spreadSize: 5.0,
            ),
            Shadow(
              color: Color(0xff272d31).withOpacity(1.0),
              translateBy: TranslateBy(x: -8.0, y: -8.0),
              blurSize: 7.0,
              spreadSize: 4.0,
            )
          ],
        );
}
