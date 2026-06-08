import 'dart:math' as math;

class BearingSmoother {
  /// Smoothly rotates bearing from current to target angle avoiding full 360 spin.
  static double smoothBearing(double current, double target, double factor) {
    double diff = (target - current + 180) % 360 - 180;
    return (current + diff * factor.clamp(0.0, 1.0) + 360) % 360;
  }
}
