
import 'package:app/Components/alreadyHaveAnAccountAcheck.component.dart';
import 'package:app/Components/roundedButton.component.dart';
import 'package:app/Components/roundedInputField.component.dart';
import 'package:app/Components/roundedPasswordField.component.dart';
import 'package:app/Screens/Auth/Login/Components/background.component.dart';
import 'package:app/Screens/Auth/Register/register.screen.dart';
import 'package:app/Screens/Home/home.screen.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  
  const Body({
    Key key
  }) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedButton(
              text: "Masuk",
              color: kPrimaryDarkColor,
              textColor: kPrimaryColor,
              press: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return HomeScreen();
                    }
                  )
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountAcheck(
              login : true,
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    }
                  )
                );
              },
            )
            
          ],
        ),
      ),
    );
  }
}