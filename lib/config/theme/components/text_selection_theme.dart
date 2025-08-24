part of './components.dart';

TextSelectionThemeData buildTextSelectionTheme(AppColors appColors) =>
    TextSelectionThemeData(
      cursorColor: appColors.primary,
      selectionColor: appColors.primary.withAlpha(150),
      selectionHandleColor: appColors.secondary,
    );
