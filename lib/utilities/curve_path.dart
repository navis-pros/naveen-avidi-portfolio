import 'package:flutter/material.dart';

class CurvePath extends CustomClipper<Path> {
  Path path = Path();

  @override
  Path getClip(Size size) {
    ///Begin
    path.moveTo(0, 0);

    ///Top line
    path.lineTo(size.width, 0);

    /// Right line
    path.lineTo(size.width, size.height * .07);

    ///Right side Curve
    path.conicTo(size.width * .8, size.height * .03, size.width * .5,
        size.height * .12, 1);

    ///Left side Curve
    path.conicTo(size.width * .18, size.height * .2, 0, size.height * .18, 1);

    return path;
  }

  @override
  bool shouldReclip(covariant CurvePath oldClipper) => true;
}
