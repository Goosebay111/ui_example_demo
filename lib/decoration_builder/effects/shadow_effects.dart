import 'package:flutter/material.dart';

abstract class ShadowEffect {
  ShadowEffect({required this.shadows});

  @protected
  final List<BoxShadow> shadows;

  List<BoxShadow> get boxShadows => shadows;
}
