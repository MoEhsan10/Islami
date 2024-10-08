import 'package:flutter/material.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/hadith_Tab/Hadith_Tab.dart';

class HadithTitle extends StatelessWidget {
  Hadith hadith;

  HadithTitle({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
