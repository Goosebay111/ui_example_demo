import 'package:bmad_ui_example/neumorphic_scrubber/edge_highlighting.dart';
import 'package:flutter/material.dart';

class MusicScrubber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var left = 30.0;
    var right = 210.0;
    return Stack(
      children: [
        OutsideScrubberPart(left: left),
        InsideScrubberPart(left: left, right: right),
      ],
    );
  }
}

class OutsideScrubberPart extends StatelessWidget {
  const OutsideScrubberPart({
    Key? key,
    required this.left,
  }) : super(key: key);

  final double left;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333,
      height: 5.5,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: CustomPaint(
        painter: EdgePainter(
          radius: 5,
          borderWidth: 2,
          bottomBorderColor: Color(0xff434547),
          leftBorderColor: Color(0xff080A0A),
          rightBorderColor: Color(0xff2B3136),
          topBorderColor: Color(0xff000000),
        ),
      ),
      margin: EdgeInsets.only(left: left),
    );
  }
}

class InsideScrubberPart extends StatelessWidget {
  const InsideScrubberPart({
    Key? key,
    required this.left,
    required this.right,
  }) : super(key: key);

  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 160,
        height: 5,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffD11302),
            Color(0xffCA772A),
            Color(0xffE9A919),
            Color(0xffD1AC3F),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      margin: EdgeInsets.only(
          left: left + 2.0, top: 0.0, right: right, bottom: 2.5),
    );
  }
}
