import 'package:flutter/material.dart';

class WineCategoryCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final String badgeCount;

  const WineCategoryCard({
    super.key,
    required this.imagePath,
    required this.label,
    required this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 145,
          // Increased width for larger card
          height: 189,
          // Increased height for larger card
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20), // Larger corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              // Bottom grey box with text filling all the remaining space
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  // Ensure full width
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    // Grey color for the bottom container
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ), // Only bottom part is rounded
                  ),
                  padding: const EdgeInsets.all(10.0),
                  // Add padding inside the grey box
                  child: Center(
                    child: Text(
                      label,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // Increased text size
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Badge positioned at the top right
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            // Increased badge size
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15), // Larger badge radius
            ),
            child: Text(
              badgeCount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12, // Increased badge text size
              ),
            ),
          ),
        ),
      ],
    );
  }
}
