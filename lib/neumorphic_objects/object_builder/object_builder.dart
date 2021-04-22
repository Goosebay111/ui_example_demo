import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:flutter/material.dart';

import 'details/icon_widget.dart';
import 'details/image_widget.dart';
import 'details/thumb_widget.dart';

abstract class ObjectBuilder extends StatelessWidget {
  ObjectBuilder(
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
      decoration: decorations.boxDecoration,
    );
  }
}
