import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_event.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_state.dart';
import 'package:flutter_shop/resources/ApiRepository.dart';

class RestApiBloc extends Bloc<RestApiEvent, RestApiState> {
  RestApiBloc() : super(const RestApiState.loading()) {
    final ApiRepository? _apiRepository = ApiRepository();
    on<ProductListEvent>((event, emit) async {
      try {
        emit(const RestApiState.loading());
        final mList = await _apiRepository?.fetchProductList();
        emit(RestApiState.fetchingProducts(mList!));
        if (mList.first.error != null) {
          emit(RestApiState.error(mList.first.error));
        }
      } on NetworkError {
        emit(const RestApiState.error("Fetching data error"));
      }
    });
    on<CategoriesListEvent>((event, emit) async {
      try {
        emit(const RestApiState.loading());
        final mList = await _apiRepository?.fetchCaetgoriesList();
        emit(RestApiState.fetchingCategories(mList));
        if (mList!.isEmpty) {
          emit(const RestApiState.error("Error"));
        }
      } on NetworkError {
        emit(const RestApiState.error("Fetching data error"));
      }
    });
    on<ProductsByCategoryEvent>((event, emit) async {
      try {
        emit(const RestApiState.loading());
        final mList =
            await _apiRepository?.fetchProductsByCategory(event.category);
        emit(RestApiState.fetchProductsByCategory(mList!));
        print(mList.toString());
        if (mList.first.error != null) {
          emit(RestApiState.error(mList.first.error));
        }
      } on NetworkError {
        emit(const RestApiState.error("Fetching data error"));
      }
    });
  }
}
