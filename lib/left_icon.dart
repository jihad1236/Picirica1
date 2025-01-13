import 'package:flutter/material.dart';

class LeftIcon extends StatelessWidget {
  final Icon icn;
  final double icnSize;

  const LeftIcon({
    super.key,
    required this.icn,
    required this.icnSize,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight / 20, // Container height is based on screen height
        width: screenWidth, // Full width of the screen
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.blue.shade800, // Deep blue (bottom left)
              Colors.blue.shade200, // Light blue (top right)
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(4, 4), // Shadow position
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(
                screenWidth * 0.1), // Rounded corners based on screen width
            child: Icon(
              icn.icon,
              size: icnSize,
              color: const Color.fromARGB(255, 236, 222, 220),
            )),
      ),
    );
  }
}
