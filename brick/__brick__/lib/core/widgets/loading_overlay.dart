import 'package:flutter/material.dart';
import '../../config/extensions/context_extension.dart';
import 'app_loading_layout.dart';

///Global loading overlay that is sit above all widget tree
///Show loading overlay [LoadingOverlay.show]
///Hide loading overlay [LoadingOverlay.hide]

final class LoadingOverlay {
  static OverlayEntry? _overlayEntry;

  static void show(BuildContext context) {
    try {
      if (_overlayEntry != null) {
        // _logger.d('Loading overlay already visible');
        return;
      }

      _overlayEntry = OverlayEntry(
        builder: (context) => _buildOverlayContent(context),
      );

      Overlay.of(context).insert(_overlayEntry!);
      // _logger.d('Loading overlay shown');
    } catch (e) {
      rethrow;
    }
  }

  static void hide() {
    try {
      if (_overlayEntry != null) {
        _overlayEntry!.remove();
        _overlayEntry = null;
        // _logger.d('Loading overlay hidden');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Widget _buildOverlayContent(BuildContext context) {
    return Stack(
      children: [
        ModalBarrier(
          color: context.theme.shadowColor.withAlpha(120),
          dismissible: false,
        ),
        Center(child: AppLoadingLayout()),
      ],
    );
  }

  const LoadingOverlay._();
}
