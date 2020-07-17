import 'package:delivery_app/view/Screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Form(
        child: SafeArea(
            child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Container(
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
                            "lib/view/images/background/custom-shape-2.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage(
                            "lib/view/images/background/custom-shape-1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_left),
                          color: Theme.of(context).primaryColor,
                          iconSize: 50.0,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },
                        ),
                        Text("VOLTAR", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0),)
                      ],
                    )
                  ),
                  Positioned(
                    top: 195.0,
                    left: 25.0,
                    right: 25.0,
                    child: Container(
                        width: 369.0,
                        height: 440,
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 10.0,
                                offset: Offset(0, 6))
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Cadastro",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 26.0),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor),
                                          ),
                                          border: OutlineInputBorder(),
                                          hintText: "Nome",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[500]),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor),
                                          ),
                                          border: OutlineInputBorder(),
                                          hintText: "Sobrenome",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[500]),
                                        )),
                                  )
                                ],
                              ),
                              TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    border: OutlineInputBorder(),
                                    hintText: "E-mail",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[500]),
                                  )),
                              TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    border: OutlineInputBorder(),
                                    hintText: "Confirmar e-mail",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[500]),
                                  )),
                              TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    border: OutlineInputBorder(),
                                    hintText: "Telefone",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[500]),
                                  )),
                              TextFormField(
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.vpn_key,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.remove_red_eye),
                                      color: Theme.of(context).primaryColor,
                                      onPressed: () {},
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    border: OutlineInputBorder(),
                                    hintText: "Senha",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[500]),
                                  )),
                            ],
                          ),
                        )),
                  ),
                  Positioned(
                      top: 670.0,
                      left: 45.0,
                      right: 45.0,
                      child: Container(
                        height: 60.0,
                        alignment: Alignment.center,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40.0)),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: 350.0, minHeight: 60.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "CADASTRAR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                              )),
                        ),
                      )),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
