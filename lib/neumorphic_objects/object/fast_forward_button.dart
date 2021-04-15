import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';

import '../object_builder/neumorphic_builder.dart';

class FastForwardAttributes extends ShapeEffect {
  FastForwardAttributes()
      : super(
          diameter: 80.0,
          borderWidth: 4.0,
          borderColor: Color(0xff1C1C1C).withOpacity(0.9),
        );
}

class FastForwardSurfaceEffect extends SurfaceEffect {
  FastForwardSurfaceEffect()
      : super(
          lightSideColor: Color(0xff222429).withOpacity(1.0),
          darkSideColor: Color(0xff2F3238).withOpacity(1.0),
          focalAlignment: Alignment.topLeft,
          focalRadius: 1.1,
          centerAlignment: Alignment.centerLeft,
        );
}

class FastForwardShadowEffect extends ShadowEffect {
  FastForwardShadowEffect()
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

class FastForwardEffect extends Effect {
  FastForwardEffect()
      : super(
          shapeEffect: FastForwardAttributes(),
          surfaceEffect: FastForwardSurfaceEffect(),
          shadowEffect: FastForwardShadowEffect(),
        );
}

class FastForwardButton extends NeumorphicBuilder {
  FastForwardButton()
      : super(
          child: Icon(
            Icons.fast_forward_rounded,
            color: Color(0xff85878A).withOpacity(1.0),
            size: 25.0,
          ),
          effect: FastForwardEffect(),
        );
}
