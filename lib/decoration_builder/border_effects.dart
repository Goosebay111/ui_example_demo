import 'package:flutter/material.dart';

abstract class BorderEffect {
  BorderEffect(
      {required this.diameter,
      required this.borderWidth,
      required this.borderColor});

  final double diameter;

  final double borderWidth;

  final Color borderColor;

  double get size => diameter;
  BorderRadius get borderRadius =>
      BorderRadius.all(Radius.circular(diameter / 2));
  Border get border => Border.all(width: borderWidth, color: borderColor);
}
