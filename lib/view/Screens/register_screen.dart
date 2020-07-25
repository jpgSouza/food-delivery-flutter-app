import 'package:delivery_app/controller/BloC/create_user_bloc.dart';
import 'package:delivery_app/view/Screens/login_screen.dart';
import 'package:delivery_app/view/Widgets/create_input_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _registerBloc = CreateUserBloc();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _phoneMaskFormatter = MaskTextInputFormatter(mask: "(##) # ####-####");

  @override
  void initState() {
    super.initState();

    _registerBloc.outState.listen((state) {
      switch (state) {
        case CreateState.SUCCESS:
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen()));
          break;
        case CreateState.FAIL:
        case CreateState.LOADING:
          _scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text(
              "Cadastrado com sucesso!",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            elevation: 6.0,
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ));
          break;
        case CreateState.IDLE:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: StreamBuilder<CreateState>(
          stream: _registerBloc.outState,
          builder: (context, snapshot) {
            switch (snapshot.data) {
              case CreateState.LOADING:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case CreateState.SUCCESS:
              case CreateState.FAIL:
              case CreateState.IDLE:
                return Form(
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
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        ));
                                      },
                                    ),
                                    Text(
                                      "VOLTAR",
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 16.0),
                                    )
                                  ],
                                )),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Cadastro",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 26.0),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Expanded(
                                                child: CreateInputField(
                                              prefixIcon: Icon(
                                                Icons.person,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hint: "Nome",
                                              obscure: false,
                                              textInputType: TextInputType.text,
                                              stream: _registerBloc.outName,
                                              onChanged:
                                                  _registerBloc.changeName,
                                            )),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Expanded(
                                                child: CreateInputField(
                                              prefixIcon: null,
                                              hint: "Sobrenome",
                                              obscure: false,
                                              textInputType: TextInputType.text,
                                              stream: _registerBloc.outLastName,
                                              onChanged:
                                                  _registerBloc.changeLastName,
                                            ))
                                          ],
                                        ),
                                        CreateInputField(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          hint: "E-mail",
                                          obscure: false,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          stream: _registerBloc.outEmail,
                                          onChanged: _registerBloc.changeEmail,
                                        ),
                                        CreateInputField(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          hint: "Confirmar e-mail",
                                          obscure: false,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          stream: _registerBloc.outConfirmEmail,
                                          onChanged:
                                              _registerBloc.changeConfirmEmail,
                                        ),
                                        CreateInputField(
                                          prefixIcon: Icon(
                                            Icons.phone,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          hint: "Telefone",
                                          maskTextInputFormatter: _phoneMaskFormatter,
                                          obscure: false,
                                          textInputType: TextInputType.phone,
                                          stream: _registerBloc.outPhone,
                                          onChanged: _registerBloc.changePhone,
                                        ),
                                        CreateInputField(
                                          prefixIcon: Icon(
                                            Icons.vpn_key,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          suffixIconButton: IconButton(
                                            icon: Icon(Icons.remove_red_eye),
                                            color:
                                                Theme.of(context).primaryColor,
                                            onPressed: () {},
                                          ),
                                          hint: "Senha",
                                          obscure: true,
                                          textInputType: TextInputType.text,
                                          stream: _registerBloc.outPassword,
                                          onChanged:
                                              _registerBloc.changePassword,
                                        ),
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
                                    onPressed: _registerBloc.createUser,
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
                                            "CADASTRAR",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                );
            }
          }),
    );
  }
}
