import 'package:untitled/domain/entities/wine_from.dart';

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
}