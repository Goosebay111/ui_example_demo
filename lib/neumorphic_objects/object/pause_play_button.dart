import 'package:bmad_ui_example/neumorphic_objects/object_builder/neumorphic_builder.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';

class PlayAttributes extends ShapeAttributes {
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
          lightSideColor: Color(0xffEA5E06).withOpacity(1.0),
          darkSideColor: Color(0xffBC2911).withOpacity(1.0),
          focalAlignment: Alignment.bottomCenter,
          focalRadius: 0.89,
          centerAlignment: Alignment.centerRight,
        );
}

class PlayShadowEffect extends Shadowing {
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

class PlayEffect extends Effect {
  PlayEffect()
      : super(
          shapeProperties: PlayAttributes(),
          surfaceEffects: PlaySurfaceEffect(),
          shadowEffect: PlayShadowEffect(),
        );
}

class PlayButton extends NeumorphicBuilder {
  PlayButton()
      : super(
          child: Icon(
            Icons.pause_rounded,
            color: Color(0xffFFFFFF).withOpacity(1.0),
            size: 25.0,
          ),
          effect: PlayEffect(),
        );
}