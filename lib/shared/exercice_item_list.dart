// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../screens/program_screen.dart';

class ExerciseItemList extends StatelessWidget {
  const ExerciseItemList(
    this.exercise, {
    Key? key,
  }) : super(key: key);
  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(children: [
              Expanded(
                  flex: 1,
                  child: Column(children: [
                    Row(
                      children: <Widget>[
                        _itemListComponent('exercise', exercise.name,
                            centerText: false),
                        Spacer(),
                        Wrap(
                          children: [
                            _itemListComponent(
                              'sets',
                              exercise.sets,
                            ),
                            _itemListComponent(
                              'reps',
                              exercise.reps,
                            ),
                          ],
                          spacing: 12.0,
                          crossAxisAlignment: WrapCrossAlignment.center,
                        )
                      ],
                    ),
                    Row(children: [
                      Spacer(),
                      Wrap(
                        children: [
                          _itemListComponent(
                            'rest',
                            exercise.cooldown,
                          ),
                          _itemListComponent(
                            'weight',
                            exercise.weight,
                          ),
                        ],
                        spacing: 12.0,
                        crossAxisAlignment: WrapCrossAlignment.center,
                      )
                    ])
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.check_circle_outline,
                    color: exercise.completed
                        ? Colors.green
                        : Colors.grey.shade400,
                  ))
            ])));
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
