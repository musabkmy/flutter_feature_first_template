import '../../l10n/app_localizations.dart';

final class AppErrorWrapper {
  static String map(String code, AppLocalizations appLocalizations) {
    switch (code) {
      case 'something went wrong':
        //TODO: your implementation:
        //return appLocalizations.something_went_wrong;
        return '';
      default:
        return '';
    }
  }

  const AppErrorWrapper._();
}
