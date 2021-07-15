import 'package:flutter/material.dart';
import 'package:phone_auth_test/functions.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({Key key}) : super(key: key);

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController phoneNumber = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your phone Number here'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Enter a valid Phone Number'),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  controller: phoneNumber,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: '(+1234567890)',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: loading
                    ? CircularProgressIndicator()
                    : RaisedButton(
                        child: Text("Continue"),
                        onPressed: () {
                          setState(() {
                            loading = true;
                          });
                          AuthFunc().registerUser(phoneNumber.text, context);
                        },
                        color: Colors.greenAccent[700]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
