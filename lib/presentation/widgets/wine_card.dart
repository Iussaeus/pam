import 'package:flutter/material.dart';
import 'package:untitled/presentation/bloc/models/wine.dart';

class WineCard extends StatefulWidget {
  final Wine wine;

  const WineCard({super.key, required this.wine});

  @override
  _WineCardState createState() => _WineCardState();
}

class _WineCardState extends State<WineCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              // Wine Image
                              Container(
                                width: 100,
                                height: 184,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/${widget.wine.image}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: BoxDecoration(
                                        color: widget.wine.isAvailable
                                            ? Colors.green[100]
                                            : Colors.red[100],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        widget.wine.isAvailable
                                            ? "Available"
                                            : "Unavailable",
                                        style: TextStyle(
                                          color: widget.wine.isAvailable
                                              ? Colors.green
                                              : Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      widget.wine.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5),

                                    // Wine Type with Icon & Region with Country Flag
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.local_bar,
                                                size: 14),
                                            const SizedBox(width: 5),
                                            Text(widget.wine.type,
                                                style: const TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12)),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Column(
                                          children: [
                                            const SizedBox(width: 5),
                                            Text(widget.wine.from.city,
                                                style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14)),
                                            Text(widget.wine.from.country,
                                                style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                // Leave space for the bottom container
              ],
            ),
          ),
          // Bottom Container (ignoring parent padding)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              // Ensure full width
              decoration: BoxDecoration(
                color: Colors.grey[100], // Grey color for the bottom container
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ), // Only bottom part is rounded
              ),
              padding: const EdgeInsets.all(10.0),
              // Add padding inside the grey box
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Favorite Button with Bubble
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Favorite Button
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.black,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                isFavorite ? "Added" : "Favorite",
                                style: TextStyle(
                                  color: isFavorite ? Colors.red : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Score: ${widget.wine.criticScore}",
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  // Price Information with Capacity
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Price
                      Text(
                        widget.wine.price.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),

                      // Capacity in ml
                      Text(
                        "${widget.wine.bottleSize} ml",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

