import 'package:flutter/material.dart';
import 'package:get_ripped/screens/something_went_wrong_screen.dart';

import 'login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            return SomethingWentWrongScreen();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return LoginScreen();
          }
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
                    'Splash Screen',
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
        }));
  }
}
