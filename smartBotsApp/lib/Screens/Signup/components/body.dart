import 'package:flutter/material.dart';
import 'package:smartBotsApp/Screens/Login/login_screen.dart';
import 'package:smartBotsApp/Screens/Signup/components/background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smartBotsApp/Screens/vehicle_registration/vehicle_registration.dart';
import 'package:smartBotsApp/components/already_have_an_account_acheck.dart';
import 'package:smartBotsApp/components/rounded_button.dart';
import 'package:smartBotsApp/components/rounded_input_field.dart';
import 'package:smartBotsApp/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              press: (){
                auth.createUserWithEmailAndPassword(email: _email, password: _password).then((_){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VehicleRegistrationScreen()));
                });
                
              },
              
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            // OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SocalIcon(
            //       iconSrc: "assets/icons/facebook.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/twitter.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/google-plus.svg",
            //       press: () {},
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
