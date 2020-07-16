import 'package:delivery_app/view/Screens/food_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FoodTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Card List Local Image Test
    List imagesListURL = [
      "https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "https://images.pexels.com/photos/3821692/pexels-photo-3821692.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "https://images.pexels.com/photos/106343/pexels-photo-106343.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ];

    return Container(
        height: 300.0,
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                elevation: 6.0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imagesListURL[0]),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Costela de Porco",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    color: Theme.of(context).primaryColor,
                                    size: 28.0,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.grey[500],
                                  ),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star_half,
                                      size: 20.0, color: Colors.grey[500]),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text("4.5")
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Container(
                                width: 170.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 10.0,
                                          offset: Offset(0, 6))
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      width: 85.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0))),
                                      child: Text(
                                        "R\$ 39.99",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        width: 85.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                            color: Hexcolor("#DE7386"),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8.0),
                                                bottomRight:
                                                Radius.circular(8.0))),
                                        child: FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        FoodInfoScreen()));
                                          },
                                          child: Text(
                                            "ADD",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                elevation: 6.0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imagesListURL[1]),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Costela de Boi    ",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    color: Theme.of(context).primaryColor,
                                    size: 28.0,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.grey[500],
                                  ),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star_half,
                                      size: 20.0, color: Colors.grey[500]),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text("4.5")
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Container(
                                width: 170.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 10.0,
                                          offset: Offset(0, 6))
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      width: 85.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0))),
                                      child: Text(
                                        "R\$ 49.99",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        width: 85.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                            color: Hexcolor("#DE7386"),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8.0),
                                                bottomRight:
                                                Radius.circular(8.0))),
                                        child: FlatButton(
                                          onPressed: () {},
                                          child: Text(
                                            "ADD",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                elevation: 6.0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imagesListURL[2]),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Coxa de Frango  ",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    color: Theme.of(context).primaryColor,
                                    size: 28.0,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: Colors.grey[500],
                                  ),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star,
                                      size: 20.0, color: Colors.grey[500]),
                                  Icon(Icons.star_half,
                                      size: 20.0, color: Colors.grey[500]),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text("4.5")
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Container(
                                width: 170.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 10.0,
                                          offset: Offset(0, 6))
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      width: 85.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0))),
                                      child: Text(
                                        "R\$ 29.99",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        width: 85.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                            color: Hexcolor("#DE7386"),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8.0),
                                                bottomRight:
                                                Radius.circular(8.0))),
                                        child: FlatButton(
                                          onPressed: () {},
                                          child: Text(
                                            "ADD",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
