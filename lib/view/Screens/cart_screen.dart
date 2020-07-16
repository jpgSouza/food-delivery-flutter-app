import 'package:delivery_app/view/Widgets/custom_order_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartScreen extends StatelessWidget {
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
          child: ListView(
            padding: EdgeInsets.only(
                left: 12.0, right: 12.0, top: 40.0, bottom: 0.0),
            children: <Widget>[
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  elevation: 6.0,
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 180.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imagesListURL[1]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Costela de boi",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Theme.of(context).primaryColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Farofa, mandioca cozida",
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Qtd: 1",
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                              SizedBox(
                                height: 4.0,
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
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "R\$ 49.99",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
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
                            ],
                          ),
                        )
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
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 180.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imagesListURL[0]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Costela de porco",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Theme.of(context).primaryColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Fritas",
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Qtd: 2",
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.restaurant_menu,
                                    color: Colors.grey[500],
                                  ),
                                  Text(
                                    "- 2 pessoas",
                                    style: TextStyle(color: Colors.grey[500]),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "R\$ 39.99",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
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
                            ],
                          ),
                        )
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
                child: ExpansionTile(
                  initiallyExpanded: false,
                  leading: Icon(
                    Icons.local_offer,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    "Cupom",
                    style: TextStyle(color: Colors.grey[500], fontSize: 18.0),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 10.0, top: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            )),
                            border: OutlineInputBorder(),
                            hintText: "Digite seu cupom",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                elevation: 6.0,
                child: ExpansionTile(
                  initiallyExpanded: false,
                  leading: Icon(
                    Icons.credit_card,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    "Forma de Pagamento",
                    style: TextStyle(color: Colors.grey[500], fontSize: 18.0),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 10.0, top: 0.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                //height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 6))
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Informações",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Subtotal",
                            style: TextStyle(
                              color: Colors.grey[500],
                            )),
                        Text(
                          "129.97 R\$",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey[500],
                      thickness: 0.6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Desconto",
                            style: TextStyle(
                              color: Colors.grey[500],
                            )),
                        Text(
                          "-12.99 R\$",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey[500],
                      thickness: 0.6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Entrega",
                            style: TextStyle(
                              color: Colors.grey[500],
                            )),
                        Text(
                          "4.99 R\$",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("TOTAL",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "121.97 R\$",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24.0, right: 24.0),
                      constraints:
                          BoxConstraints(maxWidth: 350.0, minHeight: 60.0),
                      child: OutlineButton(
                          padding: EdgeInsets.only(left: 40.0, right: 40.0),
                          color: Color.fromARGB(255, 217, 69, 65),
                          child: Tab(
                            icon: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Finalizar compra",
                                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                          highlightedBorderColor: Theme.of(context).primaryColor,
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2),
                          shape: StadiumBorder(),
                          onPressed: () {
                            showDialog(context: context, builder: (context)=> OrderDialog());
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
