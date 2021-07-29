import 'package:starbucks/models/option.dart';
import 'package:starbucks/models/optionGroup.dart';
import 'package:starbucks/models/product.dart';

//Database

final sizeGroup =
    OptionGroup(id: 1, title: "Size", type: OptionGroupType.RADIO, options: [
  Option(
      id: 1,
      title: "Tall",
      price: 0,
      img: "assets/size_small.png",
      subTitle: "12 Oz"),
  Option(
      id: 2,
      title: "Grande",
      price: 20,
      img: "assets/size_medium.png",
      subTitle: "16 Oz"),
  Option(
      id: 3,
      title: "Venti",
      price: 30,
      img: "assets/size_large.png",
      subTitle: "18 Oz"),
]);

class Data {
  static List<Product> products = [
    Product(
        id: 1,
        title: "เครื่องดื่มที่ 1",
        image: "assets/products/1.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 5, title: "วิปครีม"),
            Option(id: 6, title: "จาวาชิพ"),
            Option(id: 7, title: "คอฟฟี่เจลลี่"),
            Option(id: 8, title: "เฮเซลนัท"),
            Option(id: 9, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 2,
        title: "เครื่องดื่มที่ 2",
        image: "assets/products/2.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 10, title: "วิปครีม"),
            Option(id: 11, title: "จาวาชิพ"),
            Option(id: 12, title: "คอฟฟี่เจลลี่"),
            Option(id: 13, title: "เฮเซลนัท"),
            Option(id: 14, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 3,
        title: "เครื่องดื่มที่ 3",
        image: "assets/products/3.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 15, title: "วิปครีม"),
            Option(id: 16, title: "จาวาชิพ"),
            Option(id: 17, title: "คอฟฟี่เจลลี่"),
            Option(id: 18, title: "เฮเซลนัท"),
            Option(id: 19, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 4,
        title: "เครื่องดื่มที่ 4",
        image: "assets/products/4.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 20, title: "วิปครีม"),
            Option(id: 21, title: "จาวาชิพ"),
            Option(id: 22, title: "คอฟฟี่เจลลี่"),
            Option(id: 23, title: "เฮเซลนัท"),
            Option(id: 24, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 5,
        title: "เครื่องดื่มที่ 5",
        image: "assets/products/5.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 25, title: "วิปครีม"),
            Option(id: 26, title: "จาวาชิพ"),
            Option(id: 27, title: "คอฟฟี่เจลลี่"),
            Option(id: 28, title: "เฮเซลนัท"),
            Option(id: 29, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 6,
        title: "เครื่องดื่มที่ 6",
        image: "assets/products/6.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 30, title: "วิปครีม"),
            Option(id: 31, title: "จาวาชิพ"),
            Option(id: 32, title: "คอฟฟี่เจลลี่"),
            Option(id: 33, title: "เฮเซลนัท"),
            Option(id: 34, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 7,
        title: "เครื่องดื่มที่ 7",
        image: "assets/products/7.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 35, title: "วิปครีม"),
            Option(id: 36, title: "จาวาชิพ"),
            Option(id: 37, title: "คอฟฟี่เจลลี่"),
            Option(id: 38, title: "เฮเซลนัท"),
            Option(id: 39, title: "วนิลา"),
          ])
        ]),Product(
        id: 8,
        title: "เครื่องดื่มที่ 8",
        image: "assets/products/8.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 40, title: "วิปครีม"),
            Option(id: 41, title: "จาวาชิพ"),
            Option(id: 42, title: "คอฟฟี่เจลลี่"),
            Option(id: 43, title: "เฮเซลนัท"),
            Option(id: 44, title: "วนิลา"),
          ])
        ]),Product(
        id: 9,
        title: "เครื่องดื่มที่ 9",
        image: "assets/products/9.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 45, title: "วิปครีม"),
            Option(id: 46, title: "จาวาชิพ"),
            Option(id: 47, title: "คอฟฟี่เจลลี่"),
            Option(id: 48, title: "เฮเซลนัท"),
            Option(id: 49, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 10,
        title: "เครื่องดื่มที่ 10",
        image: "assets/products/10.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 50, title: "วิปครีม"),
            Option(id: 51, title: "จาวาชิพ"),
            Option(id: 52, title: "คอฟฟี่เจลลี่"),
            Option(id: 53, title: "เฮเซลนัท"),
            Option(id: 54, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 11,
        title: "เครื่องดื่มที่ 11",
        image: "assets/products/11.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 55, title: "วิปครีม"),
            Option(id: 56, title: "จาวาชิพ"),
            Option(id: 57, title: "คอฟฟี่เจลลี่"),
            Option(id: 58, title: "เฮเซลนัท"),
            Option(id: 59, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 12,
        title: "เครื่องดื่มที่ 12",
        image: "assets/products/12.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 60, title: "วิปครีม"),
            Option(id: 61, title: "จาวาชิพ"),
            Option(id: 62, title: "คอฟฟี่เจลลี่"),
            Option(id: 63, title: "เฮเซลนัท"),
            Option(id: 64, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 13,
        title: "เครื่องดื่มที่ 13",
        image: "assets/products/13.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 65, title: "วิปครีม"),
            Option(id: 66, title: "จาวาชิพ"),
            Option(id: 67, title: "คอฟฟี่เจลลี่"),
            Option(id: 68, title: "เฮเซลนัท"),
            Option(id: 69, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 14,
        title: "เครื่องดื่มที่ 14",
        image: "assets/products/14.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 70, title: "วิปครีม"),
            Option(id: 71, title: "จาวาชิพ"),
            Option(id: 72, title: "คอฟฟี่เจลลี่"),
            Option(id: 73, title: "เฮเซลนัท"),
            Option(id: 74, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 15,
        title: "เครื่องดื่มที่ 15",
        image: "assets/products/15.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 75, title: "วิปครีม"),
            Option(id: 76, title: "จาวาชิพ"),
            Option(id: 77, title: "คอฟฟี่เจลลี่"),
            Option(id: 78, title: "เฮเซลนัท"),
            Option(id: 79, title: "วนิลา"),
          ])
        ]),
    Product(
        id: 16,
        title: "เครื่องดื่มที่ 16",
        image: "assets/products/16.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "toppings", options: [
            Option(id: 80, title: "วิปครีม"),
            Option(id: 81, title: "จาวาชิพ"),
            Option(id: 82, title: "คอฟฟี่เจลลี่"),
            Option(id: 83, title: "เฮเซลนัท"),
            Option(id: 84, title: "วนิลา"),
          ])
        ]),


  ];
}
