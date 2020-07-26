import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:delivery_app/controller/API/database/firebase.dart';
import 'package:delivery_app/controller/validators/user_input_validators.dart';
import 'package:delivery_app/model/entities/user_model.dart';
import 'package:rxdart/rxdart.dart';

enum LoginState { IDLE, LOADING, SUCCESS, FAIL }

class LoginBloc extends BlocBase with UserInputValidator {
  Firebase firebase;
  User user;

  //Controllers
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _stateController = BehaviorSubject<LoginState>();

  //Streams
  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassword);
  Stream<LoginState> get outState => _stateController.stream;

  StreamSubscription _streamSubscription;

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  LoginBloc() {
    user = User();
    firebase = Firebase();
    _streamSubscription = firebase.firebaseAuth.onAuthStateChanged.listen((userAuth) {
      if (userAuth != null) {
        firebase.firebaseAuth.signOut(); //alterar essa linha quando logout for implementado
        _stateController.add(LoginState.SUCCESS);
      } else {
        _stateController.add(LoginState.IDLE);
      }
    });
  }

  void submit() {
    user.email = _emailController.value;
    user.password = _passwordController.value;

    _stateController.add(LoginState.LOADING);

    firebase.firebaseAuth
        .signInWithEmailAndPassword(email: user.email, password: user.password)
        .catchError((err) {
      _stateController.add(LoginState.FAIL);
    });
  }

  @override
  void dispose() {
    _emailController.close();
    _passwordController.close();
    _stateController.close();

    _streamSubscription.cancel();
  }
}
