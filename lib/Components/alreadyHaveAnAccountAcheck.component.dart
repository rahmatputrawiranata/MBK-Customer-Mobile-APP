import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountAcheck extends StatelessWidget {

  final bool login;
  final Function press;
  const AlreadyHaveAnAccountAcheck({
    Key key,
    this.login,
    this.press
  }) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Tidak Punya Akun ? " : "Sudah Punya Akun ? ",
          style: TextStyle(color: kPrimaryDarkColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: kPrimaryDarkColor,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}