import '../package.dart';

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
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: const Text('Yes'),
                ),
              ],
            ));
  }

  paymentMethod(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    final cartItem = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColor().inversePrimary,
        title: const Text('Cart Screen'),
      ),
      backgroundColor: AppColor().background,
      body: Column(
        children: [
          Expanded(
            child: cartItem.isEmpty
                ? const Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 80,
                      ),
                      Text('Your cart is empty'),
                    ],
                  ))
                : ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: cartItem.length,
                    itemBuilder: (context, index) {
                      final item = cartItem[index];
                      return ListTile(
                        title: Text(item.title),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: const Icon(Icons.remove),
                        ),
                      );
                    },
                  ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: CustomButton(
              onTap: () => paymentMethod(context),
              child: const Text('Proceed to payment '),
            ),
          ),
        ],
      ),
    );
  }
}
