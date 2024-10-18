import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Providers/LanguageProvider.dart';

class LanguageBottomsheet extends StatefulWidget {
  const LanguageBottomsheet({super.key});

  @override
  State<LanguageBottomsheet> createState() => _LanguageBottomsheetState();
}

class _LanguageBottomsheetState extends State<LanguageBottomsheet> {
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                languageProvider.changeAppLanguage('en');
              },
              child: languageProvider.currenLanguage == 'en'
                  ? buildSelectedItemLangWidget('English')
                  : buildUnSelectedItemLangWidget('English')),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                languageProvider.changeAppLanguage('ar');
              },
              child: languageProvider.currenLanguage == 'ar'
                  ? buildSelectedItemLangWidget('العربية')
                  : buildUnSelectedItemLangWidget('العربية')),
        ],
      ),
    );
  }

  Widget buildSelectedItemLangWidget(String selectedLanguage) {
    return Row(
      children: [
        Text(selectedLanguage,
            style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(
          Icons.check,
        )
      ],
    );
  }

  Widget buildUnSelectedItemLangWidget(String unSelectedLanguage) {
    return Row(
      children: [
        Text(unSelectedLanguage,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
      ],
    );
  }
}
