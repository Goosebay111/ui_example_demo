import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:bmad_ui_example/ui_effects/shape_effects.dart';
import 'package:bmad_ui_example/ui_effects/surface_effect.dart';
import 'package:flutter/material.dart';

class ImageAttributes extends ShapeEffect {
  ImageAttributes()
      : super(
          diameter: 300,
          borderWidth: 9.0,
          borderColor: Color(0xff1A1A1A).withOpacity(1.0),
        );
}

class ImageSurfaceEffect extends SurfaceEffect {
  ImageSurfaceEffect()
      : super(
          color1: Color(0xff222429).withOpacity(1.0),
          color2: Color(0xff2F3238).withOpacity(1.0),
          focal: Alignment.bottomLeft,
          radius: 0.0,
          centre: Alignment.bottomRight,
        );
}

class ImageShadowEffect extends ShadowEffect {
  ImageShadowEffect()
      : super(
          shadows: [
            Shadow(
              color: Color(0xff3E434A).withOpacity(0.85),
              translateBy: TranslateBy(x: -10.0, y: -30.0),
              blurSize: 15.0,
              spreadSize: 0.0,
            ),
            Shadow(
              color: Color(0xff1D1F22).withOpacity(1.0),
              translateBy: TranslateBy(x: 10.0, y: 20.0),
              blurSize: 12.0,
              spreadSize: 7.0,
            )
          ],
        );
}
