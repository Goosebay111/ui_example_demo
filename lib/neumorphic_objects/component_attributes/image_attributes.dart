import 'package:bmad_ui_example/decoration_builder/shadow_effects.dart';
import 'package:bmad_ui_example/decoration_builder/border_effects.dart';
import 'package:bmad_ui_example/decoration_builder/surface_effect.dart';
import 'package:flutter/material.dart';

class ImageAttributes extends BorderEffect {
  ImageAttributes()
      : super(
          diameter: 300,
          borderWidth: 9.0,
          borderColor: Color(0xff1A1A1A).withOpacity(1.0),
        );
}

class ImageSurfaceEffect extends SurfaceEffect {
  ImageSurfaceEffect()
      : super(
          color1: Color(0xff222429).withOpacity(1.0),
          color2: Color(0xff2F3238).withOpacity(1.0),
          focal: Alignment.bottomLeft,
          radius: 0.0,
          center: Alignment.bottomRight,
        );
}

class ImageShadowEffect extends ShadowEffect {
  ImageShadowEffect()
      : super(
          shadows: [
            BoxShadow(
              color: Color(0xff3E434A).withOpacity(0.85),
              offset: Offset(-10.0, -30.0),
              blurRadius: 15.0,
              spreadRadius: 0.0,
            ),
            BoxShadow(
              color: Color(0xff1D1F22).withOpacity(1.0),
              offset: Offset(10.0, 10.0),
              blurRadius: 12.0,
              spreadRadius: 7.0,
            )
          ],
        );
}
