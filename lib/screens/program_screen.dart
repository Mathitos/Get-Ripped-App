import 'package:flutter/material.dart';

import '../data_class/program.dart';
import '../shared/exercice_item_list.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({Key? key, required this.program}) : super(key: key);

  final Program program;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: program.exercises
              .map((e) => ExerciseItemList(e.toExercise()))
              .toList(),
        ));
  }
}
