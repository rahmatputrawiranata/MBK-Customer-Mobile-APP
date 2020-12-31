import 'package:app/Screens/Auth/Login/login.screen.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'MBK Support',
      theme : ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        
      ),
      home: LoginScreen(),
    );
  }
}