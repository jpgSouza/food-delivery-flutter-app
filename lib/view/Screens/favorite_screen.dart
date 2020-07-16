import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  //Card List Local Image Test
  List imagesListURL = [
    "https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3821692/pexels-photo-3821692.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/266541/pexels-photo-266541.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding:
            EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0, bottom: 24.0),
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              elevation: 6.0,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.only(
                    left: 15.0, right: 5.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 8.0,
                            offset: Offset(0, 6)),
                      ], borderRadius: BorderRadius.circular(40.0)),
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                          imagesListURL[1],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[500],
                      height: 80.0,
                      width: 1.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Costela de Boi",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Categoria: Carne Bovina",
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 8.0,
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
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "R\$ 49.99",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite,
                            color: Theme.of(context).primaryColor,
                            size: 32.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              elevation: 6.0,
              margin: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.only(
                    left: 15.0, right: 5.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 8.0,
                            offset: Offset(0, 6)),
                      ], borderRadius: BorderRadius.circular(40.0)),
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                          imagesListURL[0],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[500],
                      height: 80.0,
                      width: 1.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Costela de porco",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Categoria: Carne Suína",
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 8.0,
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
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "R\$ 39.99",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite,
                            color: Theme.of(context).primaryColor,
                            size: 32.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
