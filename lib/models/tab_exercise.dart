import 'exercise.dart';

class TabExercise {
  Exercise? exercise;
  int? reps;
  int? rest;
  int? rpe;
  List<int>? tut;

  TabExercise({required exercise, required name, required reps, required rest, rpe, tut});

  TabExercise.fromJson(Map<String, dynamic> json) {
    exercise = json['exercise'] != null
        ? Exercise.fromJson(json['exercise'])
        : null;
    reps = json['reps'];
    rest = json['rest'];
    rpe = json['rpe'];
    tut = json['tut'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (exercise != null) {
      data['exercise'] = exercise!.toJson();
    }
    data['reps'] = reps;
    data['rest'] = rest;
    data['rpe'] = rpe;
    data['tut'] = tut;
    return data;
  }
}