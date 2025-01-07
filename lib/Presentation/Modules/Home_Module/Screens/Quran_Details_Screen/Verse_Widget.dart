import 'package:flutter/material.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/quran_Tab/Quran_tab.dart';

class VerseWidget extends StatelessWidget {
  const VerseWidget({super.key, required this.verse});

  final String verse;

  @override
  Widget build(BuildContext context) {
    // Retrieve the SuraItem from the route arguments
    final args = ModalRoute.of(context)?.settings.arguments;

    if (args is! SuraItem) {
      // If the arguments are not of type SuraItem, handle the error accordingly
      return const Center(child: Text('Error: SuraItem not found.'));
    }

    SuraItem suraItem = args;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0), // Padding for the entire card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  suraItem.suraName,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.play_circle,
                //     color: Theme.of(context).colorScheme.onSecondaryFixed,
                //   ),
                // ),
              ],
            ),
            // Directly followed by the Divider with minimal spacing
            Container(
              margin: EdgeInsets.zero, // Explicitly remove margins
              child: Divider(
                color: Theme.of(context).dividerColor,
                endIndent: 40,
                indent: 40,
                thickness: 1,
              ),
            ),

            // Small SizedBox to control space before the verse
            const SizedBox(height: 2), // Space between the divider and verse
            // Verse
            Text(
              verse,
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
