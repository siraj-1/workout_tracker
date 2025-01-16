class ExerciseModle {
  final String name;
  final String reps;
  final String wieght;
  final String sets;
  bool isCompleted;

  ExerciseModle(
      {required this.name,
      required this.reps,
      required this.sets,
      required this.wieght,
      this.isCompleted = false});
}
