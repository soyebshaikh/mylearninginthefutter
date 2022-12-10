import 'package:flutter/material.dart';

import '../utils/textfield_style.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool hasAsterisks ;

  const LoginTextField(
      {Key? key,
    this.validator,
      required this.controller,
      required this.hintText,
        this.hasAsterisks=false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hasAsterisks,
      validator: (value) {
        if(validator!=null)
          return validator!(value);

      },
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Add your Username',
        hintStyle: ThemeTextStyle.LoginTextFieldStyle,
        border: OutlineInputBorder(),
      ),
    );
  }
}
