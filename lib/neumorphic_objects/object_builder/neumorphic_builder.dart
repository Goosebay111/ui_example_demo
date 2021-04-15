import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:flutter/material.dart';

import 'icon_element.dart';
import 'image_element.dart';
import 'thumb_element.dart';

class NeumorphicBuilder extends StatelessWidget {
  NeumorphicBuilder(
      {required this.effect, this.child, this.image, this.isThumb = false});

  final Effect effect;
  final Widget? child;
  final AssetImage? image;
  final bool? isThumb;

  @override
  Widget build(BuildContext context) {
    final double size = effect.size;

    return Container(
      width: size,
      height: size,
      child: Stack(
        children: <Widget>[
          if (isThumb != false) ThumbElement(size: size),
          if (image != null) ImageElement(size: size, image: image),
          if (child != null) IconElement(child: child),
        ],
      ),
      decoration: effect.getDecoration(),
    );
  }
}
