import 'package:flutter/material.dart';
import 'package:smartBotsApp/Screens/Signup/components/background.dart';
import 'package:smartBotsApp/components/rounded_button.dart';
import 'package:smartBotsApp/components/rounded_inputNumber.dart';
import 'package:smartBotsApp/components/rounded_veh.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String selectedRadio;
   @override
  void initState() {
    super.initState();
    selectedRadio = "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.09),
              Text(
                "Vehicle Registration Form",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputVehicle(
                hintText: "Name of Owner",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Cell",
                
                onChanged: (value) {},
              ),
              RoundedInputVehicle(
                hintText: "Physical Address",
                onChanged: (value) {},
              ),
              RoundedInputVehicle(
                hintText: "Postal Address",
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Vehicle details",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
              RoundedInputVehicle(
                hintText: "Make",
                onChanged: (value) {},
              ),
              RoundedInputVehicle(
                hintText: "Model",
                onChanged: (value) {},
              ),
              RoundedInputVehicle(
                hintText: "BodyType",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Chassis No.",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Year of Manufacture",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Prev REG. No.",
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Locally Manufactured or Assembled",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Yes"),
                    Radio(
                      value: "Yes",
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = val;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("No"),
                    Radio(
                      value: "No",
                      groupValue: selectedRadio,
                      activeColor: Colors.pink[300],
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = val;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
              RoundedInputNumber(
                hintText: "Unladen Weight",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Gross Weight",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Number of Axels",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Seating capacity",
                onChanged: (value) {},
              ),
              RoundedInputNumber(
                hintText: "Engine number",
                onChanged: (value) {},
              ),
              RoundedInputVehicle(
                hintText: "Color",
                onChanged: (value) {},
              ),
              Text(
                "Fuel Used",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Petrol"),
                    Radio(
                      value: "Petrol",
                      groupValue: selectedRadio,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = val;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Diesel"),
                    Radio(
                      value: "Diesel",
                      groupValue: selectedRadio,
                      activeColor: Colors.pink[300],
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = val;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
              
              RoundedButton(
                text: "SUBMIT",
                press: () {},
              ),

              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
