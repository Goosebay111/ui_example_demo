import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicDetails extends StatelessWidget {
  MusicDetails({this.topPadding = 0});
  final double? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Column(
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
      ),
    );
  }
}
