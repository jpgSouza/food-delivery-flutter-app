import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateInputField extends StatelessWidget {
  final Icon prefixIcon;
  final IconButton suffixIconButton;
  final String hint;
  final bool obscure;
  final TextInputType textInputType;
  final Stream<String> stream;
  final Function(String) onChanged;
  final MaskTextInputFormatter maskTextInputFormatter;

  CreateInputField(
      {this.prefixIcon,
      this.hint,
      this.obscure,
      this.textInputType,
      this.suffixIconButton,
      this.stream,
      this.onChanged,
      this.maskTextInputFormatter});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: stream,
        builder: (context, snapshot) {
          return TextFormField(
              onChanged: onChanged,
              keyboardType: textInputType,
              inputFormatters: maskTextInputFormatter == null ? null : [maskTextInputFormatter],
              obscureText: obscure,
              decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIconButton,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  border: OutlineInputBorder(),
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  errorText: snapshot.hasError ? snapshot.error : null));
        });
  }
}
