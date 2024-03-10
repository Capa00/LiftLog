
import 'package:fit_forge/models/tab_exercise.dart';

class GymTab {
  List<TabExercise>? exercises;

  GymTab({this.exercises = const <TabExercise>[]});

  GymTab.fromJson(Map<String, dynamic> json) {
    if (json['tab_exercise'] != null) {
      exercises = <TabExercise>[];
      json['tab_exercise'].forEach((v) {
        exercises!.add(TabExercise.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (exercises != null) {
      data['tab_exercise'] = exercises!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}