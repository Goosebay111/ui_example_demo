import 'package:flutter/material.dart';

class IconElement extends StatelessWidget {
  const IconElement({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(child: child);
  }
}
