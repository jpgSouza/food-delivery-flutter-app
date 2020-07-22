import 'package:flutter/material.dart';

class CreateInputField extends StatelessWidget {
  final Icon prefixIcon;
  final IconButton suffixIconButton;
  final String hint;
  final bool obscure;
  final TextInputType textInputType;
  final Stream<String> stream;
  final Function(String) onChanged;

  CreateInputField(
      {this.prefixIcon,
      this.hint,
      this.obscure,
      this.textInputType,
      this.suffixIconButton,
      this.stream,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: stream,
        builder: (context, snapshot) {
          return TextFormField(
              onChanged: onChanged,
              keyboardType: textInputType,
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
