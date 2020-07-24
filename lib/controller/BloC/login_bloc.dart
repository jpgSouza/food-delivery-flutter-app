import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:delivery_app/controller/API/database/firebase_database.dart';
import 'package:delivery_app/controller/validators/user_input_validators.dart';
import 'package:delivery_app/model/entities/user_model.dart';
import 'package:rxdart/rxdart.dart';

enum LoginState {IDLE, LOADING, SUCCESS, FAIL}

class LoginBloc extends BlocBase with UserInputValidator{

  Firebase firebase;
  User user;

  //Controllers
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Streams
  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassword);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  LoginBloc(){
    user = User();
    firebase = Firebase();
  }

  void submit(){

  }

  @override
  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}