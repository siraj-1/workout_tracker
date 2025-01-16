// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:workout_tracker/models/exercise_modle.dart';
import 'package:workout_tracker/models/workout_modle.dart';

class WorkoutData extends ChangeNotifier {
  final List<WorkoutModle> _workouts = [];

// get the list of workouts
  List<WorkoutModle> getListOfWorkouts() {
    return getListOfWorkouts();
  }

// add workouts
  void addWorkoutList(String name) {
    _workouts.add(WorkoutModle(name: name, exercises: []));
    notifyListeners();
  }

// add a new exercise to a workout
  void addNewExercise(String WorkoutName, ExerciseModle exercise) {
// find the relavint workout
    WorkoutModle relavintWorkout = getRelavintWorkout(WorkoutName);

    relavintWorkout.exercises.add(exercise);
    notifyListeners();
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
    notifyListeners();
  }

// return the relavint workout
  WorkoutModle getRelavintWorkout(String WorkoutName) {
    WorkoutModle relavintWorkout = _workouts
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
