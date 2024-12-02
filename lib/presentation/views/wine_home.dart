import 'package:flutter/material.dart';
import 'package:untitled/presentation/widgets/custom_filter_list.dart';
import 'package:untitled/presentation/widgets/wine_bar.dart';
import 'package:untitled/presentation/widgets/wine_category_list.dart';
import 'package:untitled/presentation/widgets/wine_list.dart';
import 'package:untitled/presentation/widgets/wine_search.dart';

class WineHomeScreen extends StatelessWidget {
  const WineHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WineBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WineSearch(),
            const SizedBox(height: 20),
            const Text('Shop wines by',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 30),
            ////
            WineCategoryList(),
            const SizedBox(height: 20),
            FilterButtonList(),
            const SizedBox(height: 20),
            WineListScreen(),
          ],
        ),
      ),
    );
  }
}
