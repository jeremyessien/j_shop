import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/model/model.dart';
import '../screens/product_details.dart';
import '../theme/light_mode.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({Key? key, required this.product}) : super(key: key);

  void addToCart(BuildContext context) {
    showDialog(
        context: (context),
        builder: (context) => AlertDialog(
              content: const Text('Add this to cart?'),
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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: product),
          ),
        );
      },
      child: Container(
        width: screenWidth * 0.8,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColor().primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor().secondary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(20),
                      child:  Image.network(product.image)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  product.title,
                  style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  product.description,
                  maxLines: 3,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: AppColor().inversePrimary,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: AppColor().secondary,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                        onPressed: () => addToCart(context),
                        icon: const Icon(Icons.add)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
