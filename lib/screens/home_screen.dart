import 'package:flutter/material.dart';
import 'package:ps5_store_ui/styles/my_color.dart';
import 'package:ps5_store_ui/widgets/neumorphic_button.dart';
import 'package:ps5_store_ui/widgets/products.dart';
import 'package:ps5_store_ui/widgets/shadow.dart';
import 'package:ps5_store_ui/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _bottomNav() {
    return Container(
      decoration: BoxDecoration(
          color: MyColor().dark,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0))),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Button().iconButton(
              MyColor().dark,
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Shadow().neumorphic(
                  Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
              40.0),
          Button().iconButton(
              MyColor().dark,
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Shadow().neumorphic(
                  Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
              40.0),
          Button().iconButton(
              MyColor().dark,
              Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              Shadow().neumorphic(
                  Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
              40.0),
          Button().iconButton(
              MyColor().dark,
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              Shadow().neumorphic(
                  Colors.black.withOpacity(0.5), Colors.grey.withOpacity(0.1)),
              40.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().light,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(
                Button().iconButton(
                    MyColor().light,
                    Icon(
                      Icons.sort,
                      color: Colors.black,
                    ),
                    Shadow()
                        .neumorphic(Colors.grey.withOpacity(0.3), Colors.white),
                    40.0),
                Button().iconButton(
                    MyColor().light,
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    Shadow()
                        .neumorphic(Colors.grey.withOpacity(0.3), Colors.white),
                    40.0),
                Image(
                  image: AssetImage("assets/ps5-logo.png"),
                  width: 120.0,
                ),
                MyColor().light),
            Products()
          ],
        ),
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }
}
