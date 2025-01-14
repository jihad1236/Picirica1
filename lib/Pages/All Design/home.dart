import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  final List<String> imageList = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
  ];

  final List<String> categories = [
    "Electronics",
    "Fashion",
    "Books",
    "Sports",
  ];

  final Map<String, List<Map<String, dynamic>>> products = {
    "Electronics": [
      {"name": "Phone", "price": 999.99, "description": "Latest smartphone"},
      {"name": "Laptop", "price": 1299.99, "description": "Powerful laptop"},
    ],
    "Fashion": [
      {"name": "Shirt", "price": 19.99, "description": "Stylish shirt"},
      {"name": "Jeans", "price": 39.99, "description": "Comfortable jeans"},
    ],
    "Books": [
      {"name": "Fiction", "price": 9.99, "description": "Interesting novel"},
      {
        "name": "Non-fiction",
        "price": 14.99,
        "description": "Informative book"
      },
    ],
    "Sports": [
      {
        "name": "Football",
        "price": 29.99,
        "description": "High-quality football"
      },
      {
        "name": "Tennis Racket",
        "price": 79.99,
        "description": "Durable racket"
      },
    ],
  };

  String selectedCategory = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: MediaQuery.of(context).size.width / 10,
            color: Colors.white,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = categories[index];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: selectedCategory == categories[index]
                          ? Colors.blue[100]
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedCategory == categories[index]
                              ? Colors.blue
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Divider
          Container(
            width: 2,
            color: Colors.black38,
          ),
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Carousel Slider
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                      items: imageList.map((imagePath) {
                        return Builder(
                          builder: (context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
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
                  // Display Products
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      child: selectedCategory.isNotEmpty &&
                              products.containsKey(selectedCategory)
                          ? ListView.builder(
                              itemCount: products[selectedCategory]!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final product =
                                    products[selectedCategory]![index];
                                return Container(
                                  width: 250,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product["name"],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          "\$${product["price"].toStringAsFixed(2)}",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.green,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          product["description"],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            )
                          : Center(
                              child: Text(
                                "No products to display",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                    ),
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
