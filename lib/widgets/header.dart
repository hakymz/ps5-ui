import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget leadingButton;
  final Widget actionButton;
  final Image logo;
  final Color bgColor;

  Header(this.leadingButton, this.actionButton, this.logo, this.bgColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[leadingButton, logo, actionButton],
      ),
    );
  }
}
