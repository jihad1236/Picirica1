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
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight / 18, // Container height is based on screen height
        width: screenWidth, // Full width of the screen
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft, // Start at bottom-left
            end: Alignment.topRight, // End at top-right
            colors: [
              Color.fromARGB(
                  255, 58, 58, 58), // Light blueish-grey (bottom-left)
              Color.fromARGB(255, 58, 58, 58), // Darker blue-grey (top-right)
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
              color: const Color.fromARGB(255, 243, 238, 238),
            )),
      ),
    );
  }
}
