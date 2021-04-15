import 'package:flutter/material.dart';

class ImageElement extends StatelessWidget {
  const ImageElement({required this.size, required this.image});

  final size;
  final AssetImage? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: image,
    );
  }
}
