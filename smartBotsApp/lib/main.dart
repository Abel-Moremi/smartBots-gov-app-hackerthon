import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartBotsApp/screens/HomeScreen/HomeScreen.dart';
import 'package:smartBotsApp/screens/LandRightsScreen/common_land_rights.dart';
import 'package:smartBotsApp/screens/register_vehicle/register_vehicle.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),
        '/RegisterVehicle':(context) => RegisterVehicle(),
        '/CommonLandRights':(context) => CommonLandRights(),
      },
    );
  }
}
