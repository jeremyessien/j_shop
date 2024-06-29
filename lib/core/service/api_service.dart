import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../package.dart';

class ApiService extends ChangeNotifier {
  final String baseUrl = 'https://fakestoreapi.com';
      // dotenv.env['baseUrl'] ?? 'https://fakestoreapi.com/';

  Future<http.Response> getRequest(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
      _logResponse(response);
      _handleError(response);
      notifyListeners();
      return response;
    } catch (e) {
      _logError(e);
      rethrow;
    }
  }

  Future<http.Response> postRequest(
      String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      _logResponse(response);
      _handleError(response);
      notifyListeners();
      return response;
    } catch (e) {
      _logError(e);
      rethrow;
    }
  }

  void _handleError(http.Response response) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw Exception(
          'Failed request: ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  void _logResponse(http.Response response) {
    log('Request URL: ${response.request?.url}');
    log('Response Code: ${response.statusCode}');
    log('Response Body: ${response.body}');
  }

  void _logError(dynamic error) {
    log('Error: $error');
  }
}
