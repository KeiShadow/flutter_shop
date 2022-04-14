import 'package:flutter/widgets.dart';

class Images {
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
}
