import 'package:flutter/material.dart';

abstract class ShadowEffect {
  ShadowEffect({required this.shadows});

  @protected
  final List<Shadow> shadows;

  getShadows() {
    return shadows.map((shadow) => shadow.getShadow()).toList();
  }
}

class TranslateBy {
  TranslateBy({required this.x, required this.y});
  double x;
  double y;
}

class Shadow {
  Shadow({
    required this.color,
    required this.translateBy,
    required this.blurSize,
    required this.spreadSize,
  });

  final Color color;
  final TranslateBy translateBy;
  final double blurSize;
  final double spreadSize;

  BoxShadow getShadow() {
    return BoxShadow(
      color: color,
      offset: Offset(translateBy.x, translateBy.y),
      blurRadius: blurSize,
      spreadRadius: spreadSize,
    );
  }
}
