import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Color,
        BuildContext,
        Widget,
        BoxConstraints,
        Size,
        CircularProgressIndicator,
        Center;
import 'package:flutter_feature_first_template/config/extensions/context_extension.dart';

class AppLoadingLayout extends StatelessWidget {
  const AppLoadingLayout({super.key, this.value, this.color});
  final double? value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? context.theme.secondaryHeaderColor,
        value: value,
        constraints: BoxConstraints.tight(Size(24, 24)),
      ),
    );
  }
}
