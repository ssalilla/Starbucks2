import 'package:flutter/material.dart';
import 'package:starbucks/models/product.dart';
import 'package:starbucks/pages/cart.dart';
import 'package:starbucks/pages/productDetails.dart';
import 'package:starbucks/pages/productsList.dart';
import 'package:starbucks/utils/data.dart';

class RouteProvider extends ChangeNotifier {
  //Widget currentRouteWidget = ProductsList();
  Widget currentRouteWidget = ProductDetails(product: Data.products.first);

  void setRouteWidget({required String url, Product? product}) {
    switch (url) {
      case "/":
        this.currentRouteWidget = ProductsList();
        break;
      case "cart":
        this.currentRouteWidget = CartScreen();
        break;
      case "product":
        this.currentRouteWidget = ProductDetails(product: product!);
        break;
      default:
    }
    notifyListeners();
  }
}
