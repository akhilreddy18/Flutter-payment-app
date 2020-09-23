import 'package:flutter/material.dart';
import 'TransferScreen.dart';
import 'ScanQrScreen.dart';

class TransfersHome extends StatefulWidget {

  @override
  _TransfersHomeState createState() => _TransfersHomeState();
}

class _TransfersHomeState extends State<TransfersHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String text = "Transfers";

  final List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.group),
    ),
    Tab(
      icon: Icon(Icons.shopping_cart),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabChange);
    super.initState();
  }

  void _handleTabChange() {
    if (_tabController.index != _tabController.previousIndex) {
      switch (_tabController.index) {
        case 0:
          setState(() {
            text = "Transfers";
          });
          break;
        case 1:
          setState(() {
            text = "Scan QR";
          });
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 26, 8, 100),
        title: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
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
              TransferScreen(),
              ScanQrScreen(),
            ],
          );
        },
      ),
    );
  }
}
