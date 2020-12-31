import 'package:flutter/material.dart';

class LayoutComponent extends StatelessWidget {

  final Widget child;
  const LayoutComponent ({
    Key key,
    @required this.child
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}