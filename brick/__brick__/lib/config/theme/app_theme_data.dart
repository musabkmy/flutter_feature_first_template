import 'package:flutter/material.dart' show NoSplash, ThemeData, ThemeExtension;
import '../../core/styles/app_colors.dart';
import '../../core/styles/app_text_colors.dart';
import '../../core/styles/app_text_styles.dart';
import 'components/components.dart';

ThemeData buildLightTheme() {
  final appColors = AppColors.light;

  return ThemeData(
    //TODO:configure font family in pubspec.yaml
    fontFamily: '--',
    primaryColor: appColors.primary,
    scaffoldBackgroundColor: appColors.background,
    splashFactory: NoSplash.splashFactory,
    appBarTheme: buildAppBarTheme(appColors),
    chipTheme: buildChipThemeData(appColors),
    inputDecorationTheme: buildInputDecorationTheme(appColors),
    elevatedButtonTheme: buildElevatedButtonThemeData(appColors),
    iconTheme: buildIconThemeData(appColors),
    iconButtonTheme: buildIconButtonThemeData(appColors),
    outlinedButtonTheme: buildOutlinedButtonTheme(appColors),
    snackBarTheme: buildSnackBarThemeData(appColors),
    dialogTheme: buildDialogThemeData(appColors),
    extensions: <ThemeExtension<dynamic>>[
      AppColors.light,
      AppTextColors.light,
      AppTextStyles(AppTextColors.light),
    ],
  );
}
