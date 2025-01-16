import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final bool isFavorite;
  final String imageString;

  final VoidCallback onFavoriteToggle;

  const ProductCard(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.isFavorite,
      required this.onFavoriteToggle,
      required this.imageString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 400,
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              // Adjusting for 200px based on a base height of 800px
              width: 200, // Adjusting for 200px based on a base width of 400px
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageString,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            // Product Name
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Product Description
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            // Price and Favorite
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Text(
                  "\$${price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                // Favorite Icon
                IconButton(
                  onPressed: onFavoriteToggle,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
