import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:flutter_shop/providers/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();
  Future<List<Product>> fetchProductList() {
    return _provider.fetchProductList();
  }

  Future<List<String>> fetchCaetgoriesList() {
    return _provider.fetchAllCategories();
  }

  Future<List<Product>> fetchProductsByCategory(String category) {
    return _provider.fetchProductByCategory(category);
  }
}

class NetworkError extends Error {}
