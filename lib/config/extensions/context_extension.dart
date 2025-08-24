import 'package:flutter/material.dart';
import 'package:flutter_feature_first_template/core/styles/app_breakpoint.dart';

import 'package:flutter_feature_first_template/core/styles/app_colors.dart';
import 'package:flutter_feature_first_template/core/styles/app_text_colors.dart';
import 'package:flutter_feature_first_template/core/styles/app_text_styles.dart';

enum DeviceType { mobile, tablet, desktop }

extension ContextEx on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  bool get isDesktop => screenWidth >= AppBreakpoints.desktopMinWidth;
  bool get isTablet =>
      screenWidth <= AppBreakpoints.largeTabletMaxWidth &&
      screenWidth >= AppBreakpoints.smallTabletMinWidth;
  bool get isMobile =>
      screenWidth <= AppBreakpoints.mobileMaxWidth &&
      screenWidth >= AppBreakpoints.mobileMinWidth;
  bool get isTabletOrDesktop => isDesktop || isTablet;

  ThemeData get theme => Theme.of(this);
  AppColors get appColors => theme.extension<AppColors>()!;
  AppTextColors get appTextColors => theme.extension<AppTextColors>()!;
  AppTextStyles get textStyles => theme.extension<AppTextStyles>()!;
}
