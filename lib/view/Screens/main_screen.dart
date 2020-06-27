import 'package:carousel_pro/carousel_pro.dart';
import 'package:delivery_app/view/Tiles/food_tile.dart';
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

  //Items List Local Icons Test
  List iconListURL = [
    "https://img.icons8.com/ios/50/000000/year-of-ox.png",
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
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 4,
          ),
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10.0,
                              offset: Offset(0, 6))
                        ]),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Carne de Boi",style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10.0,
                              offset: Offset(0, 6))
                        ]),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Carne de Frango", style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10.0,
                              offset: Offset(0, 6))
                        ]),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Carne de Porco",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10.0,
                              offset: Offset(0, 6))
                        ]),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0,),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Geleia",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        FoodTile(),
      ],
    ));
  }
}
