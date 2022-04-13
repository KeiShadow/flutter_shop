// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_api_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestApiEventTearOff {
  const _$RestApiEventTearOff();

  ProductListEvent fetchProductList() {
    return const ProductListEvent();
  }

  CategoriesListEvent fetchCategoryList() {
    return const CategoriesListEvent();
  }
}

/// @nodoc
const $RestApiEvent = _$RestApiEventTearOff();

/// @nodoc
mixin _$RestApiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProductList,
    required TResult Function() fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProductList,
    TResult Function()? fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProductList,
    TResult Function()? fetchCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListEvent value) fetchProductList,
    required TResult Function(CategoriesListEvent value) fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductListEvent value)? fetchProductList,
    TResult Function(CategoriesListEvent value)? fetchCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListEvent value)? fetchProductList,
    TResult Function(CategoriesListEvent value)? fetchCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestApiEventCopyWith<$Res> {
  factory $RestApiEventCopyWith(
          RestApiEvent value, $Res Function(RestApiEvent) then) =
      _$RestApiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestApiEventCopyWithImpl<$Res> implements $RestApiEventCopyWith<$Res> {
  _$RestApiEventCopyWithImpl(this._value, this._then);

  final RestApiEvent _value;
  // ignore: unused_field
  final $Res Function(RestApiEvent) _then;
}

/// @nodoc
abstract class $ProductListEventCopyWith<$Res> {
  factory $ProductListEventCopyWith(
          ProductListEvent value, $Res Function(ProductListEvent) then) =
      _$ProductListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductListEventCopyWithImpl<$Res>
    extends _$RestApiEventCopyWithImpl<$Res>
    implements $ProductListEventCopyWith<$Res> {
  _$ProductListEventCopyWithImpl(
      ProductListEvent _value, $Res Function(ProductListEvent) _then)
      : super(_value, (v) => _then(v as ProductListEvent));

  @override
  ProductListEvent get _value => super._value as ProductListEvent;
}

/// @nodoc

class _$ProductListEvent extends ProductListEvent {
  const _$ProductListEvent() : super._();

  @override
  String toString() {
    return 'RestApiEvent.fetchProductList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProductList,
    required TResult Function() fetchCategoryList,
  }) {
    return fetchProductList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProductList,
    TResult Function()? fetchCategoryList,
  }) {
    return fetchProductList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProductList,
    TResult Function()? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (fetchProductList != null) {
      return fetchProductList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListEvent value) fetchProductList,
    required TResult Function(CategoriesListEvent value) fetchCategoryList,
  }) {
    return fetchProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductListEvent value)? fetchProductList,
    TResult Function(CategoriesListEvent value)? fetchCategoryList,
  }) {
    return fetchProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListEvent value)? fetchProductList,
    TResult Function(CategoriesListEvent value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (fetchProductList != null) {
      return fetchProductList(this);
    }
    return orElse();
  }
}

abstract class ProductListEvent extends RestApiEvent {
  const factory ProductListEvent() = _$ProductListEvent;
  const ProductListEvent._() : super._();
}

/// @nodoc
abstract class $CategoriesListEventCopyWith<$Res> {
  factory $CategoriesListEventCopyWith(
          CategoriesListEvent value, $Res Function(CategoriesListEvent) then) =
      _$CategoriesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesListEventCopyWithImpl<$Res>
    extends _$RestApiEventCopyWithImpl<$Res>
    implements $CategoriesListEventCopyWith<$Res> {
  _$CategoriesListEventCopyWithImpl(
      CategoriesListEvent _value, $Res Function(CategoriesListEvent) _then)
      : super(_value, (v) => _then(v as CategoriesListEvent));

  @override
  CategoriesListEvent get _value => super._value as CategoriesListEvent;
}

/// @nodoc

class _$CategoriesListEvent extends CategoriesListEvent {
  const _$CategoriesListEvent() : super._();

  @override
  String toString() {
    return 'RestApiEvent.fetchCategoryList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CategoriesListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProductList,
    required TResult Function() fetchCategoryList,
  }) {
    return fetchCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProductList,
    TResult Function()? fetchCategoryList,
  }) {
    return fetchCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProductList,
    TResult Function()? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (fetchCategoryList != null) {
      return fetchCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListEvent value) fetchProductList,
    required TResult Function(CategoriesListEvent value) fetchCategoryList,
  }) {
    return fetchCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductListEvent value)? fetchProductList,
    TResult Function(CategoriesListEvent value)? fetchCategoryList,
  }) {
    return fetchCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListEvent value)? fetchProductList,
    TResult Function(CategoriesListEvent value)? fetchCategoryList,
    required TResult orElse(),
  }) {
    if (fetchCategoryList != null) {
      return fetchCategoryList(this);
    }
    return orElse();
  }
}

abstract class CategoriesListEvent extends RestApiEvent {
  const factory CategoriesListEvent() = _$CategoriesListEvent;
  const CategoriesListEvent._() : super._();
}
