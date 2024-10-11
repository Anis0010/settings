import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/themes_provider.dart';
import '../providers/language_provider.dart';
import '../generated/l10n.dart';

class ProScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemesProvider>(context);

    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        final localizations = S.of(context);

        return Scaffold(
          backgroundColor: themeProvider.isDarkMode ? Colors.black : Colors.white,
          appBar: AppBar(
            backgroundColor: themeProvider.isDarkMode ? Colors.black : Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Youssef Ahmed Ibrahim Anis',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C),
                    ),
                  ),
                  SizedBox(height: 10),
                  // User Email
                  Text(
                    'youssef@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85, // Set width to 85% of screen width
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: themeProvider.isDarkMode ? Colors.grey[800] : Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${localizations.language}: ${languageProvider.locale.languageCode.toUpperCase()}',
                            style: TextStyle(
                              fontSize: 16,
                              color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '${localizations.profile}: Youssef Ahmed',
                            style: TextStyle(
                              fontSize: 16,
                              color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '${localizations.phone_number}: 00000000000',
                            style: TextStyle(
                              fontSize: 16,
                              color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '${localizations.date_of_birth}: 28/9/2002',
                            style: TextStyle(
                              fontSize: 16,
                              color: themeProvider.isDarkMode ? Colors.white : Color(0xFF17212C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
