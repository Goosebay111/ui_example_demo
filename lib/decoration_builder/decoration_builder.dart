import 'package:bmad_ui_example/decoration_builder/effects/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/effects/border_effects.dart';
import 'package:bmad_ui_example/decoration_builder/effects/surface_effect.dart';
import 'package:flutter/material.dart';

class DecorationBuilder {
  DecorationBuilder(
      {required this.borderEffect,
      required this.surfaceEffect,
      required this.shadowEffect});

  final BorderEffect borderEffect;
  final SurfaceEffect surfaceEffect;
  final ShadowEffect shadowEffect;

  double get size => borderEffect.size;

  BoxDecoration get boxDecoration => BoxDecoration(
        gradient: surfaceEffect.radialGradient,
        borderRadius: borderEffect.borderRadius,
        border: borderEffect.border,
        boxShadow: shadowEffect.boxShadows,
      );
}
