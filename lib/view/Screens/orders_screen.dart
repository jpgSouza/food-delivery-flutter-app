import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.only(left: 6.0, right: 6.0, top: 32.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                elevation: 6.0,
                child: ExpansionTile(
                  initiallyExpanded: false,
                  title: Text(
                    "Pedido: GNz6WztqfoZmo",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    Container(
                      height: 10.0,
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
                  title: Text(
                    "Pedido: O6j6r3HugBoy5H3",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12.0),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Detalhes do pedido:",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          Text(
                            "2x Costela de Boi (R\$ 49.99)",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          Text(
                            "1x Costela de Porco (R\$ 39.99)",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Acompanhamentos:",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          Text(
                            "1x Porção de Fritas (R\$ 9.99)",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          Text(
                            "1x Geleia de Pimenta (R\$ 4.99)",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Subtotal: ",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              Text(
                                "R\$ 154.95",
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Entrega: ",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              Text(
                                "R\$ 4.99",
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Total: ",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              Text(
                                "R\$ 159.94",
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Cobrança:",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          Text(
                            "Endereco: Rua Oswaldo de Oliveira, 315",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          Text(
                            "Pagamento: Mastercard Crédito",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Status do pedido: ",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            padding: EdgeInsets.only(left: 1.0, right: 1.0),
                            child: Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  _buildStatusCircle("1", "Realizado","(20:00)", 3, 2, context),
                                  Container(
                                    height: 1.0,
                                    width: 30.0,
                                    margin: EdgeInsets.only(bottom: 28.0),
                                    color: Colors.grey[500],
                                  ),
                                  _buildStatusCircle("2","Visualizado","(20:05)", 3, 2, context),
                                  Container(
                                    height: 1.0,
                                    width: 30.0,
                                    margin: EdgeInsets.only(bottom: 28.0, right: 16.0),
                                    color: Colors.grey[500],
                                  ),
                                  _buildStatusCircle("3","Saiu","(--:--)", 3, 3, context),
                                  Container(
                                    height: 1.0,
                                    width: 30.0,
                                    margin: EdgeInsets.only(bottom: 28.0, left: 16.0),
                                    color: Colors.grey[500],
                                  ),
                                  _buildStatusCircle("4","Entregue","(--:--)", 3, 4, context),
                                ],
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }

  Widget _buildStatusCircle(
      String title, String subTitle, String orderDateTime ,int status, int thisStatus, BuildContext context) {
    Color _backgroundColor;
    Widget _child;

    if (status < thisStatus) {
      _backgroundColor = Colors.grey[500];
      _child = Text(
        title,
        style: TextStyle(color: Colors.white),
      );
    } else if (status == thisStatus) {
      _backgroundColor = Colors.blueAccent;
      _child = Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        ],
      );
    } else {
      _backgroundColor = Theme.of(context).primaryColor;
      _child = Icon(
        Icons.check,
        color: Colors.white,
      );
    }

    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 18.0,
          backgroundColor: _backgroundColor,
          child: _child,
        ),
        Text(subTitle, style: TextStyle(color: Colors.grey[850], fontSize: 13.0),),
        Text(orderDateTime, style: TextStyle(color: Colors.grey[850], fontSize: 13.0),)
      ],
    );
  }
}
