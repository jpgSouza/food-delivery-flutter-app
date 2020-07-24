import 'package:flutter/material.dart';

class LoginInputField extends StatelessWidget {
  final Icon prefixIcon;
  final IconButton suffixIcon;
  final String hint;
  final TextInputType textInputType;
  final bool obscure;
  final Stream<String> stream;
  final Function(String) onChanged;

  LoginInputField(
      {this.prefixIcon,
      this.suffixIcon,
      this.hint,
      this.textInputType,
      this.obscure,
      this.stream,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: stream,
        builder: (context, snapshot) {
          return TextFormField(
            onChanged: onChanged,
            style: TextStyle(color: Colors.black),
            keyboardType: textInputType,
            obscureText: obscure,
            decoration: InputDecoration(
                errorText: snapshot.hasError ? snapshot.error : null,
                border: InputBorder.none,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey[400])),
          );
        });
  }
}
