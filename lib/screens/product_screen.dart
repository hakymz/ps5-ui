import 'package:flutter/material.dart';
import 'package:ps5_store_ui/models/product.dart';
import 'package:ps5_store_ui/styles/my_color.dart';
import 'package:ps5_store_ui/widgets/header.dart';
import 'package:ps5_store_ui/widgets/neumorphic_button.dart';
import 'package:ps5_store_ui/widgets/shadow.dart';

class ProductScreen extends StatelessWidget {
  final Product data;
  ProductScreen(this.data);

  _body(context) {
    var padding = MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var bodyHeight = MediaQuery.of(context).size.height - (padding + 65);
    return Container(
      height: bodyHeight,
      child: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.only(top: 50.0),
        decoration: BoxDecoration(
            color: MyColor().light,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0))),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: bodyHeight - 80.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(data.image), height: 220.0),
              SizedBox(
                height: 10.0,
              ),
              Image(
                image: AssetImage("assets/ring.png"),
                height: 60.0,
              ),
              _fetures(),
              _buyButton()
            ],
          ),
        ),
      )),
    );
  }

  _buyButton() {
    return Container(
      height: 55.0,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: MyColor().blue,
        boxShadow: Shadow().neumorphic(
            Colors.black.withOpacity(0.3), Colors.white.withOpacity(1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 80.0,
            height: 55.0,
            decoration: BoxDecoration(
                color: MyColor().darkBlue,
                borderRadius: BorderRadius.circular(30.0)),
            child: Center(
              child: Text(
                data.price,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: Text("Buy Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0)),
          ))
        ],
      ),
    );
  }

  _fetures() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25.0),
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: MyColor().light,
                boxShadow: Shadow().neumorphic(
                    Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.mic,
                  color: MyColor().blue,
                ),
                Text(
                  "Built-In Microphone",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: MyColor().light,
                boxShadow: Shadow().neumorphic(
                    Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.headset_mic,
                  color: MyColor().blue,
                ),
                Text(
                  "Headset Jack",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: MyColor().light,
                boxShadow: Shadow().neumorphic(
                    Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.router,
                  color: MyColor().blue,
                ),
                Text(
                  "Motion Sensor",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColor().dark,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Header(
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Button().iconButton(
                        MyColor().dark,
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Shadow().neumorphic(Colors.black.withOpacity(0.5),
                            Colors.grey.withOpacity(0.1)),
                        40.0),
                  ),
                  Button().iconButton(
                      MyColor().dark,
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      Shadow().neumorphic(Colors.black.withOpacity(0.5),
                          Colors.grey.withOpacity(0.1)),
                      40.0),
                  Image(
                    image: AssetImage("assets/ps5-logo-light.png"),
                    width: 120.0,
                  ),
                  MyColor().dark),
              _body(context)
            ],
          ),
        ),
      ),
    );
  }
}
