import 'package:bmad_ui_example/neumorphic_objects/element_builder/component_builder.dart';
import 'package:bmad_ui_example/ui_properties/objectProperties.dart';
import 'package:bmad_ui_example/ui_properties/shadow_effects.dart';
import 'package:flutter/material.dart';

class ThumbAttributes extends ShapeEffect {
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

class ThumbEffect extends Effect {
  ThumbEffect()
      : super(
          shapeEffect: ThumbAttributes(),
          surfaceEffect: ThumbSurfaceEffect(),
          shadowEffect: ThumbShadowEffect(),
        );
}

class MusicThumb extends ComponentBuilder {
  MusicThumb()
      : super(
          isThumb: true,
          effect: ThumbEffect(),
        );
}
