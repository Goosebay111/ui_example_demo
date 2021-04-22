import 'package:bmad_ui_example/decoration_builder/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/border_effects.dart';
import 'package:bmad_ui_example/decoration_builder/surface_effect.dart';
import 'package:flutter/material.dart';

class DecorationBuilder {
  DecorationBuilder(
      {required this.borderEffect,
      required this.surfaceEffect,
      required this.shadowEffect});
  @protected
  final BorderEffect borderEffect;
  @protected
  final SurfaceEffect surfaceEffect;
  @protected
  final ShadowEffect shadowEffect;

  double get size => borderEffect.size;

  BoxDecoration get boxDecoration => BoxDecoration(
        gradient: surfaceEffect.radialGradient,
        borderRadius: borderEffect.borderRadius,
        border: borderEffect.border,
        boxShadow: shadowEffect.boxShadows,
      );
}
