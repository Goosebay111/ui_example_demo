import 'package:flutter/material.dart';

abstract class ShapeEffect {
  ShapeEffect(
      {required this.diameter,
      required this.borderWidth,
      required this.borderColor});

  final double diameter;

  final double borderWidth;

  final Color borderColor;

  get size => diameter;
}
