import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/hadith_Tab/Hadith_Tab.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/quran_Tab/Quran_tab.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/radio_Tab/Radio_Tab.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/setting_Tab/SettingsTab.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/tasbeh_Tab/Tasbeh_Tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage(AssetsManager.mainBGgLight)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectionIndex,
          onTap: (index) {
            selectionIndex = index;
            print(index);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                label: AppLocalizations.of(context)!.quranTab),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                label: AppLocalizations.of(context)!.hadithTab),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                label: AppLocalizations.of(context)!.sebhaTab),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: AppLocalizations.of(context)!.radioTab),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settingsTab),
          ],
        ),
        body: tabs[selectionIndex],
      ),
    );
  }
}