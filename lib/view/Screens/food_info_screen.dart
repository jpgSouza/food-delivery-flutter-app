import 'package:carousel_pro/carousel_pro.dart';
import 'package:delivery_app/view/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class FoodInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Card List Local Image Test
    List imagesListURL = [
      "https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "https://images.pexels.com/photos/3821692/pexels-photo-3821692.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "https://images.pexels.com/photos/266541/pexels-photo-266541.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3.0,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10.0,
                            offset: Offset(0, 6))
                      ]),
                ),
              ],
            ),
            Positioned(
              width: 250.0,
              left: 30.0,
              child: Container(
                width: 320.0,
                height: 250.0,
                child: Image(
                  image: AssetImage('lib/assets/images/background/barbecue.png'),
                  height: 280.0,
                ),
              ),
            ),
            Positioned(
              top: 25.0,
              left: 10.0,
              child: IconButton(
                icon: Icon(Icons.keyboard_arrow_left, color: Colors.white70,size: 50.0,),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen()));
                },
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 5.0,
                      right: 10.0,
                      left: 10.0),
                  child: Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      color: Colors.white,
                      elevation: 6.0,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 180.0,
                              height: 150.0,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 10.0,
                                    offset: Offset(0, 6))
                              ]),
                              child: Carousel(
                                images: imagesListURL.map((imgURL) {
                                  return NetworkImage(imgURL);
                                }).toList(),
                                dotSize: 6.0,
                                dotSpacing: 16.0,
                                dotBgColor: Colors.transparent,
                                dotColor: Theme.of(context).primaryColor,
                                autoplay: true,
                                borderRadius: true,
                                radius: Radius.circular(12.0),
                              ),
                            ),
                            SizedBox(
                              width: 24.0,
                            ),
                            Flexible(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Costela de Boi",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                                Text(
                                  "500g de costela assada por 12 horas na brasa",
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.restaurant_menu,
                                      color: Colors.grey[500],
                                    ),
                                    Text(
                                      "- 3 pessoas",
                                      style: TextStyle(color: Colors.grey[500]),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "R\$ 49.99",
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      color: Theme.of(context).primaryColor,
                                    )
                                  ],
                                ),
                                Container(
                                  width: 140,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                          color: Colors.grey[500], width: 0.5),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 14.0,
                                            offset: Offset(0, 6))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        color: Theme.of(context).primaryColor,
                                        onPressed: () {},
                                        icon: Icon(Icons.remove_circle),
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.centerLeft,
                                        iconSize: 34.0,
                                      ),
                                      Text(
                                        "1 Uni",
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      IconButton(
                                        color: Theme.of(context).primaryColor,
                                        onPressed: () {},
                                        icon: Icon(Icons.add_circle),
                                        padding: EdgeInsets.zero,
                                        alignment: Alignment.centerRight,
                                        iconSize: 34.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30.0,
                      right: 10.0,
                      left: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      color: Colors.white,
                      elevation: 6.0,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                          "Acompanhamentos",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            padding: EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                bottom: 10.0,
                                top: 0.0),
                            child: ListView(
                              shrinkWrap: true,
                              physics: AlwaysScrollableScrollPhysics(),
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Farofa",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 16.0),
                                    ),
                                    Checkbox(
                                      onChanged: (value) {},
                                      value: true,
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      checkColor: Colors.white,
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Theme.of(context).primaryColor,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Mandioca Cozida",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 16.0),
                                    ),
                                    Checkbox(
                                      onChanged: (value) {},
                                      value: true,
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      checkColor: Colors.white,
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Theme.of(context).primaryColor,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Geleia de Pimenta",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 16.0),
                                    ),
                                    Checkbox(
                                      onChanged: (value) {},
                                      value: false,
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      checkColor: Colors.white,
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Theme.of(context).primaryColor,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Fritas",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 16.0),
                                    ),
                                    Checkbox(
                                      onChanged: (value) {},
                                      value: false,
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      checkColor: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Theme.of(context).primaryColor),
                        child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 400.0, minHeight: 55.0),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Text(
                                  "Adicionar ao Carrinho",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                )
                              ],
                            )),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
