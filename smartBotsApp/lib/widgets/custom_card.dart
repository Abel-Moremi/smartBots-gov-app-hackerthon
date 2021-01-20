import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
 // final String asset;
  final String heading;
  final String routeName;
  final IconData icon;
  final VoidCallback onTap;

  CustomCard(
    {
      //this.asset,
      this.heading,
      this.onTap,
      this.icon,
      this.routeName
    }
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.of(context).pushNamed(routeName);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Icon(icon,size:43),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0,0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Text('Title'),
                  //SizedBox(height: 8.0),
                  Align(
                    child: Text(
                      heading,
                      textAlign: TextAlign.center
                      ,
                      style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
