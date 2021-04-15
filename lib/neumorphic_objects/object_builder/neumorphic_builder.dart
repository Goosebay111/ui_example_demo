import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:flutter/material.dart';

import 'icon_object.dart';
import 'image_object.dart';
import 'thumb_object.dart';

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
          if (isThumb != false) ThumbObject(size: size),
          if (image != null) ImageObject(size: size, image: image),
          if (child != null) IconObject(child: child),
        ],
      ),
      decoration: effect.getDecoration(),
    );
  }
}
