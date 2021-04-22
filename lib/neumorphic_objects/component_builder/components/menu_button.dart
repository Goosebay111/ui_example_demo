import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_attributes/menu_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_builder/component_builder.dart';
import 'package:flutter/material.dart';

class MenuButton extends ComponentBuilder {
  MenuButton()
      : super(
          child: Icon(
            Icons.menu_rounded,
            color: Color(0xff818487).withOpacity(1.0),
            size: 19.0,
          ),
          decorations: DecorationBuilder(
            shapeEffect: MenuAttributes(),
            surfaceEffect: MenuSurfaceEffect(),
            shadowEffect: MenuShadowEffect(),
          ),
        );
}
