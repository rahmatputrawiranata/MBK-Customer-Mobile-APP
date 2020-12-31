import 'package:app/Screens/Home/Components/layout.components.dart';
import 'package:app/Screens/Home/Components/menuItem.components.dart';
import 'package:app/Screens/Lapor/lapor.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Layout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.03),
          Text('Menu', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: size.height * 0.03,),
          Row(
            children: [
              MenuItem(
                icon: AntDesign.notification, 
                title: 'Lapor',
                function: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) {
                      return LaporScreen();
                    })
                  );
                },
              ),
              SizedBox(width: (size.width - 40) * 0.05),
              MenuItem(
                icon: MaterialCommunityIcons.file_document_outline, 
                title: 'Laporan',
                function: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) {
                      return LaporScreen();
                    })
                  );
                },
              ),
              SizedBox(width: (size.width - 40) * 0.05),
              MenuItem(
                icon: AntDesign.calendar, 
                title: 'Jadwal',
                function: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) {
                      return LaporScreen();
                    })
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}