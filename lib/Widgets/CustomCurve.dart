import 'package:flutter/animation.dart';

class CustomCurveRectTween extends RectTween {
  CustomCurveRectTween({Rect? begin, Rect? end})
      : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    // Apni custom curve use karo (easeInOut, bounce, etc.)
    final curvedT = Curves.easeInOut.transform(t);

    return Rect.lerp(begin, end, curvedT)!;
  }
}