import 'package:flutter/material.dart';
import 'package:smartBotsApp/screens/HomeScreen/HomeScreenWidgets/custom_card.dart';
import 'package:smartBotsApp/widgets/custom_header_text.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomHeaderText(
          text: "How can we help you!",
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCard(
                text: 'Register \nVehicle',
                icon: Icons.directions_car,
                onTap: () {
                  Navigator.of(context).pushNamed('/RegisterVehicle');
                }),
            CustomCard(
                text: "Common \nLand Rights",
                icon: Icons.night_shelter_rounded,
                onTap: () {
                  Navigator.of(context).pushNamed('/CommonLandRights');
                }),
            CustomCard(
              text: "Internship",
              icon: Icons.laptop,
            ),
            CustomCard(
              text: "DVS VMP \nApplication",
              icon: Icons.pets,
            ),
          ],
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
