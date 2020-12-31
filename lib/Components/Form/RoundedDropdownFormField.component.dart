import 'package:app/Components/textFieldContainer.component.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class ListDropdownModel {
  final String key;
  final String name;

  ListDropdownModel({this.key, this.name});
}


class RoundedDropdownFormFieldComponent extends StatefulWidget {

  final List<DropdownMenuItem<String>> listItem;

  final String hint;
  RoundedDropdownFormFieldComponent({
    Key key,
    @required this.listItem,
    @required this.hint
  }) : super(key: key);

  @override
  _RoundedDropdownFormFieldComponentState createState() => _RoundedDropdownFormFieldComponentState();
}

class _RoundedDropdownFormFieldComponentState extends State<RoundedDropdownFormFieldComponent> {
  
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none
            ),
            hint: Text(widget.hint),
            value: dropdownValue,
            icon: Icon(Entypo.chevron_down, color: kPrimaryDarkColor,),
            iconSize: 24,

            style: TextStyle(
              color: kPrimaryDarkColor
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: widget.listItem
          ),
    );
  }
}