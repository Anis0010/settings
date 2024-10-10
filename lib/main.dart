import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_store/screens/settings_screen_2.dart';
import 'package:book_store/providers/themes_provider.dart';
import 'package:book_store/providers/language_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemesProvider()),
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Consumer<ThemesProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Book Store',
          theme: themeProvider.currentTheme,
          locale: languageProvider.locale,
          debugShowCheckedModeBanner: false,

          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],

          home: SettingsScreen2(),
        );
      },
    );
  }
}
