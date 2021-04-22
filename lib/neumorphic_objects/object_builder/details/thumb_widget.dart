import 'package:flutter/material.dart';

class ThumbFeature extends StatelessWidget {
  const ThumbFeature({required this.size});

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
