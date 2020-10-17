import 'package:flutter/material.dart';
import 'package:second_app/tools.dart';
import 'package:second_app/utils/common.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final img = Images;
    return Column(
      children: <Widget>[
        SizedBox(height: 100.0),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Image.asset(img['profileImages'],
              width: 89,
              height: 89,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Rivanda M',
                    style: TextStyle(fontSize: 17, fontFamily: 'Poppins-Medium'),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    '@rivaphy',
                    style: TextStyle(fontSize: 12, fontFamily: 'Poppins-Light' ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    'SMK IDN Jonggol',
                    style: TextStyle(fontSize: 14, fontFamily: 'Poppins-Regular', color: HexColor(SettingsColor['MainColor'])),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            SizedBox(width: 150.0),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Connections',
                  style: TextStyle(fontSize: 15, color: HexColor(SettingsColor['SecondColor']), fontFamily: 'Poppins-Medium'),
                ),
                Text(
                  '200',
                  style: TextStyle(fontSize: 20, fontFamily: 'Poppins-Light'),
                ),
              ],
            ),
            SizedBox(width: 50.0),
            Image.asset(img['profileLine']
            ),
            SizedBox(width: 50.0),
            Column(
              children: <Widget>[
                Text(
                  'Forum',
                  style: TextStyle(fontSize: 15, color: HexColor(SettingsColor['SecondColor']), fontFamily: 'Poppins-Medium'),
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 20, fontFamily: 'Poppins-Light'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Image.asset(img['profileSkill'],
        alignment: Alignment.center,
        width: 301,
        height: 237
        ),
      ],
    );
  }
}
