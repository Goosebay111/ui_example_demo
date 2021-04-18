import 'package:flutter/material.dart';

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

  final Alignment focal;

  final double radius;

  final AlignmentGeometry centre;

  Color color1;

  Color color2;
  late List<Color> _gradient = [];

  get colorGradient => _gradient;
}
