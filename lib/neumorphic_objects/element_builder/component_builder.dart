import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:flutter/material.dart';

import 'icon_element.dart';
import 'image_element.dart';
import 'thumb_element.dart';

class ComponentBuilder extends StatelessWidget {
  ComponentBuilder(
      {required this.effect, this.child, this.image, this.isThumb = false});

  @protected
  final Effect effect;
  @protected
  final Widget? child;
  @protected
  final AssetImage? image;
  @protected
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
