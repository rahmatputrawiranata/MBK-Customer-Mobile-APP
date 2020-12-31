import 'package:app/Components/Form/RoundedDropdownFormField.component.dart';
import 'package:app/Components/roundedButton.component.dart';
import 'package:app/Components/roundedInputField.component.dart';
import 'package:app/Screens/Lapor/Components/layout.components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      child: SingleChildScrollView(
              child: Column(
          children: [
            RoundedInputField(
              hintText: 'Nomor Mesin',
              icon: AntDesign.barcode,
            ),
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
            RoundedButton(
              text: 'Check',
              press: () {},
            )
          ],
        ),
      )
    );
  }
}