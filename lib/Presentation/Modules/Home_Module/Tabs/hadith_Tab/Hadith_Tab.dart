import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/hadith_Tab/WIdgets/Hadith_Header_Widget.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/hadith_Tab/WIdgets/Hadith_Title.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key}); // const added for performance optimization

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> hadithList = [];

  @override
  void initState() {
    super.initState();
    readHadithfile(); // Call it here to run once when the widget is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
        HadithHeaderWidget(),
        // Display the header image
        Expanded(
          flex: 2,
          child: hadithList.isEmpty
              ? const Center(
                  child:
                      CircularProgressIndicator()) // Show loader if list is empty
              : ListView.builder(
                  itemCount: hadithList.length,
                  itemBuilder: (context, index) {
                    return HadithTitle(
                        hadith: hadithList[index]); // Build each item
                  },
                ),
        ),
      ],
    );
  }

  void readHadithfile() async {
    var fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = fileContent.trim().split('#');
    List<Hadith> tempHadithList = []; // Use a temporary list to hold data

    for (int i = 0; i < hadithItemList.length; i++) {
      String hadithItem = hadithItemList[i];
      List<String> hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0); // Remove the first line (title)
      String content = hadithLines.join('\n');
      tempHadithList.add(Hadith(title: title, content: content));
      print(title); // Debug print statement
    }

    setState(() {
      hadithList =
          tempHadithList; // Update the list once after reading the data
    });
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
