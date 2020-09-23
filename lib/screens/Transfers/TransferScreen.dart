import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[300], width: 1),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: height*0.182,
                  padding: EdgeInsets.only(right: 0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "From",
                          style: TextStyle(color: Colors.green[300]),
                        ),
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.exchangeAlt,
                          size: 15,
                        ),
                        onPressed: () {},
                        iconSize: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "To",
                          style: TextStyle(color: Colors.green[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: width*0.85,
                        height: height*0.0426,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        padding: EdgeInsets.only(right: 160),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]),
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Colors.white30,
                            textColor: Colors.white,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Color.fromRGBO(7, 26, 8, 100),
                                ),
                                Text(
                                  "  Me  ",
                                  style: TextStyle(color: Colors.grey[900]),
                                ),
                                Text(
                                  "|  ZMW  ",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                Text(
                                  "0.00",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(top: 10, bottom: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.grey[300], width: 1),
                            bottom:
                                BorderSide(color: Colors.grey[300], width: 1),
                          ),
                        ),
                        width: width*0.85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.plusCircle,
                                color: Colors.green[300],
                                size: 25,
                              ),
                              onPressed: () {},
                              iconSize: 16.0,
                            ),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.qrcode,
                                color: Colors.green[300],
                                size: 25,
                              ),
                              onPressed: () {},
                              iconSize: 16.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 10),
                        margin: EdgeInsets.only(left: 0),
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Amount",
                              style: TextStyle(color: Colors.green[300]),
                            ),
                            Text(
                              "ZMW",
                              style: TextStyle(color: Colors.green[200]),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: width*0.85,
                        child: Text(
                          "0.00",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ExpansionTile(
            title: Text("Requests(0)"),
            children: [
              ListTile(
                title: Text("You have no requests at the moment... :)"),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Recent activity"),
          )
        ],
      ),
    );
  }
}
