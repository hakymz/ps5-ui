import 'package:flutter/material.dart';

class Button {
  iconButton(bgColor, icon, boxShadow, size) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(7.0),
          boxShadow: boxShadow),
      child: icon,
    );
  }
}
