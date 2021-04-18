import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:bmad_ui_example/ui_effects/shape_effects.dart';
import 'package:bmad_ui_example/ui_effects/surface_effect.dart';
import 'package:flutter/material.dart';

abstract class EffectCollection {
  EffectCollection(
      {required this.shapeEffect,
      required this.surfaceEffect,
      required this.shadowEffect});
  @protected
  final ShapeEffect shapeEffect;
  @protected
  final SurfaceEffect surfaceEffect;
  @protected
  final ShadowEffect shadowEffect;

  get size => shapeEffect.size;

  BoxDecoration getDecoration() {
    return BoxDecoration(
      gradient: RadialGradient(
        colors: surfaceEffect.colorGradient,
        radius: surfaceEffect.radius,
        focal: surfaceEffect.focal,
        center: surfaceEffect.centre,
        // tileMode: TileMode.mirror,
      ),
      borderRadius: BorderRadius.all(Radius.circular(shapeEffect.size / 2)),
      border: Border.all(
        width: shapeEffect.borderWidth,
        color: shapeEffect.borderColor,
      ),
      boxShadow: shadowEffect.getShadows(),
    );
  }
}
