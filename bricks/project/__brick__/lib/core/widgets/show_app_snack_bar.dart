import 'package:flutter/material.dart';

import '../../config/extensions/context_extension.dart';
import '../styles/app_border_radius.dart';
import '../styles/app_spacing.dart';

void showAppSnackbar(
  BuildContext context,
  String message, [
  int? durationInSeconds,
]) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: AppSpacing.md,
      // left: AppSpacing.minHorizontal,
      right: AppSpacing.md,
      width: context.screenWidth * .25,
      child: Material(
        elevation: 8,
        borderRadius: AppBorderRadius.borderRadiusM,
        color: context.theme.snackBarTheme.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sl,
          ),
          child: Text(message, style: context.textStyles.displayMedium),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  Future.delayed(Duration(seconds: durationInSeconds ?? 2), () {
    overlayEntry.remove();
  });
}
