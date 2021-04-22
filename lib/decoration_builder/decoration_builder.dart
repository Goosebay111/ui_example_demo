import 'package:bmad_ui_example/decoration_builder/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/shape_effects.dart';
import 'package:bmad_ui_example/decoration_builder/surface_effect.dart';
import 'package:flutter/material.dart';

class DecorationBuilder {
  DecorationBuilder(
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
      gradient: surfaceEffect.getRadialGradient(),
      borderRadius: BorderRadius.all(Radius.circular(shapeEffect.size / 2)),
      border: Border.all(
        width: shapeEffect.borderWidth,
        color: shapeEffect.borderColor,
      ),
      boxShadow: shadowEffect.getShadows(),
    );
  }
}
