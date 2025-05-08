import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/api/response/Radios.dart';

class RadioItem extends StatelessWidget {
  RadioItem({super.key, required this.radio});

  final Radios radio;
  static final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          radio.name ?? '',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            IconButton(
              onPressed: () async {
                await player.play(UrlSource(radio.url!));
              },
              icon: Icon(
                Icons.play_arrow_rounded,
                color: Theme.of(context).dividerColor,
                size: 45,
              ),
            ),
            IconButton(
              onPressed: () async {
                await player.stop();
              },
              icon: Icon(
                Icons.stop_rounded,
                color: Theme.of(context).dividerColor,
                size: 35,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
