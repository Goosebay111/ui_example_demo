import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';

import '../object_builder/neumorphic_builder.dart';

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
          lightSideColor: Color(0xff222429).withOpacity(1.0),
          darkSideColor: Color(0xff2F3238).withOpacity(1.0),
          focalAlignment: Alignment.bottomLeft,
          focalRadius: 0.0,
          centerAlignment: Alignment.bottomRight,
        );
}

class ImageShadowEffect extends ShadowEffect {
  ImageShadowEffect()
      : super(
          shadows: [
            Shadow(
              color: Color(0xff3E434A).withOpacity(1.0),
              translateBy: TranslateBy(x: -16.0, y: -16.0),
              blurSize: 15.0,
              spreadSize: 0.0,
            ),
            Shadow(
              color: Color(0xff1D1F22).withOpacity(0.9),
              translateBy: TranslateBy(x: 10.0, y: 20.0),
              blurSize: 12.0,
              spreadSize: 7.0,
            )
          ],
        );
}

class ImageEffect extends Effect {
  ImageEffect()
      : super(
          shapeEffect: ImageAttributes(),
          surfaceEffect: ImageSurfaceEffect(),
          shadowEffect: ImageShadowEffect(),
        );
}

class NeumorphicImage extends NeumorphicBuilder {
  NeumorphicImage()
      : super(
          image: AssetImage('assets/lowlife.jpg'),
          effect: ImageEffect(),
        );
}
