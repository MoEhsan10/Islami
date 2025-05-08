import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Tabs/radio_Tab/radio_item.dart';
import 'package:quran_app/api/response/RadioResponse.dart';

import '../../../../../api/response/Radios.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اذاعة القران الكريم',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Image.asset(AssetsManager.radioImage),
          const SizedBox(height: 20),
          FutureBuilder<RadioResponse>(
            future: getRadio(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).dividerColor,
                  ),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('Something went wrong'),
                );
              } else if (snapshot.hasData) {
                final List<Radios> radioList = snapshot.data?.radios ?? [];

                return SizedBox(
                  height: 150, // Adjust height based on your RadioItem design
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const PageScrollPhysics(),
                    itemCount: radioList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: RadioItem(radio: radioList[index]));
                    },
                  ),
                );
              } else {
                return const Center(child: Text('No data available'));
              }
            },
          ),
        ],
      ),
    );
  }

  static Future<RadioResponse> getRadio() async {
    Uri uri = Uri.parse('https://mp3quran.net/api/v3/radios');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return RadioResponse.fromJson(json);
    } else {
      throw Exception('Something went wrong');
    }
  }
}
