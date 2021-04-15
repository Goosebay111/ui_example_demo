import 'package:bmad_ui_example/ui_properties/objectProperties.dart';
import 'package:bmad_ui_example/ui_properties/shadow_effects.dart';
import 'package:flutter/material.dart';

class MenuAttributes extends ShapeEffect {
  MenuAttributes()
      : super(
          diameter: 45.0,
          borderWidth: 2.5,
          borderColor: Color(0xff2E3235).withOpacity(1.0),
        );
}

class MenuSurfaceEffect extends SurfaceEffect {
  MenuSurfaceEffect()
      : super(
          lightSideColor: Color(0xff262A2F).withOpacity(1.0),
          darkSideColor: Color(0xff2C3238).withOpacity(1.0),
          focalAlignment: Alignment.bottomLeft,
          focalRadius: 1.0,
          centerAlignment: Alignment.bottomRight,
        );
}

class MenuShadowEffect extends ShadowEffect {
  MenuShadowEffect()
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
