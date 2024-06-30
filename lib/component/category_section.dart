import 'package:flutter/material.dart';
import '../view/product_detail_screen.dart'; // Product detail screen, if required

class CategorySection extends StatelessWidget {
  final String category;

  CategorySection({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              ProductItem(),
              ProductItem(),
              ProductItem(),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailScreen()),
        );
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.all(8.0),
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Product Name'),
            ),
          ],
        ),
      ),
    );
  }
}
