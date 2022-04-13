import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_api_state.freezed.dart';

@freezed
abstract class RestApiState with _$RestApiState {
  const RestApiState._();
  const factory RestApiState.loading() = LoadingState;
  const factory RestApiState.fetchingProducts(List<Product> product) =
      ProductListContent;
  const factory RestApiState.fetchingCategories(List<String>? categories) =
      CategoriesListContent;
  const factory RestApiState.error(String? message) = RestApiError;
}
