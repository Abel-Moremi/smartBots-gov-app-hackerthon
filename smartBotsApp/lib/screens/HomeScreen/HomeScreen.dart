import 'package:flutter/material.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';
import 'package:smartBotsApp/widgets/custom_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: GridView.count(
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 10,
        // TODO: Build a grid of cards (102)
        children: <Widget>[
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Register Vehicle',
            routeName: '/RegisterVehicle',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Common Law Land Rights',
            routeName: 'CommonLandRights',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Internship',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Driving License',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Internship',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Driving License',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Internship',
          ),
          CustomCard(
            asset: 'assets/images/wallp.jpg',
            heading: 'Driving License',
          ),
        ],
      ),
      

    );
  }
}
