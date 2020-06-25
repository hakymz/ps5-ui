import 'package:flutter/material.dart';
import 'package:ps5_store_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PS5 STORE',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
