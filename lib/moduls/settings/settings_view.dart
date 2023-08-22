import 'package:flutter/material.dart';
import 'package:islami_app/moduls/settings/widgets/language_bottom_sheet_settings.dart';
import 'package:islami_app/moduls/settings/widgets/theme_bottom_sheet_settings.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Language",
              textAlign: TextAlign.start,
              style: theme.textTheme.bodyLarge,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: theme.canvasColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.CurrentLanguage == "ar" ? "عربي" : "English",
                      style: theme.textTheme.bodyMedium,
                    ),
                    Icon(Icons.arrow_drop_down_sharp, color: theme.canvasColor),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Theme",
              textAlign: TextAlign.start,
              style: theme.textTheme.bodyLarge,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: theme.canvasColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.isDark() ? "Dark" : "Light",
                      style: theme.textTheme.bodyMedium,
                    ),
                    Icon(Icons.arrow_drop_down_sharp, color: theme.canvasColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => languageBottomSheetSettings(),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => themeBottonSheetSettings(),
    );
  }
}

