import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_event.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_state.dart';
import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:flutter_shop/utilities/StringExtension.dart';
import 'package:getwidget/getwidget.dart';

class ProductLists extends StatefulWidget {
  const ProductLists({Key? key, this.category}) : super(key: key);
  final String? category;
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
              return _buildGridView(state.products);
            } else if (state is RestApiError) {
              return Container();
            }
            return Container();
          },
        ),
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
              crossAxisCount: 2,
              children: products
                  .map(
                    (product) => InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Flexible(
                              // fit: FlexFit.loose,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Image.network(
                                  product.image!,
                                  height: 110,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(product.title!),
                          ],
                        )),
                  )
                  .toList()),
        ),
      ],
    );
  }

  /**
   * 
   * 
   * 
   *  Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Ink.image(
                                    image: NetworkImage(product.image!),
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(product.title!),
                            ],
                          ),
                          elevation: 2,
                          shadowColor: GFColors.DARK,
                          margin: const EdgeInsets.all(20),
                        )
   *  Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ],
                          ),
                          // padding: const EdgeInsets.all(8),
                          child: GFImageOverlay(
                            borderRadius: BorderRadius.circular(8.0),
                            boxFit: BoxFit.cover,
                            image: CachedNetworkImageProvider(product.image!),
                          )),
   */

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
