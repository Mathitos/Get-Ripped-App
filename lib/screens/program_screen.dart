import 'package:flutter/material.dart';

import '../shared/exercice_item_list.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ExerciseItemList(
              Exercise(
                  'Barbell Bench Press', '5', '7', '3-4min', '15 Kg', false),
            ),
            ExerciseItemList(
              Exercise(
                  'Barbell Bench Press', '5', '7', '3-4min', '15 Kg', false),
            ),
            ExerciseItemList(
              Exercise(
                  'Barbell Bench Press', '5', '7', '3-4min', '15 Kg', false),
            ),
            ExerciseItemList(
              Exercise(
                  'Barbell Bench Press', '5', '7', '3-4min', '15 Kg', false),
            ),
            ExerciseItemList(
              Exercise(
                  'Barbell Bench Press', '5', '7', '3-4min', '15 Kg', false),
            ),
            ExerciseItemList(
              Exercise(
                  'Barbell Bench Press', '5', '7', '3-4min', '15 Kg', false),
            )
          ],
        ));
  }
}

class Exercise {
  final String name;
  final String sets;
  final String reps;
  final String cooldown;
  final String weight;
  final bool completed;

  Exercise(this.name, this.sets, this.reps, this.cooldown, this.weight,
      this.completed);
}
