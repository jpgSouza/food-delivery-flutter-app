import 'package:delivery_app/view/Screens/food_info_screen.dart';
import 'package:delivery_app/view/Screens/home_screen.dart';
import 'package:delivery_app/view/Screens/login_screen.dart';
import 'package:delivery_app/view/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Delivery",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Hexcolor('#D9455F')
      ),
      home: RegisterScreen()
    );
  }
}


