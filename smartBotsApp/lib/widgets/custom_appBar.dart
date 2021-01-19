//import 'package:finalProject/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:smartBotsApp/config/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String text;

  CustomAppBar({this.text:"SmartBots"});
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text(text),
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 28.0,
        onPressed: () {},
      ),
      
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
