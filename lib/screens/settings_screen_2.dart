import 'package:book_store/screens/pro_screen.dart';
import 'package:book_store/widgets/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../generated/l10n.dart';
import '../widgets/settings_section.dart';
import '../widgets/settings_tile.dart';
import '../providers/themes_provider.dart';
import '../providers/language_provider.dart';

class SettingsScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemesProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);


    final localizations = S.of(context);

    return Scaffold(
      backgroundColor: themeProvider.isDarkMode ? Colors.black : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                localizations.settings,
                style: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                  color: themeProvider.isDarkMode ? Colors.white : Color(0xFFF2D9BB),
                ),
              ),
            ),
            SizedBox(height: 35.0),
            Container(
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode ? Colors.grey[800] : Colors.grey[200],
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsSection(
                    title: localizations.general,
                    tiles: [
                      SettingsTile(
                        title: localizations.profile,
                        icon: Icons.person_outline,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.0),
            Container(
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode ? Colors.grey[800] : Colors.grey[200],
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsSection(
                    title: localizations.settings,
                    tiles: [
                      SettingsTile(
                        title: localizations.language,
                        icon: Icons.language_outlined,
                        onTap: () {

                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(localizations.select_language , style: TextStyle(color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C),),),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(localizations.english),
                                      onTap: () {
                                        languageProvider.setLocale(Locale('en'));
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(localizations.arabic),
                                      onTap: () {
                                        languageProvider.setLocale(Locale('ar'));
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      SettingsTile(
                        title: localizations.dark_mode,
                        icon: Icons.nightlight_round_outlined,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SwitchWidget()),
                          );
                        },
                      ),
                      SettingsTile(
                        title: localizations.logout,
                        icon: Icons.logout,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
