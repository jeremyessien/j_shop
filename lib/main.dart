import 'package:flutter/material.dart';
import 'package:j_shop/screens/cart_screen.dart';
import 'package:j_shop/screens/home_screen.dart';

import 'model/shop.dart';
import 'screens/intro_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
    create: (context) => Shop(),
        child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intro(),
      theme: ThemeData.light(),
      routes: {
        '/intro_screen' : (context) => const Intro(),
        '/home_screen' : (context) => const HomeScreen(),
        '/cart_screen' : (context) => const CartScreen(),
      },
    );
  }
}
