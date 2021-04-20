import 'package:flutter/material.dart';
import 'neumorphic_objects/design_elements/music_app_bar.dart';
import 'neumorphic_objects/design_elements/music_details.dart';
import 'neumorphic_objects/design_elements/music_fab.dart';
import 'neumorphic_objects/design_elements/music_image.dart';
import 'neumorphic_objects/design_elements/scrub_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MusicPlayer(),
      ),
    );
  }
}

class MusicPlayer extends StatelessWidget {
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
          MusicAppBar(topPadding: 30.0),
          MusicImage(topPadding: 30.0),
          MusicDetails(topPadding: 30.0),
          ScrubBar(topPadding: 40.0),
          MusicFloatingActionButton(topPadding: 80.0),
        ],
      ),
    );
  }
}
