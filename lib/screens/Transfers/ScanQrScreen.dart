import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScanQrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 5, right: 15, top: 10),
      children: <Widget>[
        Card(
          child: ListTile(
            leading: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.qrcode,
                color: Colors.green[200],
                size: 25,
              ),
              onPressed: () {},
              iconSize: 16.0,
            ),
            title: Text('QR payment'),
            subtitle: Text('Scan to pay'),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.phoneAlt,
                color: Colors.green[300],
                size: 25,
              ),
              onPressed: () {},
              iconSize: 16.0,
            ),
            title: Text('Airtime top-up'),
            subtitle: Text('Buy mobile load'),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.plug,
                color: Colors.green[300],
                size: 25,
              ),
              onPressed: () {},
              iconSize: 16.0,
            ),
            title: Text('Zesco'),
            subtitle: Text('Pay electricity bill'),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.tv,
                color: Colors.green[300],
                size: 25,
              ),
              onPressed: () {},
              iconSize: 16.0,
            ),
            title: Text('Pay TV'),
            subtitle: Text('Pay your TV bill'),
          ),
        ),
      ],
    );
  }
}
