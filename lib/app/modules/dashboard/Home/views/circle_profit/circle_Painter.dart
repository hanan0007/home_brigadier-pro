import 'package:flutter/material.dart';
import 'dart:math' as math;

class OpenPainter extends CustomPainter {
  final learned;
  final notLearned;
  final range;
  final totalQuestions;
  double pi = math.pi;

  OpenPainter({this.learned, this.totalQuestions, this.notLearned, this.range});
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 7;
    Rect myRect = const Offset(-100.0, -100.0) & const Size(200.0, 200.0);

    var paint1 = Paint()
      ..color = Colors.red
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint2 = Paint()
      ..color = Colors.green
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint3 = Paint()
      ..color = Colors.yellow
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double firstLineRadianStart = 0;
    double _unAnswered =
        (totalQuestions - notLearned - learned) * range / totalQuestions;
    double firstLineRadianEnd = (360 * _unAnswered) * math.pi / 180;
    canvas.drawArc(
        myRect, firstLineRadianStart, firstLineRadianEnd, false, paint1);

    double _learned = (learned) * range / totalQuestions;
    double secondLineRadianEnd = getRadians(_learned);
    canvas.drawArc(
        myRect, firstLineRadianEnd, secondLineRadianEnd, false, paint2);
    double _notLearned = (notLearned) * range / totalQuestions;
    double thirdLineRadianEnd = getRadians(_notLearned);
    canvas.drawArc(myRect, firstLineRadianEnd + secondLineRadianEnd,
        thirdLineRadianEnd, false, paint3);

    // drawArc(Rect rect, double startAngle, double sweepAngle, bool useCenter, Paint paint)
  }

  double getRadians(double value) {
    return (360 * value) * pi / 180;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
