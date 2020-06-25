import 'package:flutter/material.dart';
import 'package:ps5_store_ui/models/product.dart';
import 'package:ps5_store_ui/screens/product_screen.dart';
import 'package:ps5_store_ui/styles/my_color.dart';
import 'package:ps5_store_ui/widgets/shadow.dart';

class ProductCard extends StatelessWidget {
  final Product _product;
  ProductCard(this._product);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductScreen(_product)));
      },
      child: Container(
        height: 250.0,
        width: MediaQuery.of(context).size.width / 2 - 40,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: MyColor().light,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: Shadow().neumorphic(
              Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              size: 15.0,
            ),
            Center(
              child: Image(
                image: AssetImage(_product.image),
                height: 150.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              _product.type,
              style: TextStyle(fontSize: 10.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              _product.name,
              style: TextStyle(
                  fontSize: 14.0,
                  color: MyColor().blue,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
