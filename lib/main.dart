import 'package:flutter/material.dart';
import 'package:loginscreenuiflutter/screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Home(),
      ),
    );
  }
}
