import 'package:flutter/material.dart';
import 'package:smartBotsApp/components/text_field_container.dart';
import 'package:smartBotsApp/config/constants.dart';

class RoundedInputNumber extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputNumber({
    Key key,
    this.hintText,
    this.icon ,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
