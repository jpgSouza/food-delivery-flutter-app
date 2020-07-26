import 'package:delivery_app/controller/API/database/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:async';

class FacebookLoginAuth {
  static final _facebookLogin = FacebookLogin();

  Firebase firebase;

  FacebookLoginAuth() {
    firebase = Firebase();
  }

  Future<FirebaseUser> _loginWithFacebook() async {
    final FacebookLoginResult _result = await _facebookLogin.logIn(['email']);

    switch(_result.status){
      case FacebookLoginStatus.loggedIn:
        final facebookAuthCred = FacebookAuthProvider.getCredential(accessToken: _result.accessToken.token);
        firebase.firebaseUser = await firebase.firebaseAuth.signInWithCredential(facebookAuthCred);
        return firebase.firebaseUser;
        break;

      case FacebookLoginStatus.error:
        return null;
        break;
      case FacebookLoginStatus.cancelledByUser:
        return null;
        break;

    }

  }

  void logIn(){
    _loginWithFacebook().then((user){
      if(user != null){
        firebase.firebaseUser = user;
      }
    });
  }

}
