class Exercise {
  final String name;
  final String sets;
  final String reps;
  final String cooldown;
  final String weight;
  final bool completed;

  Exercise(this.name, this.sets, this.reps, this.cooldown,
      [this.weight = '0', this.completed = false]);
}
