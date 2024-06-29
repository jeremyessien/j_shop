
import 'package:flutter_test/flutter_test.dart';
import 'package:j_shop/components/components.dart';
import 'package:j_shop/core/service/product/fetch_products_vm.dart';
import 'package:j_shop/main.dart';

void main() {
  testWidgets('Test data', (WidgetTester tester) async{
    final fetchProductVM = FetchProductVM();

    final products = await fetchProductVM.fetchProducts();
    await tester.pumpWidget(const MyApp());
    var productTile = find.byWidget(ProductTile(product: products[1]));

    expect(productTile, findsOneWidget);
  });
}