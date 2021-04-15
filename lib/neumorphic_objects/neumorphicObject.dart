import 'package:bmad_ui_example/ui_effects/objectProperties.dart';
import 'package:flutter/material.dart';

class NeumorphicObject extends StatelessWidget {
  NeumorphicObject(
      {this.image, this.child, required this.effect, this.isThumb = false});

  final String? image;
  final Widget? child;
  final Effect effect;
  final bool? isThumb;

  @override
  Widget build(BuildContext context) {
    final double size = effect.size;

    return Container(
      width: size,
      height: size,
      child: Object(child: child, image: image, size: size, isThumb: isThumb),
      decoration: effect.getDecoration(),
    );
  }
}

class Object extends StatelessWidget {
  const Object({
    required this.child,
    required this.image,
    required this.size,
    required this.isThumb,
  });

  final Widget? child;
  final String? image;
  final double size;
  final bool? isThumb;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (child != null) IconObject(child: child),
        if (isThumb == true) ThumbObject(size: size),
        if (image != null) ImageObject(size: size, image: image),
      ],
    );
  }
}

class IconObject extends StatelessWidget {
  const IconObject({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(child: child);
  }
}

class ThumbObject extends StatelessWidget {
  const ThumbObject({required this.size});

  final size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size / 3,
        height: size / 3,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff896B28),
            Color(0xffB19E3C),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(25.0 / 6.0),
        ),
      ),
    );
  }
}

class ImageObject extends StatelessWidget {
  const ImageObject({required this.size, required this.image});

  final size;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: AssetImage(image!),
    );
  }
}
