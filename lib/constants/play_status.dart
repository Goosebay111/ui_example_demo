import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayStatus extends StatelessWidget {
  const PlayStatus();
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
