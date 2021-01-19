import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';
import 'HomeScreenWidgets/grid.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Grid(),
      )
    );
  }
}
