import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:flutter/material.dart';
import 'features/icon_element.dart';
import 'features/image_element.dart';
import 'features/thumb_element.dart';

abstract class ComponentBuilder extends StatelessWidget {
  ComponentBuilder(
      {required this.decorations,
      this.child,
      this.image,
      this.isThumb = false});

  @protected
  final DecorationBuilder decorations;
  @protected
  final Widget? child;
  @protected
  final AssetImage? image;
  @protected
  final bool? isThumb;

  @override
  Widget build(BuildContext context) {
    final double size = decorations.size;

    return Container(
      width: size,
      height: size,
      child: Stack(
        children: <Widget>[
          if (isThumb != false) ThumbFeature(size: size),
          if (image != null) ImageFeature(size: size, image: image),
          if (child != null) IconFeature(child: child),
        ],
      ),
      decoration: decorations.getDecoration(),
    );
  }
}
