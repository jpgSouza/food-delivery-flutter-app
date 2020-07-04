import 'package:delivery_app/view/Screens/orders_screen.dart';
import 'package:flutter/material.dart';

class OrderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12.0),
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0),
              width: 150.0,
              height: 150.0,
              child: Image(
                image: AssetImage('lib/view/images/background/accepted.png'),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Seu pedido foi realizado com sucesso!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Código do pedido",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "GNz6WztqfoZmoO6j6r3HugBoy5H3",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
