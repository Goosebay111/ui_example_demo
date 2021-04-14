// https://stackoverflow.com/questions/56928862/flutter-rounded-rectangle-border-with-different-colours-for-each-side/56935434#56935434
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector;

//paint the 4 borders different colors, with changeable angle highlights at the corners.

class EdgePainter extends CustomPainter {
  final Color? leftBorderColor;
  final Color? rightBorderColor;
  final Color? bottomBorderColor;
  final Color? topBorderColor;
  final double? borderWidth;
  final StrokeCap strokeCap = StrokeCap.round;
  double? radius;

  late Size size;

  EdgePainter({
    this.leftBorderColor,
    this.rightBorderColor,
    this.topBorderColor,
    this.bottomBorderColor,
    this.borderWidth,
    this.radius,
  }) {
    if (radius! <= 1) this.radius = 1;
  }

  @override
  void paint(Canvas canvas, Size size) {
    radius = size.shortestSide / 2 < radius! ? size.shortestSide / 2 : radius;
    this.size = size;
    Paint topPaint = Paint()
      ..color = topBorderColor!
      ..strokeWidth = borderWidth!
      ..strokeCap = strokeCap
      ..style = PaintingStyle.stroke;
    Paint rightPaint = Paint()
      ..color = rightBorderColor!
      ..strokeCap = strokeCap
      ..strokeWidth = borderWidth!
      ..style = PaintingStyle.stroke;
    Paint bottomPaint = Paint()
      ..color = bottomBorderColor!
      ..strokeCap = strokeCap
      ..strokeWidth = borderWidth!
      ..style = PaintingStyle.stroke;
    Paint leftPaint = Paint()
      ..strokeCap = strokeCap
      ..color = leftBorderColor!
      ..strokeWidth = borderWidth!
      ..style = PaintingStyle.stroke;

    canvas.drawPath(getPath1(), topPaint);
    canvas.drawPath(getPath2(), rightPaint);
    canvas.drawPath(getPath3(), bottomPaint);
    canvas.drawPath(getPath4(), leftPaint);
  }

  Path getPath1() {
    return Path()
      ..addPath(getTopLeftPath2(), Offset(0, 0))
      ..addPath(getTopPath(), Offset(0, 0))
      ..addPath(getTopRightPath1(), Offset(0, 0));
  }

  Path getPath2() {
    return Path()
      ..addPath(getTopRightPath2(), Offset(0, 0))
      ..addPath(getRightPath(), Offset(0, 0))
      ..addPath(getBottomRightPath1(), Offset(0, 0));
  }

  Path getPath3() {
    return Path()
      ..addPath(getBottomRightPath2(), Offset(0, 0))
      ..addPath(getBottomPath(), Offset(0, 0))
      ..addPath(getBottomLeftPath1(), Offset(0, 0));
  }

  Path getPath4() {
    return Path()
      ..addPath(getBottomLeftPath2(), Offset(0, 0))
      ..addPath(getLeftPath(), Offset(0, 0))
      ..addPath(getTopLeftPath1(), Offset(0, 0));
  }

  Path getTopPath() {
    return Path()
      ..moveTo(0 + radius!, 0)
      ..lineTo(size.width - radius!, 0);
  }

  Path getRightPath() {
    return Path()
      ..moveTo(size.width, 0 + radius!)
      ..lineTo(size.width, size.height - radius!);
  }

  Path getBottomPath() {
    return Path()
      ..moveTo(size.width - radius!, size.height)
      ..lineTo(0 + radius!, size.height);
  }

  Path getLeftPath() {
    return Path()
      ..moveTo(0, size.height - radius!)
      ..lineTo(0, 0 + radius!);
  }

  Path getTopRightPath1() {
    return Path()
      ..addArc(
        Rect.fromLTWH(size.width - (radius! * 2), 0, radius! * 2, radius! * 2),
        vector.radians(-45),
        vector.radians(-45),
      );
  }

  Path getTopRightPath2() {
    return Path()
      ..addArc(
        Rect.fromLTWH(size.width - (radius! * 2), 0, radius! * 2, radius! * 2),
        vector.radians(0),
        vector.radians(-45),
      );
  }

  Path getBottomRightPath1() {
    return Path()
      ..addArc(
        Rect.fromLTWH(size.width - (radius! * 2), size.height - (radius! * 2),
            radius! * 2, radius! * 2),
        vector.radians(45),
        vector.radians(-45),
      );
  }

  Path getBottomRightPath2() {
    return Path()
      ..addArc(
        Rect.fromLTWH(size.width - (radius! * 2), size.height - (radius! * 2),
            radius! * 2, radius! * 2),
        vector.radians(90),
        vector.radians(-45),
      );
  }

  Path getBottomLeftPath1() {
    return Path()
      ..addArc(
        Rect.fromLTWH(0, size.height - (radius! * 2), radius! * 2, radius! * 2),
        vector.radians(135),
        vector.radians(-45),
      );
  }

  Path getBottomLeftPath2() {
    return Path()
      ..addArc(
        Rect.fromLTWH(0, size.height - (radius! * 2), radius! * 2, radius! * 2),
        vector.radians(180),
        vector.radians(-45),
      );
  }

  Path getTopLeftPath1() {
    return Path()
      ..addArc(
        Rect.fromLTWH(0, 0, radius! * 2, radius! * 2),
        vector.radians(250),
        vector.radians(-45),
      );
  }

  Path getTopLeftPath2() {
    return Path()
      ..addArc(
        Rect.fromLTWH(0, 0, radius! * 2, radius! * 2),
        vector.radians(270),
        vector.radians(-45),
      );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
