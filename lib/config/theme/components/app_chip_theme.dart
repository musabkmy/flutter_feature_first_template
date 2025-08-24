part of './components.dart';

ChipThemeData buildChipThemeData(AppColors appColors) => ChipThemeData(
  showCheckmark: false,
  // color: WidgetStateProperty.all(appColors.transparent),
  // selectedColor: appColors.secondary.withAlpha(150),
  selectedColor: appColors.primary.withAlpha(8),
  selectedShadowColor: appColors.transparent,
  disabledColor: appColors.transparent,
  surfaceTintColor: appColors.transparent,
  backgroundColor: appColors.transparent,
  checkmarkColor: appColors.transparent,
  shadowColor: appColors.transparent,
  shape: RoundedRectangleBorder(
    side: BorderSide(color: appColors.darkOverlay, width: 1.0),
    borderRadius: AppBorderRadius.borderRadiusXS,
  ),
);
