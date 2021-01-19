import 'package:flutter/material.dart';
import 'package:smartBotsApp/config/constants.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  CustomCard({this.text, this.onTap,this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10.0,
          child: InkWell(
            onTap: onTap,
            child: Container(
              child: SizedBox(
                child:Icon(icon,size: 45,color: kPrimaryColor,),
                height: 70,
                width: 70,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(text, textAlign: TextAlign.center,),
      ],
    );
  }
}
