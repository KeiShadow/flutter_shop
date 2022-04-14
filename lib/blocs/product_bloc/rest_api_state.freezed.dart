// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestApiStateTearOff {
  const _$RestApiStateTearOff();

  LoadingState loading() {
    return const LoadingState();
  }

  ProductListContent fetchingProducts(List<Product> product) {
    return ProductListContent(
      product,
    );
  }

  CategoriesListContent fetchingCategories(List<String>? categories) {
    return CategoriesListContent(
      categories,
    );
  }

  ProductsByCategory fetchProductsByCategory(List<Product> products) {
    return ProductsByCategory(
      products,
    );
  }

  RestApiError error(String? message) {
    return RestApiError(
      message,
    );
  }
}

/// @nodoc
const $RestApiState = _$RestApiStateTearOff();

/// @nodoc
mixin _$RestApiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> product) fetchingProducts,
    required TResult Function(List<String>? categories) fetchingCategories,
    required TResult Function(List<Product> products) fetchProductsByCategory,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ProductListContent value) fetchingProducts,
    required TResult Function(CategoriesListContent value) fetchingCategories,
    required TResult Function(ProductsByCategory value) fetchProductsByCategory,
    required TResult Function(RestApiError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestApiStateCopyWith<$Res> {
  factory $RestApiStateCopyWith(
          RestApiState value, $Res Function(RestApiState) then) =
      _$RestApiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestApiStateCopyWithImpl<$Res> implements $RestApiStateCopyWith<$Res> {
  _$RestApiStateCopyWithImpl(this._value, this._then);

  final RestApiState _value;
  // ignore: unused_field
  final $Res Function(RestApiState) _then;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$RestApiStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState extends LoadingState {
  const _$LoadingState() : super._();

  @override
  String toString() {
    return 'RestApiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> product) fetchingProducts,
    required TResult Function(List<String>? categories) fetchingCategories,
    required TResult Function(List<Product> products) fetchProductsByCategory,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ProductListContent value) fetchingProducts,
    required TResult Function(CategoriesListContent value) fetchingCategories,
    required TResult Function(ProductsByCategory value) fetchProductsByCategory,
    required TResult Function(RestApiError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState extends RestApiState {
  const factory LoadingState() = _$LoadingState;
  const LoadingState._() : super._();
}

/// @nodoc
abstract class $ProductListContentCopyWith<$Res> {
  factory $ProductListContentCopyWith(
          ProductListContent value, $Res Function(ProductListContent) then) =
      _$ProductListContentCopyWithImpl<$Res>;
  $Res call({List<Product> product});
}

/// @nodoc
class _$ProductListContentCopyWithImpl<$Res>
    extends _$RestApiStateCopyWithImpl<$Res>
    implements $ProductListContentCopyWith<$Res> {
  _$ProductListContentCopyWithImpl(
      ProductListContent _value, $Res Function(ProductListContent) _then)
      : super(_value, (v) => _then(v as ProductListContent));

  @override
  ProductListContent get _value => super._value as ProductListContent;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(ProductListContent(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductListContent extends ProductListContent {
  const _$ProductListContent(this.product) : super._();

  @override
  final List<Product> product;

  @override
  String toString() {
    return 'RestApiState.fetchingProducts(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductListContent &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  $ProductListContentCopyWith<ProductListContent> get copyWith =>
      _$ProductListContentCopyWithImpl<ProductListContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> product) fetchingProducts,
    required TResult Function(List<String>? categories) fetchingCategories,
    required TResult Function(List<Product> products) fetchProductsByCategory,
    required TResult Function(String? message) error,
  }) {
    return fetchingProducts(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
  }) {
    return fetchingProducts?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fetchingProducts != null) {
      return fetchingProducts(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ProductListContent value) fetchingProducts,
    required TResult Function(CategoriesListContent value) fetchingCategories,
    required TResult Function(ProductsByCategory value) fetchProductsByCategory,
    required TResult Function(RestApiError value) error,
  }) {
    return fetchingProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
  }) {
    return fetchingProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (fetchingProducts != null) {
      return fetchingProducts(this);
    }
    return orElse();
  }
}

abstract class ProductListContent extends RestApiState {
  const factory ProductListContent(List<Product> product) =
      _$ProductListContent;
  const ProductListContent._() : super._();

  List<Product> get product;
  @JsonKey(ignore: true)
  $ProductListContentCopyWith<ProductListContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesListContentCopyWith<$Res> {
  factory $CategoriesListContentCopyWith(CategoriesListContent value,
          $Res Function(CategoriesListContent) then) =
      _$CategoriesListContentCopyWithImpl<$Res>;
  $Res call({List<String>? categories});
}

/// @nodoc
class _$CategoriesListContentCopyWithImpl<$Res>
    extends _$RestApiStateCopyWithImpl<$Res>
    implements $CategoriesListContentCopyWith<$Res> {
  _$CategoriesListContentCopyWithImpl(
      CategoriesListContent _value, $Res Function(CategoriesListContent) _then)
      : super(_value, (v) => _then(v as CategoriesListContent));

  @override
  CategoriesListContent get _value => super._value as CategoriesListContent;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(CategoriesListContent(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$CategoriesListContent extends CategoriesListContent {
  const _$CategoriesListContent(this.categories) : super._();

  @override
  final List<String>? categories;

  @override
  String toString() {
    return 'RestApiState.fetchingCategories(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoriesListContent &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  $CategoriesListContentCopyWith<CategoriesListContent> get copyWith =>
      _$CategoriesListContentCopyWithImpl<CategoriesListContent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> product) fetchingProducts,
    required TResult Function(List<String>? categories) fetchingCategories,
    required TResult Function(List<Product> products) fetchProductsByCategory,
    required TResult Function(String? message) error,
  }) {
    return fetchingCategories(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
  }) {
    return fetchingCategories?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fetchingCategories != null) {
      return fetchingCategories(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ProductListContent value) fetchingProducts,
    required TResult Function(CategoriesListContent value) fetchingCategories,
    required TResult Function(ProductsByCategory value) fetchProductsByCategory,
    required TResult Function(RestApiError value) error,
  }) {
    return fetchingCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
  }) {
    return fetchingCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (fetchingCategories != null) {
      return fetchingCategories(this);
    }
    return orElse();
  }
}

abstract class CategoriesListContent extends RestApiState {
  const factory CategoriesListContent(List<String>? categories) =
      _$CategoriesListContent;
  const CategoriesListContent._() : super._();

  List<String>? get categories;
  @JsonKey(ignore: true)
  $CategoriesListContentCopyWith<CategoriesListContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsByCategoryCopyWith<$Res> {
  factory $ProductsByCategoryCopyWith(
          ProductsByCategory value, $Res Function(ProductsByCategory) then) =
      _$ProductsByCategoryCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsByCategoryCopyWithImpl<$Res>
    extends _$RestApiStateCopyWithImpl<$Res>
    implements $ProductsByCategoryCopyWith<$Res> {
  _$ProductsByCategoryCopyWithImpl(
      ProductsByCategory _value, $Res Function(ProductsByCategory) _then)
      : super(_value, (v) => _then(v as ProductsByCategory));

  @override
  ProductsByCategory get _value => super._value as ProductsByCategory;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(ProductsByCategory(
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsByCategory extends ProductsByCategory {
  const _$ProductsByCategory(this.products) : super._();

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'RestApiState.fetchProductsByCategory(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsByCategory &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  $ProductsByCategoryCopyWith<ProductsByCategory> get copyWith =>
      _$ProductsByCategoryCopyWithImpl<ProductsByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> product) fetchingProducts,
    required TResult Function(List<String>? categories) fetchingCategories,
    required TResult Function(List<Product> products) fetchProductsByCategory,
    required TResult Function(String? message) error,
  }) {
    return fetchProductsByCategory(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
  }) {
    return fetchProductsByCategory?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fetchProductsByCategory != null) {
      return fetchProductsByCategory(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ProductListContent value) fetchingProducts,
    required TResult Function(CategoriesListContent value) fetchingCategories,
    required TResult Function(ProductsByCategory value) fetchProductsByCategory,
    required TResult Function(RestApiError value) error,
  }) {
    return fetchProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
  }) {
    return fetchProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (fetchProductsByCategory != null) {
      return fetchProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class ProductsByCategory extends RestApiState {
  const factory ProductsByCategory(List<Product> products) =
      _$ProductsByCategory;
  const ProductsByCategory._() : super._();

  List<Product> get products;
  @JsonKey(ignore: true)
  $ProductsByCategoryCopyWith<ProductsByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestApiErrorCopyWith<$Res> {
  factory $RestApiErrorCopyWith(
          RestApiError value, $Res Function(RestApiError) then) =
      _$RestApiErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$RestApiErrorCopyWithImpl<$Res> extends _$RestApiStateCopyWithImpl<$Res>
    implements $RestApiErrorCopyWith<$Res> {
  _$RestApiErrorCopyWithImpl(
      RestApiError _value, $Res Function(RestApiError) _then)
      : super(_value, (v) => _then(v as RestApiError));

  @override
  RestApiError get _value => super._value as RestApiError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(RestApiError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RestApiError extends RestApiError {
  const _$RestApiError(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'RestApiState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestApiError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $RestApiErrorCopyWith<RestApiError> get copyWith =>
      _$RestApiErrorCopyWithImpl<RestApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> product) fetchingProducts,
    required TResult Function(List<String>? categories) fetchingCategories,
    required TResult Function(List<Product> products) fetchProductsByCategory,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> product)? fetchingProducts,
    TResult Function(List<String>? categories)? fetchingCategories,
    TResult Function(List<Product> products)? fetchProductsByCategory,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ProductListContent value) fetchingProducts,
    required TResult Function(CategoriesListContent value) fetchingCategories,
    required TResult Function(ProductsByCategory value) fetchProductsByCategory,
    required TResult Function(RestApiError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ProductListContent value)? fetchingProducts,
    TResult Function(CategoriesListContent value)? fetchingCategories,
    TResult Function(ProductsByCategory value)? fetchProductsByCategory,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RestApiError extends RestApiState {
  const factory RestApiError(String? message) = _$RestApiError;
  const RestApiError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  $RestApiErrorCopyWith<RestApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
