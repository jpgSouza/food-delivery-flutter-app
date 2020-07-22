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
    "https://images.pexels.com/photos/106343/pexels-photo-106343.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.7,
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
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Categorias", style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: <Widget>[
                  Text("Ver todas >", style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 4,
          ),
          padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0, bottom: 5.0),
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
                      child: Image(
                        image: AssetImage("lib/assets/images/icons/boi-icon.png"),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Boi",style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 13.0),),
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
                      child: Image(
                        image: AssetImage("lib/assets/images/icons/galinha-icon.png"),
                        color: Theme.of(context).primaryColor,
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Frango", style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 13.0),),
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
                      child: Image(
                        image: AssetImage("lib/assets/images/icons/porco-icon.png"),
                        color: Theme.of(context).primaryColor,
                        width: 45.0,
                        height: 45.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Porco",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold, fontSize: 13.0),),
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
                      child: Image(
                        image: AssetImage("lib/assets/images/icons/geleia-icon.png"),
                        color: Theme.of(context).primaryColor,
                        width: 45.0,
                        height: 45.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0,),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Geleias",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 13.0),),
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
