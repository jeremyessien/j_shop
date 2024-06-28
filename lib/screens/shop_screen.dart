import 'package:flutter/material.dart';
import 'package:j_shop/components/home_drawer.dart';
import 'package:j_shop/components/product_tile.dart';
import 'package:provider/provider.dart';

import '../model/shop.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shop Screen'),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/shop_screen'),
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const HomeDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'Shop from the list of products below',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          )),
          SizedBox(
            height: 550,
            child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return ProductTile(product: product);
                }),
          ),
        ],
      ),
    );
  }
}
