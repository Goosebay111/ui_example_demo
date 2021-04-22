import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon();

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.menu_rounded,
      color: Color(0xff818487).withOpacity(1.0),
      size: 19.0,
    );
  }
}
