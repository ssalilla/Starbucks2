import 'package:flutter/material.dart';
import 'package:starbucks/models/cartItem.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> items = [];

  int getCount() {
    return this.items.length > 0
        ? this
            .items
            .fold(0, (previousValue, element) => previousValue + element.qty)
        : 0;
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

    notifyListeners();
  }

  void removeFromBasket(CartItem item) {
    this.items.remove(item);
    notifyListeners();
  }
}
