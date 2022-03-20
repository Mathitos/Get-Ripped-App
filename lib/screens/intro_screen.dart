import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
