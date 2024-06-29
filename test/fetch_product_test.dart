// Import required classes
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:j_shop/core/service/api_service.dart';
import 'package:j_shop/core/service/product/fetch_products_vm.dart';


class MockApiService extends ApiService {
  @override
  Future<http.Response> getRequest(String endpoint) async {
    final response = http.Response(
      '[{"id": 1, "title": "Product 1", ...}, {"id": 2, "title": "Product 2", ...}]',
      200,
    );
    return response;
  }
}

void testFetchProductsSuccess() async {
  final fetchProductVM = FetchProductVM();

  final products = await fetchProductVM.fetchProducts();

  expect(fetchProductVM.isLoading, false);
  expect(fetchProductVM.errorMessage, null);
  expect(products.length, 2);
}
