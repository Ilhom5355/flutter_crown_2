import 'package:flutter/material.dart';
import 'package:flutter_crown_2/export_pages.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      margin: EdgeInsets.only(top: 15.0),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu),
          InkWell(
            onTap: () {},
            splashColor: white,
            child: Container(
              height: 65,
              width: 50,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
