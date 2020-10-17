import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:second_app/message_screen.dart';
import 'package:second_app/notification_screen.dart';
import 'package:second_app/profile_screen.dart';
import 'package:second_app/tools.dart';
import 'package:second_app/utils/common.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _page= [
    HomeScreen(),
    NotificationScreen(),
    MessageScreen(),
    ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    int _currentPage = 0;
    return Scaffold(
      body: _page[_currentPage],
      appBar: AppBar(),
      bottomNavigationBar: FancyBottomNavigation(
        // circleColor: HexColor(SettingsColor['MainColor']),
        circleColor: Colors.blue,
        inactiveIconColor: Colors.grey,
        barBackgroundColor: Colors.white,
        textColor: Colors.blue,
        tabs: [
          TabData(iconData: Icons.home, title: 'Home'),
          TabData(iconData: Icons.notifications, title: 'Notification'),
          TabData(iconData: Icons.email, title: 'Message'),
          TabData(iconData: Icons.person, title: 'Profile'),
        ],
        //untuk nyimpen currentState
        onTabChangedListener: (position) {
          setState(() {
            _currentPage = position;
          });
        },
      ),
    );
  }
}
