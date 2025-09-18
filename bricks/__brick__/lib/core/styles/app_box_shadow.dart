import 'package:flutter/material.dart' show BoxShadow, Offset, Color;

final class AppBoxShadow {
  const AppBoxShadow._();

  static BoxShadow boxPrimaryShadow({required Color color}) => BoxShadow(
    color: color,
    blurRadius: 12,
    spreadRadius: 0,
    offset: Offset(0, 4),
  );
}
