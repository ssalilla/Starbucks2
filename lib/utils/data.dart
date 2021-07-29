import 'package:starbucks/models/option.dart';
import 'package:starbucks/models/optionGroup.dart';
import 'package:starbucks/models/product.dart';

//Database

final sizeGroup =
    OptionGroup(id: 1, title: "Size", type: OptionGroupType.RADIO, options: [
  Option(
      id: 1,
      title: "Small",
      price: 0,
      img: "assets/size_small.png",
      subTitle: "12 Oz"),
  Option(
      id: 2,
      title: "Medium",
      price: 20,
      img: "assets/size_medium.png",
      subTitle: "16 Oz"),
  Option(
      id: 3,
      title: "Large",
      price: 30,
      img: "assets/size_large.png",
      subTitle: "18 Oz"),
]);

class Data {
  static List<Product> products = [
    Product(
        id: 1,
        title: "Product Title",
        image: "assets/products/1.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 5, title: "blabla"),
            Option(id: 6, title: "brabra")
          ])
        ]),
    Product(id: 2, title: "Product Title", image: "assets/products/2.png"),
    Product(id: 3, title: "Product Title", image: "assets/products/3.png"),
    Product(id: 4, title: "Product Title", image: "assets/products/4.png"),
    Product(id: 5, title: "Product Title", image: "assets/products/5.png"),
    Product(id: 6, title: "Product Title", image: "assets/products/6.png"),
    Product(id: 7, title: "Product Title", image: "assets/products/7.png"),
    Product(id: 8, title: "Product Title", image: "assets/products/8.png"),
    Product(id: 9, title: "Product Title", image: "assets/products/9.png"),
    Product(id: 10, title: "Product Title", image: "assets/products/10.png"),
    Product(id: 11, title: "Product Title", image: "assets/products/11.png"),
    Product(id: 12, title: "Product Title", image: "assets/products/12.png"),
    Product(id: 13, title: "Product Title", image: "assets/products/13.png"),
    Product(id: 14, title: "Product Title", image: "assets/products/14.png"),
    Product(id: 15, title: "Product Title", image: "assets/products/15.png"),
    Product(id: 16, title: "Product Title", image: "assets/products/16.png"),
  ];
}
