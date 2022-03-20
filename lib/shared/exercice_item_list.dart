// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExerciseItemList extends StatelessWidget {
  const ExerciseItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                _itemListComponent('exercise', 'DeadLift', centerText: false),
                Spacer(),
                Wrap(
                  children: [
                    _itemListComponent(
                      'reps',
                      '15 Kg',
                    ),
                    _itemListComponent(
                      'weight',
                      '15 Kg',
                    ),
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.grey.shade400,
                    )
                  ],
                  spacing: 12.0,
                  crossAxisAlignment: WrapCrossAlignment.center,
                )
              ],
            )));
  }
}

Widget _itemListComponent(String title, String value,
    {bool centerText = true}) {
  return Column(
      crossAxisAlignment:
          centerText ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 10, color: Colors.grey)),
        Text(value)
      ]);
}
