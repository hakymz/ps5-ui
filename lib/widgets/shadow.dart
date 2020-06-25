import 'package:flutter/material.dart';

class Shadow {
  List<BoxShadow> neumorphic(darkColor, lightColor) {
    return [
      BoxShadow(color: darkColor, blurRadius: 5.0, offset: Offset(2.0, 2.0)),
      BoxShadow(color: lightColor, blurRadius: 5.0, offset: Offset(-2.0, -2.0))
    ];
  }
}
