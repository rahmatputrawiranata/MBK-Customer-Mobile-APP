import 'package:app/Components/textFieldContainer.component.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({

    Key key,
    this.onChanged

  }) : super( key : key );
  
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryDarkColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryDarkColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryDarkColor,
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}