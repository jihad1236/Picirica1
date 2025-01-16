import 'package:flutter/material.dart';

class LeftIcon extends StatelessWidget {
  final Icon icn;
  final String text;

  const LeftIcon({
    super.key,
    required this.icn,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: PopupMenuButton<String>(
            onSelected: (value) {
              // Handle selection if needed
            },
            offset: Offset(screenHeight / 25 + 10,
                0), // Position dropdown to the right of the icon
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                value: text,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
            child: Container(
              height: screenHeight / 25, // Height based on screen size
              width: screenHeight / 25, // Square shape for the icon container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 58, 58, 58), // Light blueish-grey
                    Color.fromARGB(255, 58, 58, 58), // Darker blue-grey
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 192, 192, 192)
                        .withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(4, 4), // Shadow position
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Icon(
                  icn.icon,
                  size: 20,
                  color: const Color.fromARGB(255, 243, 238, 238),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
