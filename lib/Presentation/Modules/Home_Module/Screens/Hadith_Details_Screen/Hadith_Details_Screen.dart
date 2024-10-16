import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/hadith_Tab/Hadith_Tab.dart';
import 'package:quran_app/Config/Theme/My_Theme.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(MyTheme.isDarkEnable
                ? AssetsManager.mainBGgDark
                : AssetsManager.mainBGgLight)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hadithArgs.title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 25,
                        ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  color: Theme.of(context).dividerColor,
                  width: double.infinity,
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hadithArgs.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
