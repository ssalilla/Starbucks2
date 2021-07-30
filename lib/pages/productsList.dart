import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/models/product.dart';
import 'package:starbucks/pages/productDetails.dart';
import 'package:starbucks/utils/data.dart';

class ProductsList extends StatefulWidget {
  ProductsList({Key? key}) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  PageController _controller = new PageController();
  List<List<Product>> productListChunks = [];

  @override
  void initState() {
    this._setProductArrayChunks();
    super.initState();
  }

  void _setProductArrayChunks() {
    int chunkSize = 8;
    int numberOfChunks = (Data.products.length / chunkSize).ceil();
    List<List<Product>> r = [];
    for (var i = 0; i < numberOfChunks; i++) {
      int current = i * chunkSize;
      int to = min(Data.products.length, current + chunkSize);
      r.add(Data.products.getRange(current, to).toList());
    }
    this.productListChunks = r;
  }

  Widget _controlButton(
      {required IconData icon, required Function() onPressed}) {
    return Container(
        width: MediaQuery.of(context).size.width * .2,
        child: IconButton(
            splashColor: Colors.white.withOpacity(0.1),
            iconSize: 100,
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: AppTheme.green,
            )));
  }

  Widget _itemsList({required List<Product> products, required int index}) {
    return Center(
      child: Container(
        width: 1024,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 40,
            runSpacing: 40,
            children: List.generate(
                products.length,
                (index) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (c) =>
                                    ProductDetails(product: products[index])));
                          },
                          child: Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(products[index].image)),
                                shape: BoxShape.circle),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${products[index].title}",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _controlButton(
                  icon: Icons.keyboard_arrow_left,
                  onPressed: () {
                    int page = this._controller.page?.floor() ?? 0;
                    if (page == 0) {
                      return;
                    } else {
                      page -= 1;
                    }
                    this._controller.animateToPage(page,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeOutCubic);
                  }),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                    child: PageView(
                        controller: _controller,
                        children: this
                            .productListChunks
                            .map(
                              (e) => _itemsList(
                                  products: e,
                                  index: this.productListChunks.indexOf(e)),
                            )
                            .toList()
                        //_itemsList(),

                        ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: this.productListChunks.length,
                    axisDirection: Axis.horizontal,
                    effect: WormEffect(
                        spacing: 16.0,
                        dotWidth: 24.0,
                        dotHeight: 24.0,
                        strokeWidth: 1.5,
                        dotColor: Colors.white,
                        activeDotColor: AppTheme.green),
                  )
                ],
              )),
              _controlButton(
                  icon: Icons.keyboard_arrow_right,
                  onPressed: () {
                    int page = this._controller.page?.ceil() ?? 0;

                    if (page >= this.productListChunks.length - 1) {
                      return;
                    } else {
                      page += 1;
                    }

                    this._controller.animateToPage(page,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeOutCubic);
                  }),
            ],
          )),
    );
  }
}
