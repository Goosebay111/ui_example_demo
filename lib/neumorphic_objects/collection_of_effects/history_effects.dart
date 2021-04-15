import 'package:bmad_ui_example/neumorphic_objects/element_builder/component_builder.dart';
import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryAttributes extends ShapeEffect {
  HistoryAttributes()
      : super(
          diameter: 45.0,
          borderWidth: 2.5,
          borderColor: Color(0xff2E3235).withOpacity(1.0),
        );
}

class HistorySurfaceEffect extends SurfaceEffect {
  HistorySurfaceEffect()
      : super(
          lightSideColor: Color(0xff262A2F).withOpacity(1.0),
          darkSideColor: Color(0xff2C3238).withOpacity(1.0),
          focalAlignment: Alignment.bottomLeft,
          focalRadius: 1.0,
          centerAlignment: Alignment.bottomRight,
        );
}

class HistoryShadowEffect extends ShadowEffect {
  HistoryShadowEffect()
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

class HistoryEffect extends Effect {
  HistoryEffect()
      : super(
          shapeEffect: HistoryAttributes(),
          surfaceEffect: HistorySurfaceEffect(),
          shadowEffect: HistoryShadowEffect(),
        );
}
