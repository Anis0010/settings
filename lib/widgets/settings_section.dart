import 'dart:ui';
import 'package:book_store/widgets/settings_tile.dart';
import 'package:flutter/cupertino.dart';


class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingsTile> tiles;

  SettingsSection({required this.title, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF17212C),
            ),
          ),
          ...tiles,
        ],
      ),
    );
  }
}