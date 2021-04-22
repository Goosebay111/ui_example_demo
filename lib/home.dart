import 'package:flutter/material.dart';

import 'constants/background_gradient.dart';
import 'ui_arrangements/music_app_bar.dart';
import 'ui_arrangements/music_details.dart';
import 'ui_arrangements/music_fab.dart';
import 'ui_arrangements/music_image.dart';
import 'ui_arrangements/scrub_bar.dart';

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: LinearBackGround().boxDecoration,
      child: Column(
        children: <Widget>[
          MusicAppBar(topPadding: 35.0),
          MusicImage(topPadding: 35.0),
          MusicDetails(topPadding: 30.0),
          ScrubBar(topPadding: 45.0),
          MusicFloatingActionButton(topPadding: 75.0),
        ],
      ),
    );
  }
}
