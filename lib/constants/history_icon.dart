import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryIcon extends StatelessWidget {
  const HistoryIcon();

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.arrowLeft,
      color: Color(0xff818487).withOpacity(1.0),
      size: 13.0,
    );
  }
}
