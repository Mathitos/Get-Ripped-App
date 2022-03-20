import 'package:flutter/material.dart';
import 'package:get_ripped/shared/bottom_navigator.dart';

void main() {
  runApp(GRippedApp());
}

class GRippedApp extends StatelessWidget {
  const GRippedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: BottomNavigator());
  }
}
