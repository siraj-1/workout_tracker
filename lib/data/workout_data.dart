// ignore_for_file: file_names, non_constant_identifier_names

import 'package:workout_tracker/models/exercise_modle.dart';
import 'package:workout_tracker/models/workout_modle.dart';

class WorkoutData {
  List<WorkoutModle> workoutList = [
    // default example for the workout list
    /*big list workoutList[contain workoutModle[ExerciseModle]] */
    WorkoutModle(name: 'back', exercises: [
      ExerciseModle(name: 'dead lift', reps: '8', sets: '2', wieght: '100')
    ])
  ];

// get the list of workouts
  List<WorkoutModle> getListOfWorkouts() {
    return getListOfWorkouts();
  }

// add workouts
  void addWorkoutList(String name) {
    workoutList.add(WorkoutModle(name: name, exercises: []));
  }

// add a new exercise
  void addNewExercise(
      String WorkoutName, String reps, String wieght, String sets) {
// find the relavint workout
    WorkoutModle relavintWorkout = getRelavintWorkout(WorkoutName);

    relavintWorkout.exercises.add(ExerciseModle(
        name: WorkoutName, reps: reps, sets: sets, wieght: wieght));
  }

// get the lenght of a given workout
  int getTheNumberOffexercises(String WorkoutName) {
    WorkoutModle relavintWorkout = getRelavintWorkout(WorkoutName);
    return relavintWorkout.exercises.length;
  }

// check of exercises
  void checkOffExercise(String WorkoutName, String exerciseName) {
    ExerciseModle relavintExercise =
        getExercisRelavint(WorkoutName, exerciseName);

    // check off boolean to show user is completed exercise
    relavintExercise.isCompleted = !relavintExercise.isCompleted;
  }

// return the relavint workout
  WorkoutModle getRelavintWorkout(String WorkoutName) {
    WorkoutModle relavintWorkout = workoutList
        .firstWhere((WorkoutModle) => WorkoutModle.name == WorkoutName);

    return relavintWorkout;
  }

// find and return relavint exrcise
  ExerciseModle getExercisRelavint(String WorkoutName, String exerciseName) {
    WorkoutModle relavintWorkout = getRelavintWorkout(WorkoutName);

    ExerciseModle relavintExercise = relavintWorkout.exercises
        .firstWhere((ExerciseModle) => ExerciseModle.name == exerciseName);

    return relavintExercise;
  }
}
