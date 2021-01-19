import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';

class CommonLandRights extends StatefulWidget {
  @override
  _CommonLandRightsState createState() => _CommonLandRightsState();
}

class _CommonLandRightsState extends State<CommonLandRights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text:"Common Land Rights"),
    );
  }
}