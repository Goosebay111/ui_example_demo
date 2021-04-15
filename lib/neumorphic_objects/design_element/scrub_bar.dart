import 'package:bmad_ui_example/neumorphic_scrubber/music_scrubber.dart';
import 'package:bmad_ui_example/neumorphic_scrubber/scrubber_thumb.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrubBar extends StatelessWidget {
  ScrubBar({this.topPadding = 0});
  final double? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Container(
        height: 40.0,
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(width: 30.0),
                Text(
                  '1:17',
                  style: GoogleFonts.prompt(
                      fontSize: 10.5,
                      color: Color(0xff77787B),
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Text(
                  '2:46',
                  style: GoogleFonts.prompt(
                      fontSize: 10.5,
                      color: Color(0xff77787B),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 30),
              ],
            ),
            Positioned(
              top: 20,
              child: MusicScrubber(),
            ),
            Positioned(
              left: 170,
              top: 6,
              child: MusicThumb(),
            ),
          ],
        ),
      ),
    );
  }
}
