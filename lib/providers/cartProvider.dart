import 'package:flutter/material.dart';
import 'package:starbucks/models/cartItem.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> items = [];
  double totalPrice = 0;

  int getCount() {
    return this.items.length > 0
        ? this
            .items
            .fold(0, (previousValue, element) => previousValue + element.qty)
        : 0;
  }

  _calcPrice() {
    this.totalPrice = 0;
    this.items.forEach((element) {
      totalPrice += element.price;
    });
  }

  void addToBasket(CartItem item) {
    final index = this.items.indexOf(item);

    if (index > -1) {
      final orItem = this.items[index];
      int qty = orItem.qty + item.qty;
      double newPrice = orItem.unitPrice * qty;
      this.items[index] = this.items[index].copyWith(price: newPrice, qty: qty);
    } else {
      this.items.add(item);
    }
    _calcPrice();

    notifyListeners();
  }

  void removeFromBasket(CartItem item) {
    final t =
        this.items.firstWhere((element) => element.productId == item.productId);
    items.remove(t);
    _calcPrice();

    notifyListeners();
  }
}
