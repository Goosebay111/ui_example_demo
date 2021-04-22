import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongInfo extends StatelessWidget {
  const SongInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Low Life',
          style: GoogleFonts.prompt(
              letterSpacing: 1.0,
              fontSize: 30.0,
              color: Color(0xffA7A8AB),
              fontWeight: FontWeight.w400),
        ),
        Text(
          'Future ft. The Weeknd',
          style: GoogleFonts.prompt(
              fontSize: 14.5,
              color: Color(0xff727477),
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
