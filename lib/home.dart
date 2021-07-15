import 'package:flutter/material.dart';
import 'package:phone_auth_test/functions.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verifcation done'),
        actions: [
          IconButton(
            onPressed: () => AuthFunc().logOut(context),
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text('You have made it dude now go on'),
      ),
    );
  }
}
