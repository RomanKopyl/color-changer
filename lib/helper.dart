import 'dart:math' as math;

import 'package:color_changer/constants.dart';

/// helpers
int getRandomColor() {
  return (math.Random().nextDouble() * colorMask).toInt();
}
