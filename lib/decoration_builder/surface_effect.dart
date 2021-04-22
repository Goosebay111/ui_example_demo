import 'package:flutter/material.dart';

abstract class SurfaceEffect {
  SurfaceEffect(
      {required this.color1,
      required this.color2,
      required this.focal,
      required this.radius,
      required this.center});

  final Alignment focal;

  final double radius;

  final AlignmentGeometry center;

  Color color1;

  Color color2;

  RadialGradient get radialGradient => RadialGradient(
        colors: [color1, color2],
        focal: focal,
        center: center,
        radius: radius,
      );
}
