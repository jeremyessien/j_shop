
import 'dart:developer';

import '../../../package.dart';
import '../service.dart';

class FetchProductVM extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Product> products = [];
  bool isLoading = false;
  String? errorMessage;

  Future<List<Product>> fetchProducts() async {
    setLoading(true);
    try {
      final response = await _apiService.getRequest('products');
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = jsonDecode(response.body);
    products = jsonResponse.map((product) => Product.fromJson(product)).toList();
        setErrorMessage(null);
        notifyListeners();
        return products;
      } else {
        setErrorMessage('Failed to load products: ${response.statusCode}');
        notifyListeners();
        throw Exception('Failed to load products');
      }
    } catch (e) {
      setErrorMessage(e.toString());
      rethrow;
    } finally{
      setLoading(false);
    }
  }
  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void setErrorMessage(String? message) {
    errorMessage = message;
    notifyListeners();
  }
}