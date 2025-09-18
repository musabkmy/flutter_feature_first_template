//TODO: initialize app localization and replace - return '' - with the correct name

import '../../l10n/app_localizations.dart';

final class TextFormValidations {
  static String? phoneNumber(AppLocalizations appLocalizations, String? value) {
    // var logger = Logger(printer: PrettyPrinter());
    // logger.d('validating: $value');
    if (value == null || value.isEmpty) {
      return '';
    }
    final regex = RegExp(r'^\+?[0-9]{9,14}$');
    if (!regex.hasMatch(value)) {
      return '';
    }
    return null;
  }

  static bool validPhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    final regex = RegExp(r'^\+?[0-9]{9,14}$');
    if (!regex.hasMatch(value)) {
      return false;
    }
    return true;
  }

  static String? url(AppLocalizations appLocalizations, String? value) {
    if (value != null) {
      final emailRegex = RegExp(
        r'^(?!\-)([a-zA-Z0-9\-]{1,63}(?<!\-)\.)+[a-zA-Z]{2,}$',
      );
      if (emailRegex.hasMatch(value)) {
        return null;
      }
    }
    return '';
  }

  static String? name(AppLocalizations appLocalizations, String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    if (value.length < 2 || value.length > 24) {
      return '';
    }
    return null;
  }

  static String? emailAddress(
    AppLocalizations appLocalizations,
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return '';
    }
    final regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!regex.hasMatch(value)) {
      return '';
    }
    return null;
  }

  static String? paragraph(AppLocalizations appLocalizations, String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    if (value.length < 5 || value.length > 100) {
      return '';
    }
    return null;
  }
}
