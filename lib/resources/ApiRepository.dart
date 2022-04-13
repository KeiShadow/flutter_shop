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
}

class NetworkError extends Error {}
