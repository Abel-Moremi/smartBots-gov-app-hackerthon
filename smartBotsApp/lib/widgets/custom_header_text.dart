import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;


  CustomHeaderText({this.text, this.fontWeight:FontWeight.bold, this.fontSize:16});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        
      )
    );
  }
}
