import 'package:flutter/material.dart';
import 'CreateBusinessScreen.dart';
import 'ProfileScreen.dart';

class ProfileHome extends StatefulWidget {
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> with SingleTickerProviderStateMixin{
    TabController _tabController;
  String text = "Username";

  final List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.account_circle),
    ),
    Tab(
      icon: Icon(Icons.archive),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabChange);
    super.initState();
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      switch (_tabController.index) {
        case 0:
          setState(() {
            text = "Username";
          });
          break;
        case 1:
          setState(() {
            text = "Create business";
          });
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(16,46,30,100),
        title: Center(
          child: Text(text),
        ),
        bottom: TabBar(
          tabs: myTabs,
          controller: _tabController,
        ),
      ),
      body: Builder(
        builder: (context) {
          return TabBarView(
            controller: _tabController,
            children: [
              ProfileScreen(),
              CreateBusinessScreen(),
            ],
          );
        },
      ),
    );
  }
}