import 'package:flutter/material.dart';

class ImageObject extends StatelessWidget {
  const ImageObject({required this.size, required this.image});

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
