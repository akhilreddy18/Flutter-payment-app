import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 26, 8, 100),
        title: Center(
          child: Text(
            "My money",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text("Accounts"),
                ),
              ],
            ),
            Container(
              height: height*0.07,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.user,
                        size: 25,
                      ),
                      onPressed: () {},
                      iconSize: 16.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: width*0.4),
                    child: Text("Spending"),
                  ),
                  Container(
                    child: Text("ZMW 0.00"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text("Total"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: width*0.65),
                  child: Text("ZMW 0.00"),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 160,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.green[300],
                    textColor: Colors.white,
                    child: Text("Top up"),
                  ),
                ),
                Container(
                  width: 160,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text("Cash out"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
