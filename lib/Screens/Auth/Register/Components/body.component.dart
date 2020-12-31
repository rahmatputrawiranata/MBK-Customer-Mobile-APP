import 'package:app/Components/Form/RoundedDropdownFormField.component.dart';
import 'package:app/Components/alreadyHaveAnAccountAcheck.component.dart';
import 'package:app/Components/roundedButton.component.dart';
import 'package:app/Components/roundedInputField.component.dart';
import 'package:app/Components/roundedPasswordField.component.dart';
import 'package:app/Screens/Auth/Login/login.screen.dart';
import 'package:app/Screens/Auth/Register/Components/background.component.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child : SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: size.height * 0.1,),
          RoundedInputField(
            hintText: "Usernmae",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedInputField(
            hintText: "Phone",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value) {},
            icon: Icons.email,
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedDropdownFormFieldComponent(
              hint: 'Pilih Kerusakan',
              listItem: <String>['1', 'asldksa']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedInputField(
            hintText: "Nama",
            onChanged: (value) {},
            icon: Icons.face,
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedButton(
            text : "DAFTAR",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03,),
          AlreadyHaveAnAccountAcheck(
            login : false,
            press : () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  }
                )
              );
            }
          ),
          SizedBox(height: size.height * 0.03,),
        ],
      ),
      ),
    );
  }
}