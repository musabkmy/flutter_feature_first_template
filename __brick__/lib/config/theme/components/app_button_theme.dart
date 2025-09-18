part of 'components.dart';

IconButtonThemeData buildIconButtonThemeData(AppColors appColors) =>
    IconButtonThemeData(
      style: IconButton.styleFrom(
        // backgroundColor: appColors.onPrimary,
        foregroundColor: appColors.onPrimary,
      ),
    );

ElevatedButtonThemeData buildElevatedButtonThemeData(AppColors appColors) =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: appColors.primary,
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.sl),
        shape: RoundedRectangleBorder(
          borderRadius: AppBorderRadius.borderRadiusML,
        ),
      ),
    );

OutlinedButtonThemeData buildOutlinedButtonTheme(AppColors appColors) =>
    OutlinedButtonThemeData();
