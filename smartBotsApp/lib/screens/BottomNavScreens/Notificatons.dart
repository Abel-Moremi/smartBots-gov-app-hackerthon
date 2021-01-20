import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "Notifications",
      ),
      body: Center(
        child: Text('Notifications will go here'),
      ),
    );
  }
}
