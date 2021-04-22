import 'package:flutter/material.dart';

class RewindIcon extends StatelessWidget {
  const RewindIcon();

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.fast_rewind_rounded,
      color: Color(0xff85878A).withOpacity(1.0),
      size: 28.0,
    );
  }
}
