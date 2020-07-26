import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:delivery_app/controller/API/database/firebase.dart';
import 'package:delivery_app/controller/validators/user_input_validators.dart';
import 'package:delivery_app/model/entities/user_model.dart';
import 'package:rxdart/rxdart.dart';

enum CreateState {IDLE, LOADING, SUCCESS, FAIL}

class CreateUserBloc extends BlocBase with UserInputValidator{

  User user;
  Firebase firebase;
  Map<String, dynamic> userData;

  //Controllers
  final _nameController = BehaviorSubject<String>();
  final _lastNameController = BehaviorSubject<String>();
  final _emailController = BehaviorSubject<String>();
  final _confirmEmailController = BehaviorSubject<String>();
  final _phoneNumberController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _stateController = BehaviorSubject<CreateState>();

  //Streams
  Stream<String> get outName => _nameController.stream;
  Stream<String> get outLastName => _lastNameController.stream;
  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outConfirmEmail => _confirmEmailController.stream.transform(validateConfirmEmail);
  Stream<String> get outPhone => _phoneNumberController.stream.transform(validatePhone);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassword);
  Stream<CreateState> get outState => _stateController.stream;

  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changeLastName => _lastNameController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changeConfirmEmail => _confirmEmailController.sink.add;
  Function(String) get changePhone => _phoneNumberController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  CreateUserBloc(){
    user = User();
    firebase = Firebase();
    _stateController.add(CreateState.IDLE);
  }

  @override
  void dispose() {
    _nameController.close();
    _lastNameController.close();
    _emailController.close();
    _confirmEmailController.close();
    _phoneNumberController.close();
    _passwordController.close();
    _stateController.close();
  }

  void createUser() async{

    user.name = _nameController.value;
    user.lastName = _lastNameController.value;
    user.email = _emailController.value;
    user.confirmEmail = _confirmEmailController.value;
    user.phoneNumber = _phoneNumberController.value;
    user.password = _passwordController.value;

    userData = user.toMap();

    _stateController.add(CreateState.LOADING);

    firebase.firebaseAuth.createUserWithEmailAndPassword(email: user.email, password: user.password).then((currentUser) async{
      firebase.firebaseUser = currentUser;
      await _saveData(userData);
    }).catchError((err){
      _stateController.add(CreateState.FAIL);
    });

  }

  Future<Null> _saveData(Map<String, dynamic> userData) async{
    await firebase.firestore.collection("users").document(firebase.firebaseUser.uid).setData(userData);
    _stateController.add(CreateState.SUCCESS);
  }

}