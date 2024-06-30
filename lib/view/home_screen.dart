import 'package:flutter/material.dart';
import '../component/category_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          CategorySection(category: 'Electronics'),
          CategorySection(category: 'Books'),
          CategorySection(category: 'Clothing'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Sell',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/profile');
              break;
            case 2:
              Navigator.pushNamed(context, '/cart');
              break;
            case 3:
              Navigator.pushNamed(context, '/sell');
              break;
          }
        },
      ),
    );
  }
}
