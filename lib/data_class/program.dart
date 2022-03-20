import 'package:get_ripped/data_class/exercise.dart';

class Program {
  List<ProgramExercise> exercises;

  Program(this.exercises);

  Program.fromJson(Map<String, dynamic> json)
      : exercises = (json['exercises'] as List)
            .map((programExerciseJson) =>
                ProgramExercise.fromJson(programExerciseJson))
            .toList();
}

class ProgramExercise {
  final String name;
  List<WeightProgressionEntry> weightProgressionEntries = [];
  final String cooldown;
  final String sets;

  ProgramExercise(this.name, this.cooldown, this.sets);

  ProgramExercise.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        cooldown = json['cooldown'],
        sets = json['sets'],
        weightProgressionEntries = (json['weightProgressionEntries'] as List)
            .map((weightProgressionEntryJson) =>
                WeightProgressionEntry.fromJson(weightProgressionEntryJson))
            .toList();

  Exercise toExercise() {
    return Exercise(name, sets, weightProgressionEntries.last.reps, cooldown);
  }
}

class WeightProgressionEntry {
  final DateTime day;
  final String reps;
  final String weight;

  WeightProgressionEntry(this.day, this.reps, this.weight);

  WeightProgressionEntry.fromJson(Map<String, dynamic> json)
      : day = DateTime.parse(json['day']),
        reps = json['reps'],
        weight = json['weight'];
}
