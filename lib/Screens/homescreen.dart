import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String ScreenId="HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to Uber Clone'),),
    );
  }
}
