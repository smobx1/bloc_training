import 'dart:convert';

import 'package:bloc_training/models/product.dart';
import 'package:http/http.dart' as http;

class DataService {
  final _baseUrl = 'jsonplaceholder.typicode.com';

  Future<List<Product>> getProducts() async {
    try {
      final uri = Uri.https(_baseUrl, '/posts');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final products =
          json.map((postJson) => Product.fromJson(postJson)).toList();
      return products;
    } catch (e) {
      throw e;
    }
  }
}
