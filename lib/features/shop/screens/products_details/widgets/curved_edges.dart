import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dx, lastCurve.dx, lastCurve.dx);

    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dx,
        secondLastCurve.dx, secondLastCurve.dx);

    final thirdFirstCurve = Offset(0, size.height - 20);
    final thirdLastCurve = Offset(30, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dx,
        thirdLastCurve.dx, thirdLastCurve.dx);

    path.lineTo(size.width, 0);
    getClip(size);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
