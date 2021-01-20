import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "Search",
      ),
      body: Center(
        child: Text('Search will go here'),
      ),
    );
  }
}
