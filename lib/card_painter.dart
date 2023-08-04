import 'package:flutter/material.dart';

class CustomCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
      Path()
        ..moveTo(0, 0)
        ..lineTo(0, size.height * 0.32)
        ..quadraticBezierTo(size.width * 0.24, size.height * 0.45,
            size.width * 0.49, size.height * 0.45)
        ..quadraticBezierTo(size.width * 0.73, size.height * 0.45, size.width,
            size.height * 0.32)
        ..lineTo(size.width, 0)
        ..close(),
      Paint()
        ..color = Colors.black
        ..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
