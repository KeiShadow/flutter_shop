import 'package:dio/dio.dart';
import 'package:flutter_shop/models/Product/product_model.dart';

class ApiProvider {
  final Dio _dio = Dio();

  final String limitedProductListUrl =
      'https://fakestoreapi.com/products?limit=5';
  final String allCategoriesListUrl =
      'https://fakestoreapi.com/products/categories';

  final String productsByCategoryUrl =
      "https://fakestoreapi.com/products/category/";

  //Fetching all products
  Future<List<Product>> fetchProductList() async {
    List<Product> prodList = [];
    try {
      Response response = await _dio.get(limitedProductListUrl);

      for (var prod in response.data) {
        prodList.add(Product.fromJson(prod));
      }

      return prodList;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      prodList.add(const Product(error: "Data not found / Connection issue"));
      return prodList;
    }
  }

  //Fetching all categories
  Future<List<String>> fetchAllCategories() async {
    try {
      Response response = await _dio.get(allCategoriesListUrl);
      return (response.data as List<dynamic>).map((e) => e as String).toList();
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return List.empty();
    }
  }

  Future<List<Product>> fetchProductByCategory(String category) async {
    List<Product> prodList = [];
    try {
      Response response = await _dio.get('$productsByCategoryUrl$category');

      for (var prod in response.data) {
        prodList.add(Product.fromJson(prod));
      }
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      prodList.add(const Product(error: "Data not found / Connection issue"));
      return prodList;
    }
    return prodList;
  }
}
