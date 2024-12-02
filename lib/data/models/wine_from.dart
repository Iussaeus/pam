class WineFrom {
  final String country;
  final String city;

  WineFrom({
    required this.country,
    required this.city,
  });

  factory WineFrom.fromJson(Map<String, dynamic> json) {
    return WineFrom(
      country: json['country'] as String,
      city: json['city'] as String,
    );
  }
}
