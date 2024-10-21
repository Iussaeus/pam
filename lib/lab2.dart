import 'package:flutter/material.dart';

import 'wine_card.dart';

void main() {
  runApp(const MyWineApp());
}

class MyWineApp extends StatelessWidget {
  const MyWineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WineHomeScreen(),
    );
  }
}

class WineHomeScreen extends StatelessWidget {
  const WineHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.location_on, color: Colors.black),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Donnerville Drive', style: TextStyle(color: Colors.black)),
            Text(
              '6 Sommerville Mall, 6 Sommerville Drive, Athanasian...',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none, color: Colors.black),
              ),
              const Positioned(
                right: 12,
                top: 12,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              const SingleChildScrollView(
                child: Row(
                  children: [
                    CustomFilterButton(label: 'Type', isSelected: true),
                    SizedBox(width: 20),
                    CustomFilterButton(label: 'Style', isSelected: false),
                    SizedBox(width: 20),
                    CustomFilterButton(label: 'Countries', isSelected: false),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              const Text('Shop wines by',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 15),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WineCategoryCard(
                      imagePath: 'assets/red_wine.png',
                      label: 'Red wines',
                      badgeCount: '123',
                    ),
                    SizedBox(width: 20),
                    WineCategoryCard(
                      imagePath: 'assets/white_wine.png',
                      label: 'White wines',
                      badgeCount: '123',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              const Text('Wine',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              const SizedBox(height: 15),

              const WineCard(
                imageUrl: "img.png",
                name: 'Ocene Bozzovich Beneventano Bianco IGT',
                type: 'Red Wine (Green and Flinty)',
                region: 'From Champagne Blanc',
                price: '₹23,256,596',
                criticsScore: '94 / 100',
                isAvailable: true,
                countryFlagUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/6/62/Flag_of_France.png',
                capacity: '750',
              ),
              const SizedBox(height: 60),
              const WineCard(
                imageUrl: "img_1.png",
                // empty string for imageUrl
                name: '2021 Petit Chablis - Passy Le Clou',
                type: 'White Wine (Green and Flinty)',
                region: 'From Champagne Blanc',
                price: '₹23,256,596',
                criticsScore: '94 / 100',
                isAvailable: true,
                countryFlagUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/6/62/Flag_of_France.png',
                capacity: '750',
              ),
              const SizedBox(height: 60),
              const WineCard(
                imageUrl: "img_2.png",
                // empty string for imageUrl
                name: 'Philippe Fontaine Champagne Brut Rosé, Rosé de Saignée',
                type: 'Sparkling Wine (Green and Flinty)',
                region: 'From Champagne Blanc',
                price: '₹23,256,596',
                criticsScore: '94 / 100',
                isAvailable: false,
                countryFlagUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/6/62/Flag_of_France.png',
                capacity: '750',
              ),
              const SizedBox(height: 60),
              const WineCard(
                imageUrl: "img_3.png",
                // empty string for imageUrl
                name: '2021 Cicada\'s Song Rosé',
                type: 'Rosé Wine (Green and Flinty)',
                region: 'From Champagne Blanc',
                price: '₹23,256,596',
                criticsScore: '94 / 100',
                isAvailable: true,
                countryFlagUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/6/62/Flag_of_France.png',
                capacity: '750',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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

// Modified Wine Category Card with Separated Text Area
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
