import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get_ripped/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => MainScreen()));
    });

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/splash.jpeg'),
        fit: BoxFit.fitHeight,
      )),
      child: Center(
        child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white70,
            ),
            child: Text(
              'Commit to be Fit,\n dare to be Great',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 33, shadows: const [
                Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Colors.grey)
              ]),
            )),
      ),
    ));
  }
}
