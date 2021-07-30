import 'package:flutter/foundation.dart';
import 'package:starbucks/models/option.dart';

class CartItem {
  final double price;
  final List<Option> options;
  final int qty;
  final int size;
  final String name;
  final double unitPrice;
  final int productId;

  @override
  bool operator ==(other) {
    return (other is CartItem &&
        other.productId == this.productId &&
        other.size == this.size &&
        listEquals(this.options, other.options));
  }

  CartItem(
      {required this.price,
      this.options = const [],
      required this.qty,
      required this.size,
      required this.productId,
      required this.unitPrice,
      required this.name});

  CartItem copyWith(
      {double? price,
      List<Option>? options,
      int? qty,
      int? size,
      String? name,
      double? unitPrice}) {
    return CartItem(
        productId: this.productId,
        price: price ?? this.price,
        qty: qty ?? this.qty,
        size: size ?? this.size,
        name: name ?? this.name,
        unitPrice: unitPrice ?? this.unitPrice);
  }

  @override
  int get hashCode => super.hashCode;
}
