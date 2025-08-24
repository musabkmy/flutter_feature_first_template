import 'package:flutter/material.dart'
    show
        ThemeExtension,
        TextStyle,
        immutable,
        FontWeight,
        Colors,
        TextDecoration;

import 'app_text_colors.dart';

//may need to add a responsive size

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final AppTextColors appTextColors;

  const AppTextStyles(this.appTextColors);

  TextStyle get headingHuge => TextStyle(
    fontSize: 64.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textHeading,
  );

  TextStyle get headingExtraLarge => TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get headingLarge => TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get headingMedium => TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get headingSmall => TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textPrimary,
  );

  TextStyle get displayLarge => TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get displayMedium => TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get displaySmallMedium => TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get displaySmall => TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w700,
    color: appTextColors.textSecondary,
  );

  TextStyle get bodyHuge => TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w400,
    color: appTextColors.textSecondary,
  );

  TextStyle get bodyLarge => TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: appTextColors.textSecondary,
  );

  TextStyle get bodyMedium => TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: appTextColors.textSecondary,
  );

  TextStyle get bodySmall => TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: appTextColors.textSecondary,
  );

  TextStyle get caption => TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
    color: Colors.grey,
  );

  TextStyle get confirmActionLabel => TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: appTextColors.textActionPrimary,
  );

  TextStyle get navLabel => TextStyle(
    fontSize: 20.0,
    color: appTextColors.textSecondary,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline,
  );

  @override
  AppTextStyles copyWith({AppTextColors? appTextColors}) {
    return AppTextStyles(appTextColors ?? this.appTextColors);
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;

    return AppTextStyles(
      AppTextColors.lerpColors(appTextColors, other.appTextColors, t),
    );
  }
}
