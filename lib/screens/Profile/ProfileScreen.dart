import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(16,46,30,100),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: width*0.73,
              height: height*0.48,
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(height*0.2437, height*0.3046)),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                      top: 20, left: 50, bottom: height*0.2437, right: 50),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Stack(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 180,
                          color: Color.fromRGBO(16,46,30, 100),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: height*0.2071, left: 18),
                          child: IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.qrcode,
                                  color: Colors.black,
                                  size: 150,
                                ),
                                onPressed: () {},
                                iconSize: 16.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 40),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 160,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color.fromRGBO(16,46,30,100),
                      textColor: Colors.white,
                      child: Text("Profile"),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color.fromRGBO(16,46,30,100),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text("Validate"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: RaisedButton(
        color: Colors.green[200],
          onPressed: () {},
          child: ListTile(
            title: Container(
                padding: EdgeInsets.only(left: width*0.243),
                child: Text("Invite your friends"),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18,),
          )),
    );
  }
}
