import 'package:flutter/material.dart';

import 'custom_filter_button.dart'; // Import the CustomFilterButton widget

class FilterButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomFilterButton(label: 'Type', isSelected: true),
          const SizedBox(width: 20),
          CustomFilterButton(label: 'Style', isSelected: false),
          const SizedBox(width: 20),
          CustomFilterButton(label: 'Countries', isSelected: false),
        ],
      ),
    );
  }
}
