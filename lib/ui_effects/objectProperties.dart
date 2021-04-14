import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
import 'package:flutter/material.dart';

abstract class ShapeAttributes {
  ShapeAttributes(
      {required this.diameter,
      required this.borderWidth,
      required this.borderColor});
  final double diameter;
  final double borderWidth;
  final Color borderColor;

  get size => diameter;
}

abstract class SurfaceEffect {
  SurfaceEffect(
      {required this.lightSideColor,
      required this.darkSideColor,
      required this.focalAlignment,
      required this.focalRadius,
      required this.centerAlignment}) {
    _gradient.add(lightSideColor);
    _gradient.add(darkSideColor);
  }
  final Alignment focalAlignment;
  final double focalRadius;
  final AlignmentGeometry centerAlignment;

  Color lightSideColor;
  Color darkSideColor;

  late List<Color> _gradient = [];

  get colorGradient => _gradient;
}

abstract class Effect {
  Effect(
      {required this.shapeProperties,
      required this.surfaceEffects,
      required this.shadowEffect});
  final ShapeAttributes shapeProperties;
  final SurfaceEffect surfaceEffects;
  final Shadowing shadowEffect;

  get size => shapeProperties.size;

  BoxDecoration getDecoration() {
    return BoxDecoration(
      gradient: RadialGradient(
        colors: surfaceEffects.colorGradient,
        radius: surfaceEffects.focalRadius,
        focal: surfaceEffects.focalAlignment,
        center: surfaceEffects.centerAlignment,
      ),
      borderRadius: BorderRadius.all(Radius.circular(shapeProperties.size / 2)),
      border: Border.all(
        width: shapeProperties.borderWidth,
        color: shapeProperties.borderColor,
      ),
      boxShadow: shadowEffect.getShadows(),
    );
  }
}
