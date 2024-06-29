import 'package:flutter_test/flutter_test.dart';
import 'package:j_shop/core/service/api_service.dart';
import 'package:j_shop/core/service/product/fetch_products_vm.dart';

import 'fetch_product_test.dart';

// void testFetchProductsNetworkError() async {
//   class MockApiService extends ApiService {
//   @override
//   Future<http.Response> getRequest(String endpoint) async {
//   throw Exception('Failed to connect');
//   }
//   }
//
//   // Create a FetchProductVM with the mock ApiService
//   final fetchProductVM = FetchProductVM(MockApiService());
//
//   try {
//   // Call fetchProducts and expect an exception
//   await fetchProductVM.fetchProducts();
//   fail('Expected an exception');
//   } catch (e) {
//   expect(e.toString(), contains('Failed to connect')); // Check for expected error message
//   } finally {
//   // Verify the state after the error
//   expect(fetchProductVM.isLoading, false);
//   expect(fetchProductVM.errorMessage, isNotNull); // Expect some error message
//   }
// }
