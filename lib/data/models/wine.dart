import 'package:untitled/data/models/wine_from.dart';

class Wine {
  final bool isAvailable;
  final String name;
  final String image;
  final int criticScore;
  final String bottleSize;
  final int price;
  final String type;
  final WineFrom from;

  Wine({
    required this.isAvailable,
    required this.name,
    required this.image,
    required this.criticScore,
    required this.bottleSize,
    required this.price,
    required this.type,
    required this.from,
  });

  factory Wine.fromJson(Map<String, dynamic> json) {
    return Wine(
      isAvailable: false,
      name: json['name'] as String,
      image: json['image'] as String,
      criticScore: json['critic_score'] as int,
      bottleSize: json['bottle_size'] as String,
      price: json['price_usd'] as int,
      type: json['type'] as String,
      from: WineFrom.fromJson(json['from'] as Map<String, dynamic>),
    );
  }
}
