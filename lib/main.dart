import 'package:flutter/material.dart';
import 'package:uberclone/Screens/homescreen.dart';
import 'package:uberclone/Screens/loginscreen.dart';
import 'package:uberclone/Screens/registerScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: RegistrationScreen(),
    );
  }
}

