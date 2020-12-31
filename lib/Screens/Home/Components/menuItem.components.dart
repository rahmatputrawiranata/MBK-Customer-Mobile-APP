import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function function;
  const MenuItem({
    Key key,
    @required this.function,
    @required this.icon,
    @required this.title
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
            onTap: function,
            child: Container(
              padding: EdgeInsets.all(2),
              width: (size.width - 40) * 0.3,
              height: (size.width - 40) * 0.3,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all((size.width - 40) * 0.05),
                    decoration: new BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(icon, color: kPrimaryDarkColor, size: (size.width - 40) * 0.08,),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Text(title, style: TextStyle(color: kPrimaryDarkColor, fontWeight: FontWeight.bold),)
                ],
              ),
          ),
    );
  }
}