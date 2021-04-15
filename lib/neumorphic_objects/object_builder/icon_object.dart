import 'package:flutter/material.dart';

class IconObject extends StatelessWidget {
  const IconObject({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(child: child);
  }
}
