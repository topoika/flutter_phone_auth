import 'package:flutter/material.dart';
import 'package:phone_auth_test/functions.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({Key key}) : super(key: key);

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your phone Number here'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('Phone Number'),
              TextField(
                controller: _phoneNumberController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone number (+xx xxx-xxx-xxxx)',
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: RaisedButton(
                    child: Text("Continue"),
                    onPressed: () {
                      AuthFunc()
                          .registerUser(_phoneNumberController.text, context);
                    },
                    color: Colors.greenAccent[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
