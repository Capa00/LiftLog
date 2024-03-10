// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


class TabExerciseForm extends StatefulWidget {
  const TabExerciseForm({super.key});

  @override
  State<TabExerciseForm> createState() => TabExerciseFormState();
}

class TabExerciseFormState extends State<TabExerciseForm> {
  final String EXERCISE_NAME = "exercise_name";
  final String EXERCISE_MUSCLE_NAME = "exercise_muscle_name";
  final String EXERCISE_MUSCLE_PERCENTAGE = "exercise_muscle_percentage";
  final String REPS = "reps";
  final String REST = "rest";
  final String RPE = "rpe";
  final String TUT = "tut";

  final _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      child: Column(
        children: [
          FormBuilderTextField(
            name: EXERCISE_NAME,
            decoration: const InputDecoration(labelText: 'Exercise Name'),
            validator: FormBuilderValidators.required(),
          ),
          FormBuilderTextField(
            name: EXERCISE_MUSCLE_NAME,
            decoration: const InputDecoration(labelText: 'Muscle Involved'),
          ),
          FormBuilderTextField(
            name: EXERCISE_MUSCLE_PERCENTAGE,
            decoration: const InputDecoration(labelText: 'First Name'),
            validator: FormBuilderValidators.numeric(),
          ),
        ],
      ));
  }
}
