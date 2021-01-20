import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "Services",
      ),
      body: Center(
        child: Text('Other services will go here'),
      ),
    );
  }
}
