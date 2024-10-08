import 'package:flutter/material.dart';
import 'package:quran_app/Core/Colors_Manager.dart';

class VerseWidget extends StatelessWidget {
  VerseWidget({super.key, required this.verse});

  String verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          verse,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
