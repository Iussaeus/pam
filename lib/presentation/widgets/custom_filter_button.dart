import 'package:flutter/material.dart';

class CustomFilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CustomFilterButton({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Increase padding for larger size
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isSelected ? Colors.red : Colors.transparent,
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown, // Ensures text will fit within the container
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.red,
            fontSize: 18, // Increase font size
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
