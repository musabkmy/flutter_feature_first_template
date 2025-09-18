import 'package:flutter/material.dart' show Border, Color;

final class AppBorder {
  const AppBorder._();

  /// width 0.5
  static Border borderBoxXXS({required Color color}) =>
      Border.all(color: color, width: 0.5);
}
