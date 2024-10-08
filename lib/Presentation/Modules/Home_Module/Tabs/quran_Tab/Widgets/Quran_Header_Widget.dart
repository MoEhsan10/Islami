import 'package:flutter/material.dart';
import 'package:quran_app/Core/Colors_Manager.dart';
import 'package:quran_app/Core/Strings_Manager.dart';

class QuranHeaderWidget extends StatelessWidget {
  const QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Theme.of(context).dividerColor,
        width: 2,
      ))),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  textAlign: TextAlign.center,
                  StringsManager.suraName,
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            Container(
              color: Theme.of(context).dividerColor,
              width: 3,
            ),
            Expanded(
                flex: 2,
                child: Text(
                  textAlign: TextAlign.center,
                  StringsManager.versesNumber,
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
          ],
        ),
      ),
    );
  }
}
