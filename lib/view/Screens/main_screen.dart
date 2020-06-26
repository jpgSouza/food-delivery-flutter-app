import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //Carousel Local Images Test
  int _currentImageIndex = 0;
  List imagesListURL = [
    "https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3821692/pexels-photo-3821692.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/266541/pexels-photo-266541.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black38, blurRadius: 10.0, offset: Offset(0, 6))
            ]),
            child: Carousel(
              images: imagesListURL.map((url) {
                return NetworkImage(url);
              }).toList(),
              overlayShadow: true,
              dotSize: 6.0,
              dotSpacing: 16.0,
              dotBgColor: Colors.transparent,
              dotColor: Theme.of(context).primaryColor,
              autoplay: false,
            ),
          ),
        ),
      ],
    ));
  }
}
