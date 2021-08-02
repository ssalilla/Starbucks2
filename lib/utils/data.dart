import 'package:starbucks/models/option.dart';
import 'package:starbucks/models/optionGroup.dart';
import 'package:starbucks/models/payments.dart';
import 'package:starbucks/models/product.dart';

//Database

final sizeGroup = OptionGroup(
    id: 1,
    groupValue: 1,
    title: "ขนาด",
    type: OptionGroupType.RADIO,
    options: [
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
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 5, title: "วิปครีม", price: 30),
            Option(id: 6, title: "จาวาชิพ", price: 30),
            Option(id: 7, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 8, title: "เฮเซลนัท", price: 30),
            Option(id: 9, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 85, title: "หวานปกติ", price: 0),
                Option(id: 86, title: "หวานน้อย", price: 0),
                Option(id: 87, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 2,
        title: "เครื่องดื่มที่ 2",
        image: "assets/products/2.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 10, title: "วิปครีม", price: 30),
            Option(id: 11, title: "จาวาชิพ", price: 30),
            Option(id: 12, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 13, title: "เฮเซลนัท", price: 30),
            Option(id: 14, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 90, title: "หวานปกติ", price: 0),
                Option(id: 91, title: "หวานน้อย", price: 0),
                Option(id: 92, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 3,
        title: "เครื่องดื่มที่ 3",
        image: "assets/products/3.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 15, title: "วิปครีม", price: 30),
            Option(id: 16, title: "จาวาชิพ", price: 30),
            Option(id: 17, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 18, title: "เฮเซลนัท", price: 30),
            Option(id: 19, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 94, title: "หวานปกติ", price: 0),
                Option(id: 95, title: "หวานน้อย", price: 0),
                Option(id: 96, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 4,
        title: "เครื่องดื่มที่ 4",
        image: "assets/products/4.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 20, title: "วิปครีม", price: 30),
            Option(id: 21, title: "จาวาชิพ", price: 30),
            Option(id: 22, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 23, title: "เฮเซลนัท", price: 30),
            Option(id: 24, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 98, title: "หวานปกติ", price: 0),
                Option(id: 99, title: "หวานน้อย", price: 0),
                Option(id: 100, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 5,
        title: "เครื่องดื่มที่ 5",
        image: "assets/products/5.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 25, title: "วิปครีม", price: 30),
            Option(id: 26, title: "จาวาชิพ", price: 30),
            Option(id: 27, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 28, title: "เฮเซลนัท", price: 30),
            Option(id: 29, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 102, title: "หวานปกติ", price: 0),
                Option(id: 103, title: "หวานน้อย", price: 0),
                Option(id: 104, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 6,
        title: "เครื่องดื่มที่ 6",
        image: "assets/products/6.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 30, title: "วิปครีม", price: 30),
            Option(id: 31, title: "จาวาชิพ", price: 30),
            Option(id: 32, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 33, title: "เฮเซลนัท", price: 30),
            Option(id: 34, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 106, title: "หวานปกติ", price: 0),
                Option(id: 107, title: "หวานน้อย", price: 0),
                Option(id: 108, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 7,
        title: "เครื่องดื่มที่ 7",
        image: "assets/products/7.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 35, title: "วิปครีม", price: 30),
            Option(id: 36, title: "จาวาชิพ", price: 30),
            Option(id: 37, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 38, title: "เฮเซลนัท", price: 30),
            Option(id: 39, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 110, title: "หวานปกติ", price: 0),
                Option(id: 111, title: "หวานน้อย", price: 0),
                Option(id: 112, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 8,
        title: "เครื่องดื่มที่ 8",
        image: "assets/products/8.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 40, title: "วิปครีม", price: 30),
            Option(id: 41, title: "จาวาชิพ", price: 30),
            Option(id: 42, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 43, title: "เฮเซลนัท", price: 30),
            Option(id: 44, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 114, title: "หวานปกติ", price: 0),
                Option(id: 115, title: "หวานน้อย", price: 0),
                Option(id: 116, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 9,
        title: "เครื่องดื่มที่ 9",
        image: "assets/products/9.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 45, title: "วิปครีม", price: 30),
            Option(id: 46, title: "จาวาชิพ", price: 30),
            Option(id: 47, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 48, title: "เฮเซลนัท", price: 30),
            Option(id: 49, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 118, title: "หวานปกติ", price: 0),
                Option(id: 119, title: "หวานน้อย", price: 0),
                Option(id: 120, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 10,
        title: "เครื่องดื่มที่ 10",
        image: "assets/products/10.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 50, title: "วิปครีม", price: 30),
            Option(id: 51, title: "จาวาชิพ", price: 30),
            Option(id: 52, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 53, title: "เฮเซลนัท", price: 30),
            Option(id: 54, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 122, title: "หวานปกติ", price: 0),
                Option(id: 123, title: "หวานน้อย", price: 0),
                Option(id: 124, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 11,
        title: "เครื่องดื่มที่ 11",
        image: "assets/products/11.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 55, title: "วิปครีม", price: 30),
            Option(id: 56, title: "จาวาชิพ", price: 30),
            Option(id: 57, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 58, title: "เฮเซลนัท", price: 30),
            Option(id: 59, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 126, title: "หวานปกติ", price: 0),
                Option(id: 127, title: "หวานน้อย", price: 0),
                Option(id: 128, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 12,
        title: "เครื่องดื่มที่ 12",
        image: "assets/products/12.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 60, title: "วิปครีม", price: 30),
            Option(id: 61, title: "จาวาชิพ", price: 30),
            Option(id: 62, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 63, title: "เฮเซลนัท", price: 30),
            Option(id: 64, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 130, title: "หวานปกติ", price: 0),
                Option(id: 131, title: "หวานน้อย", price: 0),
                Option(id: 132, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 13,
        title: "เครื่องดื่มที่ 13",
        image: "assets/products/13.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 65, title: "วิปครีม", price: 30),
            Option(id: 66, title: "จาวาชิพ", price: 30),
            Option(id: 67, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 68, title: "เฮเซลนัท", price: 30),
            Option(id: 69, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 134, title: "หวานปกติ", price: 0),
                Option(id: 135, title: "หวานน้อย", price: 0),
                Option(id: 136, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 14,
        title: "เครื่องดื่มที่ 14",
        image: "assets/products/14.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 70, title: "วิปครีม", price: 30),
            Option(id: 71, title: "จาวาชิพ", price: 30),
            Option(id: 72, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 73, title: "เฮเซลนัท", price: 30),
            Option(id: 74, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 138, title: "หวานปกติ", price: 0),
                Option(id: 139, title: "หวานน้อย", price: 0),
                Option(id: 140, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 15,
        title: "เครื่องดื่มที่ 15",
        image: "assets/products/15.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 75, title: "วิปครีม", price: 30),
            Option(id: 76, title: "จาวาชิพ", price: 30),
            Option(id: 77, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 78, title: "เฮเซลนัท", price: 30),
            Option(id: 79, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 142, title: "หวานปกติ", price: 0),
                Option(id: 143, title: "หวานน้อย", price: 0),
                Option(id: 144, title: "ไม่หวาน", price: 0),
              ]),
        ]),
    Product(
        id: 16,
        title: "เครื่องดื่มที่ 16",
        image: "assets/products/16.png",
        price: 150.0,
        optionGroups: [
          sizeGroup,
          OptionGroup(id: 2, title: "ท๊อปปิ้ง", options: [
            Option(id: 80, title: "วิปครีม", price: 30),
            Option(id: 81, title: "จาวาชิพ", price: 30),
            Option(id: 82, title: "คอฟฟี่เจลลี่", price: 30),
            Option(id: 83, title: "เฮเซลนัท", price: 30),
            Option(id: 84, title: "วนิลา", price: 30),
          ]),
          OptionGroup(
              id: 3,
              type: OptionGroupType.RADIO,
              groupValue: 85,
              title: "ความหวาน",
              options: [
                Option(id: 146, title: "หวานปกติ", price: 0),
                Option(id: 147, title: "หวานน้อย", price: 0),
                Option(id: 148, title: "ไม่หวาน", price: 0),
              ]),
        ]),
  ];

  static List<Payment> payment = [
    Payment(
      id: 1,
      title: "กรุณาใส่เงิน",
    ),
    Payment(
      id: 2,
      title: "ระบบกำลังตรวจนับเงิน",
    ),
    Payment(
      id: 3,
      title: "กรุณารับบัตรคิวและเงินทอน",
    ),
    Payment(
      id: 4,
      title: "ขอบคุณที่ใช้บริการ",
    ),
  ];
}
