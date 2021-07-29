import 'package:starbucks/models/optionGroup.dart';

class Product {
  final int id;
  final String title;
  final String image;
  final double price;
  final List<OptionGroup> optionGroups;

  Product(
      {required this.title,
      required this.image,
      required this.id,
      this.optionGroups = const [],
      this.price = 0});
}
