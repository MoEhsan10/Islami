import 'package:flutter/material.dart';
import 'package:quran_app/Core/Colors_Manager.dart';
import 'package:quran_app/Core/Routes_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Quran_Details_Screen/Quran_Details_Screen.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/quran_Tab/Quran_tab.dart';

class SuraNameWidget extends StatelessWidget {
  SuraItem suraItem;

  SuraNameWidget({required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.quranDetailsRoute,
          arguments: suraItem,
        );
      },
      child: IntrinsicHeight(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              suraItem.suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
            Container(
              width: 3,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(
                child: Text(
              suraItem.versesNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ],
        ),
      ),
    );
  }
}
