import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/firebase_initializer.dart';
import 'view/signin_screen.dart';
import 'view/signup_screen.dart';
import 'view/home_screen.dart';
import 'view/profile_screen.dart';
import 'view/cart_screen.dart';
import 'view/sell_product_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseInitializer.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInScreen(),
      routes: {
        '/login': (context) => SignInScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/cart': (context) => CartScreen(),
        '/sell': (context) => SellProductScreen(),
      },
    );
  }
}
