import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_event.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_state.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final RestApiBloc _restApiBloc = RestApiBloc();

  @override
  void initState() {
    _restApiBloc.add(const RestApiEvent.fetchCategoryList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildProductList(),
    );
  }

  Widget _buildProductList() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _restApiBloc,
        child: BlocListener<RestApiBloc, RestApiState>(
          listener: (context, state) {
            if (state is RestApiError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message!)),
              );
            }
          },
          child: BlocBuilder<RestApiBloc, RestApiState>(
            builder: (context, state) {
              if (state is LoadingState) {
                return _buildLoading();
              } else if (state is CategoriesListContent) {
                print(state.categories.toString());
                return Container();
              } else if (state is RestApiError) {
                return Container();
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  /*
  BlocProvider(
        create: (_) => _productsBloc,
        child: BlocListener<RestApiBloc, RestApiState>(
          listener: (context, state) {
            if (state is ProductListError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message!)),
              );
            }
          },
          child: BlocBuilder<RestApiBloc, RestApiState>(
            builder: (context, state) {
              if (state is LoadingState) {
                return _buildLoading();
              } else if (state is ProductListContent) {
                print(state.product.toString());
                return Container();
              } else if (state is ProductListError) {
                return Container();
              }
              return Container();
            },
          ),
        ),
      ),
  */
}
