import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:flutter_shop/providers/api_provider.dart';

List<Product>? productsByCategory;
Map<String, List<Product>> mapOfProductsByCategory = <String, List<Product>>{};

class ApiRepository {
  final _provider = ApiProvider();

  Future<List<Product>> fetchProductList() {
    return _provider.fetchProductList();
  }

  Future<List<String>> fetchCaetgoriesList() {
    return _provider.fetchAllCategories();
  }

  Future<List<Product>> fetchProductsByCategory(String category) async {
    if (mapOfProductsByCategory.isNotEmpty) {
      if (mapOfProductsByCategory[category] != null) {
        if (mapOfProductsByCategory[category]!.first.error == null) {
          return mapOfProductsByCategory[category]!;
        }
      }
    }
    productsByCategory = await _provider.fetchProductByCategory(category);

    mapOfProductsByCategory.addAll({category: productsByCategory!});
    return mapOfProductsByCategory[category]!;
  }
}

class NetworkError extends Error {}
