import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  // const Product.withError(String errorMessage);

  @JsonSerializable(explicitToJson: true)
  const factory Product({
    int? id,
    String? title,
    double? price,
    String? category,
    String? description,
    String? image,
    String? error,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
