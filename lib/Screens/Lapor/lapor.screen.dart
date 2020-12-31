import 'package:app/Screens/Lapor/Components/body.components.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class LaporScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('Lapor'),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}