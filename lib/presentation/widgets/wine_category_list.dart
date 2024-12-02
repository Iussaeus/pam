import 'package:flutter/material.dart';
import 'package:untitled/presentation/widgets/wine_category.dart';

class WineCategoryList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'imagePath': 'assets/red_wine.png', 'label': 'Red wines', 'badgeCount': '123'},
    {'imagePath': 'assets/red_wine.png', 'label': 'Red wines', 'badgeCount': '123'},
    {'imagePath': 'assets/red_wine.png', 'label': 'Red wines', 'badgeCount': '123'},
    {'imagePath': 'assets/red_wine.png', 'label': 'Red wines', 'badgeCount': '123'},
    {'imagePath': 'assets/red_wine.png', 'label': 'Red wines', 'badgeCount': '123'},
    {'imagePath': 'assets/red_wine.png', 'label': 'Red wines', 'badgeCount': '123'},
    {'imagePath': 'assets/white_wine.png', 'label': 'White wines', 'badgeCount': '123'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: WineCategoryCard(
              imagePath: category['imagePath']!,
              label: category['label']!,
              badgeCount: category['badgeCount']!,
            ),
          );
        }).toList(),
      ),
    );
  }
}
