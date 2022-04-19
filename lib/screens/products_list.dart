import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_event.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_state.dart';
import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:flutter_shop/screens/product_detail.dart';
import 'package:flutter_shop/utilities/StringExtension.dart';
import 'package:getwidget/getwidget.dart';

class ProductLists extends StatefulWidget {
  const ProductLists({Key? key, required this.category, this.productTypes})
      : super(key: key);
  final String? category;
  final List<String>? productTypes;
  @override
  State<ProductLists> createState() => _ProductListsState();
}

class _ProductListsState extends State<ProductLists> {
  final RestApiBloc _restFetchProducts = RestApiBloc();
  @override
  void initState() {
    _restFetchProducts.add(ProductsByCategoryEvent(widget.category!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          iconTheme: const IconThemeData(color: Colors.black87),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: GFTypography(
            text: widget.category!.capitalize(),
            showDivider: false,
            type: GFTypographyType.typo3,
          ),
          actions: [
            GFIconButton(
              padding: const EdgeInsets.only(right: 20.0),
              icon: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black87,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
            GFIconButton(
              padding: const EdgeInsets.only(right: 20.0),
              icon: const Icon(
                Icons.person_outline,
                color: Colors.black87,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
          ],
        ),
        body: _BlocWidget());
  }

  Widget _BlocWidget() {
    return BlocProvider.value(
      value: _restFetchProducts,
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
            } else if (state is ProductsByCategory) {
              return Column(
                children: [
                  _budgeListWidget(widget.productTypes!),
                  Expanded(child: _buildGridView(state.products!)),
                ],
              );
            } else if (state is RestApiError) {
              return Container();
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _budgeListWidget(List<String> productsType) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: productsType
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(
                    left: 4.0, bottom: 4.0, right: 4.0, top: 4.0),
                child: GFButton(
                  onPressed: () {},
                  text: e,
                  color: GFColors.DARK,
                  size: GFSize.SMALL,
                  shape: GFButtonShape.pills,
                  type: e == "All" ? GFButtonType.solid : GFButtonType.outline,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildGridView(List<Product> products) {
    return CustomScrollView(
      primary: false,
      shrinkWrap: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
              crossAxisSpacing: 3,
              mainAxisSpacing: 10,
              crossAxisCount: 1,
              children: products
                  .map(
                    (product) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail(
                                      product: product,
                                    )),
                          );
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          shadowColor: GFColors.DARK,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Flexible(
                                  // fit: FlexFit.loose,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: CachedNetworkImage(
                                        imageUrl: product.image!),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                GFTypography(
                                  text: product.title,
                                  showDivider: false,
                                  type: GFTypographyType.typo4,
                                ),
                                const SizedBox(height: 8),
                                GFTypography(
                                  text: product.price.toString(),
                                  showDivider: false,
                                  type: GFTypographyType.typo5,
                                ),
                              ],
                            ),
                          ),
                        )),
                  )
                  .toList()),
        ),
      ],
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
