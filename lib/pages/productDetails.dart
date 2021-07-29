import 'package:flutter/material.dart';
import 'package:starbucks/appLayout.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/qty.dart';
import 'package:starbucks/models/option.dart';
import 'package:starbucks/models/optionGroup.dart';
import 'package:starbucks/models/product.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/providers/routeProvider.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int qty = 1;

  List<Option> selectedOptions = [];
  dynamic size = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final routeProvider = context.read<RouteProvider>();

    return Container(
      width: 1024,
      child: Wrap(
        children: [
          // Left Side
          Container(
            width: MediaQuery.of(context).size.width >= 1024
                ? 350
                : double.infinity,
            child: Column(
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
                      "Amount",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    QtyInput(
                      value: this.qty,
                      onChange: (v) {
                        this.qty = v;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Glasses",
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
                      "Price",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: 150,
                        child: AppLayout.staticField(content: "150")),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "THB",
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
                  height: 400,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        .map((o) => e.type ==
                                                OptionGroupType.RADIO
                                            ? SizedBox(
                                                width: 200,
                                                child: RadioListTile(
                                                    activeColor: Colors.white,
                                                    title: Row(
                                                      children: [
                                                        if (o.img != null) ...[
                                                          Image(
                                                            image: AssetImage(
                                                                o.img!),
                                                            width: 35,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          )
                                                        ],
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              o.title,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            if (o.subTitle !=
                                                                null)
                                                              Text(
                                                                o.subTitle!,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade200,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    value: o.id,
                                                    groupValue: this.size,
                                                    onChanged: (v) {
                                                      this.size = v;
                                                      setState(() {});
                                                    }),
                                              )
                                            : SizedBox(
                                                width: 200,
                                                child: CheckboxListTile(
                                                    controlAffinity:
                                                        ListTileControlAffinity
                                                            .leading,
                                                    title: Text(
                                                      o.title,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    value: this
                                                        .selectedOptions
                                                        .contains(o),
                                                    onChanged: (v) {
                                                      if (v! == true) {
                                                        this
                                                            .selectedOptions
                                                            .add(o);
                                                      } else {
                                                        this
                                                            .selectedOptions
                                                            .remove(o);
                                                      }
                                                      setState(() {});
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
                        title: "Cancel",
                        icon: Icons.cancel,
                        onPressed: () {
                          routeProvider.setRouteWidget(url: "/");
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    AppLayout.button(
                        title: "Add to basket",
                        icon: Icons.check,
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
