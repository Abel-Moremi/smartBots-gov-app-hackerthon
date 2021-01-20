import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "News",
      ),
      body: Center(
        child: Text('News will go here'),
      ),
    );
  }
}
