import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:delivery_app/controller/validators/create_user_validators.dart';
import 'package:rxdart/rxdart.dart';

class CreateUserBloc extends BlocBase with CreateUserValidator{

  //Controllers
  final _nameController = BehaviorSubject<String>();
  final _lastNameController = BehaviorSubject<String>();
  final _emailController = BehaviorSubject<String>();
  final _confirmEmailController = BehaviorSubject<String>();
  final _phoneNumberController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Streams
  Stream<String> get outName => _nameController.stream;
  Stream<String> get outLastName => _lastNameController.stream;
  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outConfirmEmail => _confirmEmailController.stream.transform(validateConfirmEmail);
  Stream<String> get outPhone => _phoneNumberController.stream.transform(validatePhone);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassword);

  CreateUserBloc(){

  }

  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changeLastName => _lastNameController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changeConfirmEmail => _confirmEmailController.sink.add;
  Function(String) get changePhone => _phoneNumberController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  @override
  void dispose() {
    _nameController.close();
    _lastNameController.close();
    _emailController.close();
    _confirmEmailController.close();
    _phoneNumberController.close();
    _passwordController.close();
  }
}