// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:picirica1/left_icon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/image 1.jpg',
      'assets/images/image 2.jpg',
      'assets/images/image 3.jpg',
      'assets/images/image 4.jpg',
      'assets/images/image 5.jpg',
      'assets/images/image 6.jpg',
      'assets/images/image 7.jpg',
      'assets/images/image 8.jpg',
      'assets/images/image 9.jpg',
      'assets/images/image 10.jpg',
    ];
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            // For phones
            return Column(
              children: const [
                Text("Phone Layout"),
              ],
            );
          } else {
            // For laptops or PCs
            return Row(
              children: [
                // Sidebar Container
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 28,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        LeftIcon(icn: Icon(Icons.house), icnSize: 30),
                        SizedBox(height: 2),
                        LeftIcon(
                            icn: Icon(Icons.medication_liquid_outlined),
                            icnSize: 30),
                        SizedBox(height: 2),
                        LeftIcon(icn: Icon(Icons.brush_outlined), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(
                            icn: Icon(Icons.local_laundry_service),
                            icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.child_care), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.local_dining), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(
                            icn: Icon(Icons.local_grocery_store), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.shopping_basket), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.house), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(
                            icn: Icon(Icons.medication_liquid_outlined),
                            icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.brush_outlined), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(
                            icn: Icon(Icons.local_laundry_service),
                            icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.child_care), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.local_dining), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(
                            icn: Icon(Icons.local_grocery_store), icnSize: 30),
                        SizedBox(height: 5),
                        LeftIcon(icn: Icon(Icons.shopping_basket), icnSize: 30),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
                // Divider
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 2,
                  color: Colors.black38,
                ),
                // Main Content Area
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Search Row
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image.asset(
                                "assets/images/logo.png",
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width / 5,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            // Flexible Search Bar
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  onChanged: (value) {
                                    // Handle the search logic here
                                    print("Search Query: $value");
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.search),
                                    hintText: "Search...",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                          const BorderSide(color: Colors.grey),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Icon(
                                Icons.person,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Icon(
                                Icons.shopping_cart,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Icon(
                                Icons.menu,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                          ],
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black38,
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  height: 430.0, // Slider height
                                  autoPlay: true, // Automatic sliding
                                  autoPlayInterval: Duration(
                                      seconds: 3), // Interval between slides
                                  enlargeCenterPage:
                                      false, // Highlight the center image
                                  viewportFraction:
                                      1.0, // Size of images relative to viewport
                                ),
                                items: imageList.map((imagePath) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width/1.8,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              blurRadius: 5,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            imagePath,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          offset:
                                              Offset(4, 4), // Shadow position
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/image 11.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          offset:
                                              Offset(4, 4), // Shadow position
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/image 12.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          offset:
                                              Offset(4, 4), // Shadow position
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/image 13.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          offset:
                                              Offset(4, 4), // Shadow position
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        'assets/images/image 14.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
