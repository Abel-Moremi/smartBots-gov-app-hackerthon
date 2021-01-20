import 'package:flutter/material.dart';
import 'package:smartBotsApp/components/rounded_button.dart';
import 'package:smartBotsApp/components/rounded_inputNumber.dart';
import 'package:smartBotsApp/components/rounded_veh.dart';
import 'package:smartBotsApp/widgets/custom_appBar.dart';

class CommonLandRights extends StatefulWidget {
  @override
  _CommonLandRightsState createState() => _CommonLandRightsState();
}

class _CommonLandRightsState extends State<CommonLandRights> {
  String selectedRadio;
  bool legal = false;

  @override
  void initState() {
    super.initState();
    selectedRadio = "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(text: "Common Land Rights"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.09),
            Text(
              "Application for common \nlaw land rights",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6F35A5)),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputVehicle(
              hintText: "Full Name of Applicant",
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
              "Gender",
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
                    Text("Male"),
                    Radio(
                      value: "Male",
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
                    Text("Female"),
                    Radio(
                      value: "Female",
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
            SizedBox(height: size.height * 0.06),
            Text(
              "Are you are citizen of Botswana?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6F35A5)),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Citizen"),
                    Radio(
                      value: "Citizen",
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
                    Text("Foreigner"),
                    Radio(
                      value: "Foreigner",
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
            SizedBox(height: size.height * 0.03),
            RoundedInputVehicle(
              hintText: "Name of spouse if married",
              onChanged: (value) {},
            ),
            RoundedInputNumber(
              hintText: "ID Number",
              onChanged: (value) {},
            ),
            RoundedInputNumber(
              hintText: "Passport Number",
              onChanged: (value) {},
            ),
            RoundedInputNumber(
              hintText: "Residential Permit No.",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Plot Information",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6F35A5)),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputVehicle(
              hintText: "Name of plot location",
              onChanged: (value) {},
            ),
            RoundedInputVehicle(
              hintText: "Current use of plot",
              onChanged: (value) {},
            ),
            RoundedInputNumber(
              hintText: "Size of plot",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Is the plot debushed?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6F35A5)),
            ),
            SizedBox(height: size.height * 0.03),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 28.0, 38.0, 0),
              child: Text(
                "Description of lease sought,length of lease and purpose?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
            ),
            RoundedInputVehicle(
              hintText: '',
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 28.0, 38.0, 0),
              child: Text(
                "List any other land rights you posses in Botswana and where they are",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
            ),
            RoundedInputVehicle(
              hintText: '',
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 28.0, 38.0, 0),
              child: Text(
                "Are all above mentioned sites developed, if not give reasons",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
            ),
            RoundedInputVehicle(
              hintText: '',
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 28.0, 38.0, 0),
              child: Text(
                "List in full, names of people whom you have consulted who hold land bordering the plot which you are applying",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
            ),
            RoundedInputVehicle(
              hintText: '',
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 28.0, 38.0, 0),
              child: Text(
                "I solemnly agree that the above information is complete and correct, i understand that any statement or representation i make, whether explicit or implied, which i know or reasonably ought to have known was untrue, for the purpose of obtaining a grant of land, or for the purpose of obtaining any benefit shall result in the rejection of the application and/or prosecution and/or forefeiture of the plot if already granted to me",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5)),
              ),
            ),
            Checkbox(
              checkColor: Colors.greenAccent,
              activeColor: Colors.black,
              value: this.legal,
              onChanged: (bool value) {
                setState(() {
                  this.legal = value;
                });
              },
            ),
            RoundedButton(
              text: "SUBMIT",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
