import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/clippers/curved_clipper.dart';
import 'package:flutter_shop/models/Product/product_model.dart';
import 'package:flutter_shop/utilities/Utils.dart';
import 'package:flutter_shop/widgets/custom_stepper.dart';
import 'package:getwidget/getwidget.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key, @required this.product}) : super(key: key);
  Product? product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0.0,
        backgroundColor: Colors.white,
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
      backgroundColor: Utils.getColorBackground(widget.product?.category),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: double.infinity,
              // height: 350,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, top: 12.0, bottom: 90),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          GFTypography(
                            text: widget.product?.category,
                            type: GFTypographyType.typo3,
                            showDivider: false,
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          GFTypography(
                            text: widget.product?.title,
                            showDivider: false,
                            type: GFTypographyType.typo6,
                            textColor: Colors.black87,
                          ),
                          const SizedBox(
                            height: 120.0,
                          ),
                          const GFTypography(
                            text: "Price",
                            showDivider: false,
                            type: GFTypographyType.typo6,
                            textColor: Colors.black54,
                          ),
                          GFTypography(
                            text: widget.product?.price.toString(),
                            showDivider: false,
                            type: GFTypographyType.typo2,
                            textColor: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: 200,
                        child: CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: widget.product!.image!,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
            child: GFTypography(
              text: "Description",
              type: GFTypographyType.typo4,
              textColor: Colors.white,
              showDivider: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: GFTypography(
              text: widget.product?.description,
              type: GFTypographyType.typo6,
              fontWeight: FontWeight.w300,
              textColor: Colors.white,
              showDivider: false,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomStepper(
                lowerLimit: 0,
                upperLimit: 3,
                iconSize: 24,
                stepValue: 0,
                value: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GFButton(
                  onPressed: () {},
                  text: "Buy now",
                  color: GFColors.LIGHT,
                  shape: GFButtonShape.pills,
                  type: GFButtonType.outline,
                  size: GFSize.SMALL,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
