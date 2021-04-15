import 'package:flutter/material.dart';
import 'neumorphic_objects/design_element/music_app_bar.dart';
import 'neumorphic_objects/design_element/music_details.dart';
import 'neumorphic_objects/design_element/music_fab.dart';
import 'neumorphic_objects/design_element/scrub_bar.dart';
import 'neumorphic_objects/object/music_image.dart';

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
          SizedBox(height: 40.0),
          MusicImage(),
          SizedBox(height: 40.0),
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
