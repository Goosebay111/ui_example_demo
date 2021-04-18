import 'package:bmad_ui_example/ui_properties/shadow_effects.dart';
import 'package:flutter/material.dart';

abstract class ShapeEffect {
  ShapeEffect(
      {required this.diameter,
      required this.borderWidth,
      required this.borderColor});
  @protected
  final double diameter;
  @protected
  final double borderWidth;
  @protected
  final Color borderColor;

  get size => diameter;
}

abstract class SurfaceEffect {
  SurfaceEffect(
      {required this.color1,
      required this.color2,
      required this.focal,
      required this.radius,
      required this.centre}) {
    _gradient.add(color1);
    _gradient.add(color2);
  }
  @protected
  final Alignment focal;
  @protected
  final double radius;
  @protected
  final AlignmentGeometry centre;

  @protected
  Color color1;
  @protected
  Color color2;
  late List<Color> _gradient = [];

  get colorGradient => _gradient;
}

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
