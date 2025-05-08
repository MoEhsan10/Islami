import 'Radios.dart';

class RadioResponse {
  List<Radios>? radios;

  RadioResponse({this.radios});

  factory RadioResponse.fromJson(Map<String, dynamic> json) {
    return RadioResponse(
      radios: json['radios'] != null
          ? List<Radios>.from((json['radios'] as List)
              .map((e) => Radios.fromJson(e as Map<String, dynamic>)))
          : [],
    );
  }
}
