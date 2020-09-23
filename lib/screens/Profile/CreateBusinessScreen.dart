import 'package:flutter/material.dart';

class CreateBusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 26, 8, 100),
      body: Container(
        padding: EdgeInsets.only(top: height*0.572, left: 20, right: 20, bottom: 40),
        child: Column(
          children: [
            Text("Business owner?  Register your business and", style: TextStyle(
              fontSize: 16,
              color: Colors.white70
            ),),
            Text("accept digital payments!", style: TextStyle(
              fontSize: 16,
              color: Colors.white70
            ),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30),)
        ),
        padding: EdgeInsets.only(bottom: 20),
        width: width*0.972,
        height: height*0.085,
        margin: EdgeInsets.only(left:20,right: 20),
        child: RaisedButton(
          color: Colors.green[300],
          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
          onPressed: () {},
          child: Text("Create Business"),
        ),
      ),
    );
  }
}
