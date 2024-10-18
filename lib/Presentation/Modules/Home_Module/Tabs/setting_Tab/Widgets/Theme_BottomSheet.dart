import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Providers/LanguageProvider.dart';
import 'package:quran_app/Providers/ThemeProvider.dart';

class ThemeBottomsheet extends StatefulWidget {
  const ThemeBottomsheet({super.key});

  @override
  State<ThemeBottomsheet> createState() => _ThemeBottomsheetState();
}

class _ThemeBottomsheetState extends State<ThemeBottomsheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                themeProvider.changeAppTheme(ThemeMode.light);
              },
              child: themeProvider.currentTheme == ThemeMode.light
                  ? buildSelectedItemThemeWidget(
                      AppLocalizations.of(context)!.light)
                  : buildUnSelectedItemThemeWidget(
                      AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                themeProvider.changeAppTheme(ThemeMode.dark);
              },
              child: themeProvider.currentTheme == ThemeMode.dark
                  ? buildSelectedItemThemeWidget(
                      AppLocalizations.of(context)!.dark)
                  : buildUnSelectedItemThemeWidget(
                      AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedTheme) {
    return Row(
      children: [
        Text(selectedTheme, style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(
          Icons.check,
        )
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unselectedTheme) {
    return Row(
      children: [
        Text(unselectedTheme,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
      ],
    );
  }
}
