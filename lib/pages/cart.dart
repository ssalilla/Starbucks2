import 'package:flutter/material.dart';
import 'package:starbucks/appLayout.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/customAppBar.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/models/cartItem.dart';
import 'package:starbucks/pages/productsList.dart';
import 'package:starbucks/providers/cartProvider.dart';
import 'package:starbucks/utils/data.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Widget _wd({List<Widget> children = const [], bool isMobile = false}) {
    if (isMobile) {
      return Wrap(
        children: children,
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: children,
    );
  }

  //basket item
  Widget _basketItem(CartItem item) {
    final isMobile = MediaQuery.of(context).size.width < 700;
    final sizeOption =
        sizeGroup.options.firstWhere((element) => element.id == item.size);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: _wd(
        isMobile: isMobile,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: AppTheme.green, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    item.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    image: AssetImage(sizeOption.img!),
                    width: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${sizeOption.title}\n${sizeOption.subTitle}",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  ...item.options
                      .map((e) => Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.1)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                Text(
                                  e.title,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ))
                      .toList()
                ],
              ),
            ],
          ),
          if (!isMobile)
            Expanded(
              child: Container(),
            ),
          Row(
            children: [
              Text(
                "จำนวน",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              AppLayout.staticField(content: item.qty.toString()),
              SizedBox(
                width: 10,
              ),
              Text(
                "แก้ว",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: 25,
          ),
          Row(
            children: [
              Text(
                "ราคา",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              AppLayout.staticField(content: item.price.toString()),
              SizedBox(
                width: 10,
              ),
              Text(
                "บาท",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartProvider>();
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 1024,
                decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.green, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ตะกร้าสินค้า",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    if (cart.items.isEmpty)
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          "ตะกร้ายังไม่มีสินค้า",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ...List.generate(cart.items.length,
                        (index) => _basketItem(cart.items[index]))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (cart.items.isNotEmpty)
                Container(
                  width: 1024,
                  child: Row(
                    children: [
                      AppLayout.button(
                          title: "ยกเลิก",
                          icon: Icons.cancel,
                          onPressed: () {}),
                      Expanded(child: Container()),
                      AppLayout.button(
                          title: "สั่งซื้อเพิ่มเติม",
                          icon: Icons.shopping_bag,
                          onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                                builder: (c) => ProductsList()));
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      AppLayout.button(
                          title: "ตกลง",
                          icon: Icons.check,
                          onPressed: () {}),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
