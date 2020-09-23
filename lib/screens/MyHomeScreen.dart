import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Transfers/TransfersHome.dart';
import 'Inbox/InboxScreen.dart';
import 'MyMoney/MyMoneyScreen.dart';
import 'Map/MapScreen.dart';
import 'Profile/ProfileHome.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    TransfersHome(),
    MyMoneyScreen(),
    MapScreen(),
    InboxScreen(),
    ProfileHome(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
             icon: FaIcon(FontAwesomeIcons.exchangeAlt, size: 25,),
             onPressed:(){ _onItemTapped(0);},
             iconSize: 16.0,
              ),
            title: Text('Transfers'),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
             icon: FaIcon(FontAwesomeIcons.moneyBill, size: 25,),
             onPressed: (){ _onItemTapped(1);},
             iconSize: 16.0,
              ),
            title: Text('My money'),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
             icon: FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 25,),
             onPressed: (){ _onItemTapped(2);},
             iconSize: 16.0,
              ),
            title: Text('Map'),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
             icon: FaIcon(FontAwesomeIcons.solidEnvelope, size: 25,),
             onPressed: (){ _onItemTapped(3);},
             iconSize: 16.0,
              ),
            title: Text('Inbox'),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
             icon: FaIcon(FontAwesomeIcons.solidUser, size: 25,),
             onPressed: (){ _onItemTapped(4);},
             iconSize: 16.0,
              ),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
