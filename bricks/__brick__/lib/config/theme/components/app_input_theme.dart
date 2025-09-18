part of 'components.dart';

InputDecorationTheme buildInputDecorationTheme(AppColors appColors) {
  final inputBorder = OutlineInputBorder(
    borderRadius: AppBorderRadius.borderRadiusXS,
    borderSide: BorderSide.none,
  );
  final enabledBorder = AppOutlineInputBorder.outlineInputBorderXS(
    color: appColors.mediumOverlay,
  );
  final focusedBorder = AppOutlineInputBorder.outlineInputBorderXS(
    color: appColors.darkOverlay,
  );
  final disabledBorder = AppOutlineInputBorder.outlineInputBorderXS(
    color: appColors.lightOverlay,
  );
  final errorBorder = AppOutlineInputBorder.outlineInputBorderXS(
    color: appColors.error,
  );
  final focusedErrorBorder = AppOutlineInputBorder.outlineInputBorderXS(
    color: appColors.errorOnFocused,
  );

  return InputDecorationTheme(
    fillColor: appColors.background,
    border: inputBorder,
    enabledBorder: enabledBorder,
    focusedBorder: focusedBorder,
    disabledBorder: disabledBorder,
    errorBorder: errorBorder,
    focusedErrorBorder: focusedErrorBorder,
    errorMaxLines: 4,
  );
}
