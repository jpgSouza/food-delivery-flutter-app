import 'package:delivery_app/controller/API/facebook/facebook_login.dart';
import 'package:delivery_app/controller/BloC/login_bloc.dart';
import 'package:delivery_app/view/Screens/home_screen.dart';
import 'package:delivery_app/view/Screens/register_screen.dart';
import 'package:delivery_app/view/Widgets/login_input_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginBloc = LoginBloc();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _authWithFacebook = FacebookLoginAuth();

  @override
  void initState() {
    super.initState();
    _loginBloc.outState.listen((state) {
      switch (state) {
        case LoginState.SUCCESS:
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()));
          break;
        case LoginState.FAIL:
          _scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text(
              "Credenciais incorretas",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            elevation: 6.0,
            backgroundColor: Colors.redAccent,
            duration: Duration(seconds: 2),
          ));
          break;
        case LoginState.LOADING:
        case LoginState.IDLE:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).primaryColor,
        body: StreamBuilder<LoginState>(
            stream: _loginBloc.outState,
            builder: (context, snapshot) {
              switch (snapshot.data) {
                case LoginState.LOADING:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                case LoginState.FAIL:
                case LoginState.SUCCESS:
                case LoginState.IDLE:
                  return Form(
                    child: SafeArea(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 110.0,
                            left: 150.0,
                            child: Container(
                              height: 200.0,
                              child: Image(
                                image: AssetImage(
                                    "lib/assets/images/background/login.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 300.0,
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(
                                    "lib/assets/images/background/custom-shape-2.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(
                                    "lib/assets/images/background/custom-shape-1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 305.0,
                            left: 25.0,
                            right: 25.0,
                            child: Container(
                              alignment: Alignment.center,
                              width: 369.0,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[100]))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 22.0),
                                          ),
                                          LoginInputField(
                                            prefixIcon: Icon(
                                              Icons.person,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            suffixIcon: null,
                                            hint: "E-mail",
                                            textInputType:
                                                TextInputType.emailAddress,
                                            obscure: false,
                                            stream: _loginBloc.outEmail,
                                            onChanged: _loginBloc.changeEmail,
                                          )
                                        ],
                                      )),
                                  Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[100]))),
                                      child: LoginInputField(
                                        prefixIcon: Icon(
                                          Icons.vpn_key,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.remove_red_eye),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hint: "Password",
                                        textInputType: TextInputType.text,
                                        obscure: true,
                                        stream: _loginBloc.outPassword,
                                        onChanged: _loginBloc.changePassword,
                                      )),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: FlatButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      child: Text(
                                        "Esqueceu sua senha?",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 570.0,
                              left: 45.0,
                              right: 45.0,
                              child: Container(
                                height: 55.0,
                                alignment: Alignment.center,
                                child: RaisedButton(
                                  onPressed: _loginBloc.submit,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(40.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(40.0)),
                                      child: Container(
                                        constraints: BoxConstraints(
                                            maxWidth: 350.0, minHeight: 60.0),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "ENTRAR",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      )),
                                ),
                              )),
                          Positioned(
                              top: 640.0,
                              left: 35.0,
                              right: 35.0,
                              child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      color: Colors.white60,
                                      width: 145,
                                      height: 1,
                                    ),
                                    Text(
                                      "OU",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Container(
                                      color: Colors.white60,
                                      width: 145,
                                      height: 1,
                                    ),
                                  ],
                                ),
                              )),
                          Positioned(
                              top: 670.0,
                              left: 45.0,
                              right: 45.0,
                              child: Container(
                                height: 55.0,
                                alignment: Alignment.center,
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 350.0, minHeight: 60.0),
                                  child: OutlineButton(
                                      padding: EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      color: Color.fromARGB(255, 217, 69, 65),
                                      child: Tab(
                                        icon: Container(
                                          child: Row(
                                            children: <Widget>[
                                              Image(
                                                image: AssetImage(
                                                    'lib/assets/images/icons/facebook-icon.png'),
                                                color: Colors.white,
                                                height: 30.0,
                                              ),
                                              SizedBox(
                                                width: 20.0,
                                              ),
                                              Text(
                                                "ENTRAR COM FACEBOOK",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      shape: StadiumBorder(),
                                      onPressed: _authWithFacebook.logIn),
                                ),
                              )),
                          Positioned(
                            top: 725.0,
                            left: 45.0,
                            right: 45.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: FlatButton(
                                  padding: EdgeInsets.zero,
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterScreen(),
                                        ));
                                      },
                                      padding: EdgeInsets.zero,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Não possui conta?",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            "Cadastre-se",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ))),
                            ),
                          )
                        ],
                      ),
                    )),
                  );
              }
            }));
  }
}
