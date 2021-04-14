import 'package:bmad_ui_example/neumorphic_objects/neumorphicObject.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';

class ThumbAttributes extends ShapeAttributes {
  ThumbAttributes()
      : super(
          diameter: 30.0,
          borderWidth: 2.0,
          borderColor: Color(0xff2A2F35).withOpacity(0.5),
        );
}

class ThumbSurfaceEffect extends SurfaceEffect {
  ThumbSurfaceEffect()
      : super(
          lightSideColor: Color(0xff2A2F35).withOpacity(1.0),
          darkSideColor: Color(0xff070707).withOpacity(1.0),
          focalAlignment: Alignment.topLeft,
          focalRadius: 1.2,
          centerAlignment: Alignment.bottomCenter,
        );
}

class ThumbShadowEffect extends Shadowing {
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

class ThumbEffect extends Effect {
  ThumbEffect()
      : super(
          shapeProperties: ThumbAttributes(),
          surfaceEffects: ThumbSurfaceEffect(),
          shadowEffect: ThumbShadowEffect(),
        );
}

class MusicThumb extends NeumorphicObject {
  MusicThumb()
      : super(
          child: null,
          isThumb: true,
          effect: ThumbEffect(),
        );
}
