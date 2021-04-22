import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    Color(0xFF57B6E5),
    Color.fromRGBO(130, 87, 229, 0.695),
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));

  static final linearRedBlackBluegray = LinearGradient(
      colors: [
        Color(0xFFC44444),
        Color(0xFF415CB8)],
      stops: [0, 0.8],
      transform: GradientRotation(2.13959913 * pi));
}
