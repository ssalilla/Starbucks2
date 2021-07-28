import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';

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
              Text(
                "STARBUCKS",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.08),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/shopping-cart.png"),
                          height: 24,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        _cartCountWidget(4),
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
                onTap: () {},
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
