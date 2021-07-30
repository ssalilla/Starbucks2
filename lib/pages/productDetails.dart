import 'package:flutter/material.dart';
import 'package:starbucks/appLayout.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/customAppBar.dart';
import 'package:starbucks/components/qty.dart';
import 'package:starbucks/models/cartItem.dart';
import 'package:starbucks/models/option.dart';
import 'package:starbucks/models/optionGroup.dart';
import 'package:starbucks/models/product.dart';
import 'package:starbucks/pages/cart.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/providers/cartProvider.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int qty = 1;
  double price = 0;

  List<Option> selectedOptions = [];
  List<OptionGroup> radioOptions = [];

  @override
  void initState() {
    widget.product.optionGroups.forEach((element) {
      if (element.type == OptionGroupType.RADIO) {
        radioOptions.add(element);
      }
    });

    this._calcPrice();

    super.initState();
  }

  _calcPrice() {
    double total = widget.product.price;

    //Groups
    this.radioOptions.forEach((element) {
      if (element.getGroupValueOption() != null) {
        total += element.getGroupValueOption()!.price;
      }
    });

    this.selectedOptions.forEach((element) {
      total += element.price;
    });

    //this.price = (total + s.price) * qty;
    this.price = (total) * qty;
    setState(() {});
  }

  List<Option> getRadioOptions() {
    final List<Option> options = [];
    this.radioOptions.forEach((element) {
      if (element.groupValue != null) {
        options.add(element.getGroupValueOption()!);
      }
    });
    //remove size option
    options.removeAt(0);
    return options;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            width: 1024,
            child: Wrap(
              children: [
                // Left Side
                Container(
                  width: MediaQuery.of(context).size.width >= 1024
                      ? 350
                      : double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 230,
                        height: 230,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(widget.product.image))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.product.title}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "จำนวน",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          QtyInput(
                            value: this.qty,
                            onChange: (v) {
                              this.qty = v;
                              _calcPrice();
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "แก้ว",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ราคา",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              width: 150,
                              child: AppLayout.staticField(
                                  content: "${this.price}")),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "บาท",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // Right Side
                Container(
                  width: MediaQuery.of(context).size.width >= 1024
                      ? 674
                      : double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: AppTheme.green, width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: widget.product.optionGroups
                              .map((e) => Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.title,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Wrap(
                                          children: e.options
                                              .map(
                                                  (o) =>
                                                      e.type ==
                                                              OptionGroupType
                                                                  .RADIO
                                                          ? SizedBox(
                                                              width: 200,
                                                              child:
                                                                  RadioListTile(
                                                                      activeColor:
                                                                          Colors
                                                                              .white,
                                                                      title:
                                                                          Row(
                                                                        children: [
                                                                          if (o.img !=
                                                                              null) ...[
                                                                            Image(
                                                                              image: AssetImage(o.img!),
                                                                              width: 35,
                                                                            ),
                                                                            SizedBox(
                                                                              width: 10,
                                                                            )
                                                                          ],
                                                                          Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                o.title,
                                                                                style: TextStyle(color: Colors.white),
                                                                              ),
                                                                              if (o.subTitle != null)
                                                                                Text(
                                                                                  o.subTitle!,
                                                                                  style: TextStyle(color: Colors.grey.shade200, fontSize: 12),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      value:
                                                                          o.id,
                                                                      groupValue: this
                                                                          .radioOptions
                                                                          .firstWhere((element) =>
                                                                              element.id ==
                                                                              e
                                                                                  .id)
                                                                          .groupValue,
                                                                      onChanged:
                                                                          (v) {
                                                                        if (v
                                                                            is int) {
                                                                          final index = this.radioOptions.indexWhere((el) =>
                                                                              el.id ==
                                                                              e.id);
                                                                          this.radioOptions[index] = this
                                                                              .radioOptions[index]
                                                                              .copyWith(groupValue: v);
                                                                        }
                                                                        _calcPrice();
                                                                      }),
                                                            )
                                                          : SizedBox(
                                                              width: 200,
                                                              child:
                                                                  CheckboxListTile(
                                                                      controlAffinity:
                                                                          ListTileControlAffinity
                                                                              .leading,
                                                                      title:
                                                                          Text(
                                                                        o.title,
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white),
                                                                      ),
                                                                      value: this
                                                                          .selectedOptions
                                                                          .contains(
                                                                              o),
                                                                      onChanged:
                                                                          (v) {
                                                                        if (v! ==
                                                                            true) {
                                                                          this
                                                                              .selectedOptions
                                                                              .add(o);
                                                                        } else {
                                                                          this
                                                                              .selectedOptions
                                                                              .remove(o);
                                                                        }
                                                                        _calcPrice();
                                                                      }),
                                                            ))
                                              .toList(),
                                        )
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppLayout.button(
                              title: "ยกเลืก",
                              icon: Icons.cancel,
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          SizedBox(
                            width: 20,
                          ),
                          AppLayout.button(
                              title: "เพิ่มไปยังตะกร้า",
                              icon: Icons.check,
                              onPressed: () async {
                                final res = await AppLayout.showconfirmDialog(
                                    context,
                                    content: "เพิ่มสินค้านี้ไปยังตะกร้า?");
                                context.read<CartProvider>().addToBasket(
                                        CartItem(
                                            productId: widget.product.id,
                                            price: this.price,
                                            qty: this.qty,
                                            size: this.radioOptions.first.id,
                                            name: widget.product.title,
                                            unitPrice: this.price,
                                            options: [
                                          ...this.selectedOptions,
                                          ...this.getRadioOptions()
                                        ]));
                                if (res == true) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (c) => CartScreen()));
                                }
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
