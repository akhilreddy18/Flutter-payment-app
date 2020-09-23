import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL();
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Open in Google Maps'),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url =
      'https://www.google.com/maps/place/Stockholm/@59.3260668,17.8419713,11z/data=!3m1!4b1!4m5!3m4!1s0x465f763119640bcb:0xa80d27d3679d7766!8m2!3d59.3293235!4d18.0685808';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
