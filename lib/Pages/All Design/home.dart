// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:picirica1/Pages/All%20Design/product_card.dart';
import 'package:picirica1/left_icon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    final List<String> categories = [
      "Electronics",
      "Fashion",
      "Books",
      "Sports",
    ];
    final List<String> imagePaths = [
      'assets/images/image 11.png',
      'assets/images/image 12.jpg',
      'assets/images/image 13.jpg',
      'assets/images/image 14.jpg',
      'assets/images/image 13.jpg',
      'assets/images/image 14.jpg',
      'assets/images/image 14.jpg',
      'assets/images/image 14.jpg',
    ];
    final List<String> brands = [
      "Apple",
      "Samsung",
      "Microsoft",
      "Google",
      "Amazon",
      "Lenovo",
      "Dell",
      "Apple",
      "Samsung",
      "Microsoft",
      "Google",
      "Amazon",
      "Lenovo",
      "Dell",
      "Apple",
      "Samsung",
      "Microsoft",
      "Google",
      "Amazon",
      "Lenovo",
      "Dell",
      "Google",
      "Amazon",
      "Lenovo",
      "Dell",
    ];

    final List<Map<String, dynamic>> products = [
      {
        "name": "iPhone 14 Pro",
        "description": "Apple's flagship smartphone with advanced features.",
        "price": 999.99,
        "isFavorite": false,
      },
      {
        "name": "Samsung Galaxy S23",
        "description": "High-performance Android phone with great camera.",
        "price": 899.99,
        "isFavorite": true,
      },
      {
        "name": "MacBook Air M2",
        "description": "Apple's lightweight laptop with the M2 chip.",
        "price": 1500.00,
        "isFavorite": false,
      },
      {
        "name": "iPhone 14 Pro",
        "description": "Apple's flagship smartphone with advanced features.",
        "price": 999.99,
        "isFavorite": false,
      },
      {
        "name": "Samsung Galaxy S23",
        "description": "High-performance Android phone with great camera.",
        "price": 899.99,
        "isFavorite": true,
      },
      {
        "name": "MacBook Air M2",
        "description": "Apple's lightweight laptop with the M2 chip.",
        "price": 1500.00,
        "isFavorite": false,
      },
      {
        "name": "iPhone 14 Pro",
        "description": "Apple's flagship smartphone with advanced features.",
        "price": 999.99,
        "isFavorite": false,
      },
      {
        "name": "Samsung Galaxy S23",
        "description": "High-performance Android phone with great camera.",
        "price": 899.99,
        "isFavorite": true,
      },
      {
        "name": "MacBook Air M2",
        "description": "Apple's lightweight laptop with the M2 chip.",
        "price": 1500.00,
        "isFavorite": false,
      },
    ];

    String selectedCategory = "";

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
                  width: MediaQuery.of(context).size.width / 23,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        LeftIcon(
                          icn: Icon(EvaIcons.menu),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.home),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.charging),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.alertTriangle),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.attach),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.cloudUpload),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.pieChart),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.film),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.diagonalArrowLeftDownOutline),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.menu),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.home),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.charging),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.alertTriangle),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.attach),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.cloudUpload),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.pieChart),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.film),
                          text: "Home",
                        ),
                        LeftIcon(
                          icn: Icon(EvaIcons.diagonalArrowLeftDownOutline),
                          text: "Home",
                        ),

                        // LeftIcon(icn: Icon(Icons.house), ),
                        // SizedBox(height: 2),
                        // LeftIcon(
                        //     icn: Icon(Icons.medication_liquid_outlined),
                        //     ),
                        // SizedBox(height: 2),
                        // LeftIcon(icn: Icon(Icons.brush_outlined), ),
                        // SizedBox(height: 5),
                        // LeftIcon(
                        //     icn: Icon(Icons.local_laundry_service),

                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.child_care),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.local_dining),),
                        // SizedBox(height: 5),
                        // LeftIcon(
                        //     icn: Icon(Icons.local_grocery_store),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.shopping_basket), icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.house), icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(
                        //     icn: Icon(Icons.medication_liquid_outlined),
                        //     icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.brush_outlined), icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(
                        //     icn: Icon(Icons.local_laundry_service),
                        //     icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.child_care), icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.local_dining), icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(
                        //     icn: Icon(Icons.local_grocery_store), icnSize: 30),
                        // SizedBox(height: 5),
                        // LeftIcon(icn: Icon(Icons.shopping_basket),),
                        // SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
                // Divider
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: 0.4,
                    color: const Color.fromARGB(255, 132, 132, 132)),
                // Main Content Area
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Search Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width *
                                  (250 / 750),
                              child: Row(
                                children: [
                                  PopupMenuButton<String>(
                                    onSelected: (value) {
                                      // Handle menu item selection
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text('Selected: $value')),
                                      );
                                    },
                                    itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: Container(
                                          width:
                                              200, // Set a custom width for the item
                                          height:
                                              50, // Set a custom height for the item
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Apple',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      PopupMenuItem(
                                        value: 'Banana',
                                        child: Text('Banana'),
                                      ),
                                      PopupMenuItem(
                                        value: 'Fruits',
                                        child: Text('Fruits'),
                                      ),
                                      PopupMenuItem(
                                        value: 'Medicine',
                                        child: Text('Medicine'),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          (200 / 800),
                                      child: TextField(
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xff020202),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.5,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xfff1f1f1),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: "Search Categories...",
                                          hintStyle: GoogleFonts.poppins(
                                              color: const Color(0xffb2b2b2),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.5,
                                              decorationThickness: 6),
                                          prefixIcon: const Icon(Icons.search),
                                          prefixIconColor: const Color.fromARGB(
                                              255, 111, 111, 111),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Icon(
                                    Icons.menu,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                          ],
                        ),
                        Container(
                            height: 0.4,
                            width: MediaQuery.of(context).size.width,
                            color: const Color.fromARGB(255, 132, 132, 132)),
                        SizedBox(
                          height: 8,
                        ),

                        Row(
                          children: [
                            Expanded(
<<<<<<< HEAD
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: MediaQuery.of(context)
                                        .size
                                        .height, // Slider height
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
                                              MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                                blurRadius: 5,
                                                spreadRadius: 2,
                                              ),
                                            ],
=======
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  height: MediaQuery.of(context).size.height/1.4, // Slider height
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
                        Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(),
                            child: ListView.builder(
                              itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.all(10.0),
                                child: Text(
                                  brands[index],
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 186, 186, 186)),
                                ),
                              ),
                              itemCount: brands.length,
                              scrollDirection: Axis.horizontal,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.red,
                            height: 800,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: products.length,
                              padding: const EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                final product = products[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ProductCard(
                                    imageString: "assets/images/image 13.jpg",
                                    name: product["name"],
                                    description: product["description"],
                                    price: product["price"],
                                    isFavorite: true,
                                    onFavoriteToggle: () {
                                      setState(() {
                                        product["isFavorite"] =
                                            !product["isFavorite"];
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
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
