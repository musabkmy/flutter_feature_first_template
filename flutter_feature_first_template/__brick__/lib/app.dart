import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/theme/app_theme.dart';
import 'constants/app_constants.dart';
import 'features/splash/ui/splash_screen.dart';
import 'l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: AppTheme.light,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: AppLocalizations.supportedLocales.first,
      supportedLocales: const [Locale('ar'), Locale('en')],
      home: SplashScreen(),
    );
  }
}
