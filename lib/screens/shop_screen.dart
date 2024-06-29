// import '../core/service/product/fetch_products_vm.dart';
// import '../package.dart';
//
// class ShopScreen extends StatefulWidget {
//   const ShopScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ShopScreen> createState() => _ShopScreenState();
// }
//
// class _ShopScreenState extends State<ShopScreen> {
//   final fetchProductVM = FetchProductVM();
//
//   @override
//   void initState() {
//     fetchProductVM.fetchProducts();
//     // TODO: implement initState
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     final products = context.watch<Shop>().shop;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColor().background,
//         elevation: 0,
//         centerTitle: true,
//         foregroundColor: AppColor().inversePrimary,
//         title: const Text('Shop Screen'),
//         actions: [
//           IconButton(
//               onPressed: () => Navigator.pushNamed(context, '/cart_screen'),
//               icon: const Icon(Icons.shopping_cart_outlined))
//         ],
//       ),
//       drawer: const HomeDrawer(),
//       backgroundColor: AppColor().background,
//       body: ListView(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Center(
//               child: Text(
//             'Shop from the list of products below',
//             style: TextStyle(
//               color: AppColor().inversePrimary,
//             ),
//           )),
//           fetchProductVM.isLoading ? const CircularProgressIndicator() :
//           SizedBox(
//             height: 550,
//             child: ListView.builder(
//                 padding: const EdgeInsets.all(15),
//                 itemCount: fetchProductVM.products.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   final product = fetchProductVM.products[index];
//
//                   return ProductTile(product: product);
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/service/product/fetch_products_vm.dart';
import '../package.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  void initState() {
    super.initState();
    final fetchProductVM = Provider.of<FetchProductVM>(context, listen: false);
    fetchProductVM.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    final fetchProductVM = Provider.of<FetchProductVM>(context);
    final products = fetchProductVM.products;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor().background,
        elevation: 0,
        centerTitle: true,
        foregroundColor: AppColor().inversePrimary,
        title: const Text('Shop Screen'),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_screen'),
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const HomeDrawer(),
      backgroundColor: AppColor().background,
      body: fetchProductVM.isLoading
          ? Center(
              child: LinearProgressIndicator(
              color: AppColor().inversePrimary,
            ))
          : fetchProductVM.errorMessage != null
              ? Center(child: Text(fetchProductVM.errorMessage!))
              : LayoutBuilder(builder: (context, constraints) {
                  final maxHeight = constraints.maxHeight;
                  final productTileHeight = maxHeight - 150;
                  return ListView(
                    children: [
                      SizedBox(
                        height: screenHeigth * 0.05,
                      ),
                      Center(
                        child: Text(
                          'Shop from the list of products below',
                          style: TextStyle(
                            color: AppColor().inversePrimary,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: productTileHeight,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(15),
                          itemCount: products.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final product = products[index];
                            return ProductTile(product: product);
                          },
                        ),
                      ),
                    ],
                  );
                }),
    );
  }
}
