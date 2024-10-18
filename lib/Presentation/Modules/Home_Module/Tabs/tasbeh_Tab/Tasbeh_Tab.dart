import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Providers/ThemeProvider.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int index = 0;
  double turns = 0;
  List<String> tasabeh = [
    'سبحان اللهِ',
    'الحمدلله',
    'الله اكبر',
    'لا اله الا الله',
    'استغفر الله',
  ];

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.asset(
                  themeProvider.isLightTheme()
                      ? AssetsManager.sebhaHeadLogo
                      : AssetsManager.sebhaHeadLogoDark,
                  width: 80,
                ),
              ),

              // Sebha Body (Rotating)
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: AnimatedRotation(
                  turns: turns,
                  duration: const Duration(milliseconds: 500),
                  child: Image.asset(
                    themeProvider.isLightTheme()
                        ? AssetsManager.sebhaBodyLogo
                        : AssetsManager.sebhaBodyLogoDark,
                    width: 220,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryFixed,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                  turns += 1 / 33;

                  // Reset after 33 counts
                  if (counter > 33) {
                    counter = 0;
                    index = (index + 1) % tasabeh.length;
                    turns = 0;
                  }
                });
              },
              child: Text(tasabeh[index],
                  style: Theme.of(context).textTheme.titleSmall),
            ),
          ),
        ],
      ),
    );
  }
}
