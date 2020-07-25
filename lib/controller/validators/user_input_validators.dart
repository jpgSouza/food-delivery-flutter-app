import 'dart:async';

class UserInputValidator{

  static String _email;

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains("@")){
        sink.add(email);
        _email = email;
      } else {
        sink.addError("E-mail inválido");
      }
    }
  );

  final validateConfirmEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (confirmEmail, sink,){
        if(confirmEmail == _email && _email.isNotEmpty){
          sink.add(confirmEmail);
        } else {
          sink.addError("E-mail diferente");
        }
      }
  );

  final validatePhone = StreamTransformer<String, String>.fromHandlers(
      handleData: (phone, sink,) {
        if(phone.length == 16){
          sink.add(phone);
        }else{
          sink.addError("Telefone inválido");
        }
      }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink,) {
        if(password.length >= 6){
          sink.add(password);
        }else{
          sink.addError("A senha deve conter 6 ou mais caracteres");
        }
      }
  );


}