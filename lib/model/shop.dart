import 'dart:js_util';

import 'package:flutter/cupertino.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop =[
    Product(name: 'Shoe 1', price: 45.00, description: 'This is a sample product',),
    Product(name: 'Phone', price: 34.00, description: 'This is a sample product',),
    Product(name: 'Mackbook', price: 38.00, description: 'This is a sample product',),
  ];

  List<Product> _cart = [];

  List<Product> get shop =>_shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
 void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}