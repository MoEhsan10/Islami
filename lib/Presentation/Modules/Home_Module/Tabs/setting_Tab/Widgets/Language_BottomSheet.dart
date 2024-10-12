import 'package:flutter/material.dart';
import 'package:quran_app/Core/Colors_Manager.dart';

class LanguageBottomsheet extends StatefulWidget {
  const LanguageBottomsheet({super.key});

  @override
  State<LanguageBottomsheet> createState() => _LanguageBottomsheetState();
}

class _LanguageBottomsheetState extends State<LanguageBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemThemeWidget('English'),
          SizedBox(
            height: 12,
          ),
          buildUnSelectedItemThemeWidget('العربية'),
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedLanguage) {
    return Row(
      children: [
        Text(selectedLanguage,
            style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(
          Icons.check,
          color: ColorsManager.goldColor,
        )
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: ColorsManager.blackTextColor),
    );
  }
}
