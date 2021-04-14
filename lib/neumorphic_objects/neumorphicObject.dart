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
    var size = effect.size;

    return Container(
      width: size,
      height: size,
      child: Stack(
        children: <Widget>[
          Center(child: child),
          (image == null)
              ? Center(
                  //inner circle widget.
                  child: Container(
                    width: size / 3,
                    height: size / 3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        //is a thumb
                        isThumb == true
                            ? Color(0xff896B28)
                            : Colors.transparent,
                        isThumb == true ? Color(0xffB19E3C) : Colors.transparent
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(25.0 / 6.0),
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: size / 2,
                  backgroundImage: AssetImage(image!), //AssetImage(img),
                ),
        ],
      ),
      decoration: effect.getDecoration(),
    );
  }
}
