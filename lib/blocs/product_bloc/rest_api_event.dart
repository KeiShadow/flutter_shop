import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_api_event.freezed.dart';

@freezed
abstract class RestApiEvent with _$RestApiEvent {
  const RestApiEvent._();
  const factory RestApiEvent.fetchProductList() = ProductListEvent;
  const factory RestApiEvent.fetchCategoryList() = CategoriesListEvent;
  const factory RestApiEvent.fetchProductsByCategory(String category) =
      ProductsByCategoryEvent;
}
