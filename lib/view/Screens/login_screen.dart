import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#D9455F'),
      body: SafeArea(
        child: Form(
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 10.0,
                                offset: Offset(0, 6))
                          ]),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      offset: Offset(0, 6)),
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Hexcolor('#D9455F'),
                                        ),
                                        hintText: "E-mail",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.vpn_key,
                                        color: Hexcolor('#D9455F'),
                                      ),
                                      hintText: "Senha",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.visibility_off,
                                          color: Hexcolor('#D9455F'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              child: Text(
                                "Esqueceu sua senha?",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          RaisedButton(
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
                                    "ENTRAR",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Hexcolor('#D9455F'),
                                      fontSize: 15.0,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            constraints: BoxConstraints(
                                maxWidth: 350.0, minHeight: 60.0),
                            child: new OutlineButton(
                                padding:
                                    EdgeInsets.only(left: 40.0, right: 40.0),
                                color: Color.fromARGB(255, 217, 69, 65),
                                child: Tab(
                                  icon: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'lib/view/images/icons/facebook-icon.png'),
                                          color: Colors.white,
                                          height: 30.0,
                                        ),
                                        Text(
                                          "ENTRAR COM FACEBOOK",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                shape: StadiumBorder(),
                                onPressed: () {}),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: FlatButton(
                                padding: EdgeInsets.zero,
                                child: FlatButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.zero,
                                  child: Text(
                                    "Não possui conta? Cadastr-se",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
