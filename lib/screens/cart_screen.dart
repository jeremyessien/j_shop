import 'package:flutter/material.dart';
import 'package:j_shop/components/custom_button.dart';
import 'package:j_shop/model/shop.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
        context: (context),
        builder: (context) => AlertDialog(
              content: const Text('Remove this from your cart?'),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().addToCart(product);
                  },
                  child: const Text('Yes'),
                ),
              ],
            ));
  }

  paymentMethod(BuildContext context){}


  @override
  Widget build(BuildContext context) {
    final cartItem = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart Screen'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
            child: cartItem.isEmpty? const Center(child: Text('Your cart is empty')) : ListView.builder(
              itemCount: cartItem.length,
              itemBuilder: (context, index) {
                final item = cartItem[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    onPressed: () => removeItemFromCart(context, item),
                    icon: const Icon(Icons.remove),
                  ),
                );
              },
            ),
          ),
          CustomButton(
            onTap: ()=> paymentMethod(context),
            child: const Text('Proceed to payment '),
          )
        ],
      ),
    );
  }
}
