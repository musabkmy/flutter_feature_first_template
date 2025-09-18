import 'package:flutter/material.dart'
    show OutlineInputBorder, Color, BorderStyle, BorderSide;

import 'app_border_radius.dart';

final class AppOutlineInputBorder {
  const AppOutlineInputBorder._();

  static OutlineInputBorder outlineInputBorderXS({
    required Color color,
    double? gapPadding,
  }) => OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 1.0, style: BorderStyle.solid),
    borderRadius: AppBorderRadius.borderRadiusM,
    gapPadding: gapPadding ?? 4.0,
  );

  static OutlineInputBorder outlineInputBorderM({required Color color}) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: AppBorderRadius.borderRadiusM,
        gapPadding: 4.0,
      );
}
