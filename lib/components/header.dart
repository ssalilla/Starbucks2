import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/mainScreen.dart';
import 'package:starbucks/pages/cart.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/providers/cartProvider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  Widget _cartCountWidget(int count) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Text(
        "$count",
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      height: 100,
      color: AppTheme.green,
      child: Row(
        children: [
          //logo
          Image(
            image: AssetImage("assets/logo.png"),
          ),
          Expanded(child: Container()),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MediaQuery.of(context).size.width > 500
                  ? Text(
                      "STARBUCKS",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.08),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  : Container(),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      MainScreenState.navKey.currentState
                          ?.popUntil((route) => route.isFirst);
                      MainScreenState.navKey.currentState?.push(
                          MaterialPageRoute(
                              builder: (c) => CartScreen(),
                              settings: RouteSettings(name: "cart")));
                    },
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/shopping-cart.png"),
                          height: 24,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        _cartCountWidget(cart.getCount()),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage("assets/flag.png"),
                    width: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Thai(TH)",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          // Home Button
          Container(
            width: 80,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  MainScreenState.navKey.currentState!
                      .popUntil((route) => route.isFirst);
                },
                child: Icon(
                  Icons.home,
                  color: AppTheme.green,
                  size: 65,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
