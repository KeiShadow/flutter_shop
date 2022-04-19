import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shop/utilities/StringExtension.dart';

class Utils {
  static AssetImage getImageByCategory(String category) {
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

  static Color getColorBackground(String? category) {
    switch (category) {
      case "electronics":
        return const Color.fromARGB(255, 125, 33, 33);
      case "jewelery":
        return const Color.fromARGB(255, 90, 88, 92);
      case "men's clothing":
        return const Color.fromARGB(255, 18, 47, 122);
      case "women's clothing":
        return const Color(0xff230242);
      default:
        return const Color.fromARGB(255, 90, 88, 92);
    }
  }

  static String getCategoryTitle(String category) {
    switch (category) {
      case "men's clothing":
        return "Men's";
      case "women's clothing":
        return "Women's";
      default:
        return category.capitalize();
    }
  }
}
