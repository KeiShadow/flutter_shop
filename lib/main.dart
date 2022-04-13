import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_bloc.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_event.dart';
import 'package:flutter_shop/blocs/product_bloc/rest_api_state.dart';
import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:flutter_shop/utilities/StringExtension.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final RestApiBloc _restApiBloc = RestApiBloc();
  final RestApiBloc _restApiBloc2 = RestApiBloc();

  @override
  void initState() {
    _restApiBloc.add(const RestApiEvent.fetchCategoryList());
    _restApiBloc2.add(const RestApiEvent.fetchProductList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          "Shop",
          style: TextStyle(color: GFColors.DARK]\
          ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildFewProducts(),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: GFTypography(
              showDivider: false,
              type: GFTypographyType.typo3,
              text: "Category",
            ),
          ),
          _buildCategoriesList(),
        ],
      ),
    );
  }

  Widget _buildCategoriesList() {
    return BlocProvider.value(
      value: _restApiBloc,
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
              return _buildGridView(state.categories!);
            } else if (state is RestApiError) {
              return Container();
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
  Widget _buildGridView(List<String> categories) {
    return Expanded(
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: categories
                    .map(
                      (e) => Container(
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
                            image: _getImageByCategory(e),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e.capitalize(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                          // Align(
                          //   alignment: Alignment.bottomRight,

                          // ),
                          ),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }

  Widget _buildFewProducts() {
    return BlocProvider.value(
        value: _restApiBloc2,
        child: BlocListener<RestApiBloc, RestApiState>(
          listener: (context, state) {
            if (state is RestApiError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message!)),
              );
            }
          },
          child: BlocBuilder<RestApiBloc, RestApiState>(
            builder: ((context, state) {
              if (state is LoadingState) {
                return _buildLoading();
              } else if (state is ProductListContent) {
                return _buildCarouselWidget(state.product);
              } else if (state is RestApiError) {
                return Container();
              }
              return Container();
            }),
          ),
        ));
  }

  Widget _buildCarouselWidget(List<Product> products) {
    return Expanded(
      flex: 0,
      child: GFCarousel(
        viewportFraction: 1.0,
        autoPlay: true,
        items: products.map(
          (e) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GFImageOverlay(
                  alignment: Alignment.bottomLeft,
                  boxFit: BoxFit.contain,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        e.title ?? "",
                        style: const TextStyle(color: GFColors.WHITE),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 3.0)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e.price.toString(),
                            style: const TextStyle(color: GFColors.WHITE),
                          ),
                          Text(
                            e.category ?? "",
                            style: const TextStyle(color: GFColors.WHITE),
                          ),
                        ],
                      ),
                    ],
                  ),
                  image: CachedNetworkImageProvider(
                    e.image!,
                  ),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                ),
              ),
            );
          },
        ).toList(),
        onPageChanged: (index) {
          setState(() {
            index;
          });
        },
      ),
    );
  }

/**
 * ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: GFImageOverlay(
                  boxFit: BoxFit.fitHeight,
                  child: Center(
                      child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      e.category ?? "",
                      style: const TextStyle(color: GFColors.LIGHT),
                    ),
                  )),
                  width: 1000.0,
                  image: NetworkImage(e.image!),
                ),
              )

 * Container(
                  margin: const EdgeInsets.all(8.0),
                  child: GFImageOverlay(
                    boxFit: BoxFit.fitHeight,
                    child: Center(
                        child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        e.category ?? "",
                        style: const TextStyle(color: GFColors.LIGHT),
                      ),
                    )),
                    width: 1000.0,
                    image: NetworkImage(e.image!),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), BlendMode.darken),
                  ),
                ))
 */
  AssetImage _getImageByCategory(String category) {
    switch (category) {
      case "electronics":
        return const AssetImage("assets/images/electronics.jpg");
      case "jewelery":
        return const AssetImage("assets/images/jewelery.jpg");
      case "men's clothing":
        return const AssetImage("assets/images/mens_clothing.jpg");
      case "women's clothing":
        return const AssetImage("assets/images/womens_clothing.jpg");
      default:
        return const AssetImage("assets/images/electronics.jpg");
    }
  }
}
