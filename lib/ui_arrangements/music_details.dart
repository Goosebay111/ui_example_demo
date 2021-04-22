import 'package:bmad_ui_example/constants/song_info.dart';
import 'package:flutter/material.dart';

class MusicDetails extends StatelessWidget {
  MusicDetails({this.topPadding = 0});
  final double? topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: SongInfo(),
    );
  }
}
