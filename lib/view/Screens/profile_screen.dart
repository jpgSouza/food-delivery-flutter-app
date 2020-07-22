import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(
                        "lib/assets/images/background/custom-shape-3.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(
                        "lib/assets/images/background/custom-shape-4.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                left: 145.0,
                right: 145.0,
                top: 60.0,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 8.0,
                          offset: Offset(0, 6)),
                    ],
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage("lib/assets/images/background/male-avatar.png"),
                  ),
                ),
              ),
              Positioned(
                left: 10.0,
                right: 10.0,
                top: 195.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("João Pedro Giacometti de Souza", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                      SizedBox(height: 8.0,),
                      Text("joao_giacometti@hotmail.com", style: TextStyle(color: Colors.grey[500]),),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25.0,
                right: 25.0,
                top: 260.0,
                child: Container(
                  alignment: Alignment.center,
                  width: 324.0,
                  padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(0, 6))
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.fastfood, color: Theme.of(context).primaryColor, size: 32.0,),
                      Text("Pedidos", style: TextStyle(color: Theme.of(context).primaryColor),),
                      Text("42", style: TextStyle(color: Theme.of(context).primaryColor),)
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25.0,
                right: 25.0,
                top: 380.0,
                child: Container(
                  alignment: Alignment.center,
                  width: 324.0,
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(0, 6))
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Informações Gerais",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor
                              )),
                          IconButton(icon: Icon(Icons.keyboard_arrow_right),onPressed: (){}, color: Theme.of(context).primaryColor,)
                        ],
                      ),
                      Divider(thickness: 1.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Endereço de Cobrança",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor
                              )),
                          IconButton(icon: Icon(Icons.keyboard_arrow_right),onPressed: (){}, color: Theme.of(context).primaryColor,)
                        ],
                      ),
                      Divider(thickness: 1.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Formas de Pagamento",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor
                              )),
                          IconButton(icon: Icon(Icons.keyboard_arrow_right),onPressed: (){}, color: Theme.of(context).primaryColor,)
                        ],
                      ),
                      Divider(thickness: 1.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Histórico de Compra",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor
                              )),
                          IconButton(icon: Icon(Icons.keyboard_arrow_right),onPressed: (){}, color: Theme.of(context).primaryColor,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
