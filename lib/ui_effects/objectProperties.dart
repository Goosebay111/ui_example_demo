import 'package:bmad_ui_example/ui_effects/shadow_effects.dart';
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
      {required this.lightSideColor,
      required this.darkSideColor,
      required this.focalAlignment,
      required this.focalRadius,
      required this.centerAlignment}) {
    _gradient.add(lightSideColor);
    _gradient.add(darkSideColor);
  }
  @protected
  final Alignment focalAlignment;
  @protected
  final double focalRadius;
  @protected
  final AlignmentGeometry centerAlignment;

  Color lightSideColor;
  Color darkSideColor;

  late List<Color> _gradient = [];

  get colorGradient => _gradient;
}

abstract class Effect {
  Effect(
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
        radius: surfaceEffect.focalRadius,
        focal: surfaceEffect.focalAlignment,
        center: surfaceEffect.centerAlignment,
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
