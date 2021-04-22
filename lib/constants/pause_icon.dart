import 'package:flutter/material.dart';

class PauseIcon extends StatelessWidget {
  const PauseIcon();

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.pause_rounded,
      color: Color(0xffFFFFFF).withOpacity(1.0),
      size: 25.0,
    );
  }
}
