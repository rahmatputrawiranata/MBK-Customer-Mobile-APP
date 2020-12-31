import 'package:app/Components/textFieldContainer.component.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  
  final String hintText;
  final ValueChanged<String> onChanged;
  final IconData icon;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged
  }) : super( key : key );
  
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryDarkColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryDarkColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}