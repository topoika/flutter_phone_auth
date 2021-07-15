import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth_test/collect_nnumber.dart';
import 'package:phone_auth_test/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Phone Auth',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: FirebaseAuth.instance.currentUser != null ? Home() : PhoneNumber(),
    );
  }
}
