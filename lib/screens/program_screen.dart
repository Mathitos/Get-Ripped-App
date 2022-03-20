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
          children: const <Widget>[
            ExerciseItemList(),
            ExerciseItemList(),
            ExerciseItemList(),
            ExerciseItemList(),
            ExerciseItemList(),
            ExerciseItemList()
          ],
        ));
  }
}
