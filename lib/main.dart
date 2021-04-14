import 'package:bmad_ui_example/neumorphic_objects/fast_forward_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/music_image.dart';
import 'package:bmad_ui_example/neumorphic_objects/menu_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/history_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/pause_play_button.dart';
import 'package:bmad_ui_example/neumorphic_objects/rewind_button.dart';
import 'package:bmad_ui_example/neumorphic_scrubber/music_scrubber.dart';
import 'package:bmad_ui_example/neumorphic_scrubber/scrubber_thumb.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            //Color(0xff47494B),
            Color(0xFF393D41),
            Color(0xFF393D41),
            Color(0xFF32353A),
            Color(0xFF2D303A),
            Color(0xFF282B2D),
            Color(0xFF25292F),
            Color(0xFF23252B),
            Color(0xff1E2022),
            Color(0xff1A1B22),
            Color(0xff1A1B22),
            Color(0xff1A1B22),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          MusicAppBar(),
          SizedBox(height: 40),
          MusicImage(),
          SizedBox(height: 40),
          MusicDetails(),
          SizedBox(height: 40.0),
          ScrubBar(),
          SizedBox(height: 80.0),
          MusicFloatingActionButton(),
        ],
      ),
    );
  }
}

class MusicDetails extends StatelessWidget {
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

class ScrubBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(width: 30),
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
    );
  }
}

class MusicFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30),
        RewindButton(),
        Spacer(),
        PlayButton(),
        Spacer(),
        ForwardButton(),
        SizedBox(width: 30),
      ],
    );
  }
}

class MusicAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30),
        HistoryButton(),
        Spacer(),
        PlayStatus(),
        Spacer(),
        MenuButton(),
        SizedBox(width: 35.0),
      ],
    );
  }
}

class PlayStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'PLAYING NOW',
      style: GoogleFonts.prompt(
        fontSize: 12,
        color: Color(0xff818487),
        fontWeight: FontWeight.w600,
        letterSpacing: 0.9,
      ),
    );
  }
}
