import 'package:flutter/material.dart';

class WineBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  WineBar({Key? key})
      : preferredSize = const Size.fromHeight(60.0),
        // Set the height of the AppBar
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
