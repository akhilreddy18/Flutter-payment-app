import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 26, 8, 100),
        title: Center(child:Text("Inbox", style: TextStyle(
            fontSize: 18
          ),),),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('Verify your account = Free money transacations!!!'),
              subtitle: Text('Yesterday at 09:16 pm'),
              trailing: Icon(Icons.arrow_forward_ios, size: 18,),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('How to send money for free to anyone'),
              subtitle: Text('17/09/2020 at 09:16 pm'),
              trailing: Icon(Icons.arrow_forward_ios, size: 18,),
            ),
          ),
        ],
      ),
    );
  }
}
