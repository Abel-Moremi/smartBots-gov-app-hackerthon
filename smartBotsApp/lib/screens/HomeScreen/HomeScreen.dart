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
        children: <Widget>[
          CustomCard(
            icon: Icons.directions_car_rounded,
            heading: 'Register Vehicle',
            routeName: '/RegisterVehicle',
          ),
          CustomCard(
            icon: Icons.night_shelter_rounded,
            heading: 'Common Law Land Rights',
            routeName: '/CommonLandRights',
          ),
          CustomCard(
            icon: Icons.night_shelter_rounded,
            heading: 'Customary Land Rights',
            routeName: '/CustomaryLandRights',
          ),
          CustomCard(
            icon: Icons.work_rounded,
            heading: 'Internship',
          ),
          CustomCard(
            icon: Icons.airline_seat_recline_normal,
            heading: 'Driving License',
          ),
          CustomCard(
            icon: Icons.pets,
            heading: 'DVS VMP application',
          ),
          CustomCard(
            icon: Icons.text_snippet_rounded,
            heading: 'Plant Import Permit',
          ),
          CustomCard(
            icon: Icons.subject,
            heading: 'BAITS Access',
          ),
        ],
      ),
    );
  }
}
