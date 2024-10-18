import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Quran_Details_Screen/Verse_Widget.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/quran_Tab/Quran_tab.dart';
import 'package:quran_app/Providers/ThemeProvider.dart';

class QuranDetailsScreen extends StatefulWidget {
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  String versesContent = ""; // Store the whole file content as a single string

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);

    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    readQuranFile(suraItem.index + 1);

    return Stack(
      children: [
        Image.asset(
          myProvider.isLightTheme()
              ? AssetsManager.mainBGgLight
              : AssetsManager.mainBGgDark,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(suraItem.suraName),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: versesContent.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: VerseWidget(verse: versesContent),
                ),
        ),
      ],
    );
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    setState(() {
      versesContent =
          fileContent.trim(); // Store the whole content without splitting
    });
  }
// void readQuranFileV2(int index) async {
//   rootBundle.loadString('assets/files/$index.txt').then((value){
//     print(value);
//   });
//   setState(() {
//     versesContent = fileContent.trim(); // Store the whole content without splitting
//   });
// }
}
