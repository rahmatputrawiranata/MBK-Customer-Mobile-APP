import 'package:app/Screens/Home/Components/menu.components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.03,),
        Container(
          height: size.height * 0.5,
          child: SvgPicture.asset(
            'assets/images/background-home.svg',
            semanticsLabel: 'Background Home',
          )
        ),
        SizedBox(height: size.height * 0.03,),
        Expanded(
          child: Menu()
        )
      ],
    );
  }
}