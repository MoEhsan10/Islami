class Radios {
  num? id;
  String? name;
  String? url;
  String? recentDate;

  Radios({
    this.id,
    this.name,
    this.url,
    this.recentDate,
  });

  factory Radios.fromJson(Map<String, dynamic> json) {
    return Radios(
      id: json['id'] as num?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      recentDate: json['recent_date'] as String?,
    );
  }
}
