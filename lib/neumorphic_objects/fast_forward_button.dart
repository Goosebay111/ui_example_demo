import 'package:bmad_ui_example/neumorphic_objects/neumorphicObject.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';

class ForwardAttributes extends ShapeAttributes {
  ForwardAttributes()
      : super(
          diameter: 80.0,
          borderWidth: 4.0,
          borderColor: Color(0xff1C1C1C).withOpacity(0.9),
        );
}

class ForwardSurfaceEffect extends SurfaceEffect {
  ForwardSurfaceEffect()
      : super(
          lightSideColor: Color(0xff222429),
          darkSideColor: Color(0xff2F3238),
          focalAlignment: Alignment.topLeft,
          focalRadius: 1.1,
          centerAlignment: Alignment.centerLeft,
        );
}

class ForwardShadowEffect extends Shadowing {
  ForwardShadowEffect()
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

class ForwardEffect extends Effect {
  ForwardEffect()
      : super(
          shapeProperties: ForwardAttributes(),
          surfaceEffects: ForwardSurfaceEffect(),
          shadowEffect: ForwardShadowEffect(),
        );
}

//TODO:
class ForwardButton extends NeumorphicObject {
  ForwardButton()
      : super(
          child: Icon(
            Icons.fast_forward_rounded,
            color: Color(0xff85878A),
            size: 25.0,
          ),
          isThumb: false,
          effect: ForwardEffect(),
        );
}
