import 'package:flutter/material.dart';
import 'package:ps5_store_ui/models/product.dart';
import 'package:ps5_store_ui/widgets/product_card.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProductCard(products_list[0]),
              ProductCard(products_list[1]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProductCard(products_list[2]),
              ProductCard(products_list[3]),
            ],
          ),
        ],
      ),
    );
  }
}
