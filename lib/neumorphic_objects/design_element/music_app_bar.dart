import 'package:bmad_ui_example/neumorphic_objects/object/history_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/object/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicAppBar extends StatelessWidget {
  MusicAppBar({this.topPadding = 0});
  final double? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Row(
        children: [
          SizedBox(width: 30.0),
          HistoryButton(),
          Spacer(),
          PlayStatus(),
          Spacer(),
          MenuButton(),
          SizedBox(width: 35.0),
        ],
      ),
    );
  }
}

class PlayStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'PLAYING NOW',
      style: GoogleFonts.prompt(
        fontSize: 12.0,
        color: Color(0xff818487),
        fontWeight: FontWeight.w600,
        letterSpacing: 0.9,
      ),
    );
  }
}
