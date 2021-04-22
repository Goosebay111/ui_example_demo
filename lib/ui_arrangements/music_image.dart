import 'package:bmad_ui_example/neumorphic_objects/object_builder/objects/neumorphic_image.dart';
import 'package:flutter/material.dart';

class MusicImage extends StatelessWidget {
  MusicImage({this.topPadding = 0});
  final double? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Column(
        children: [
          NeumorphicImage(),
        ],
      ),
    );
  }
}
