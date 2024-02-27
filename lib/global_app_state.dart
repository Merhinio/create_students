import 'package:flutter/material.dart';
import 'package:setstate_provider/models/class_models.dart';
import 'package:setstate_provider/models/studenst_model.dart';

class GlobalAppState extends InheritedWidget {
  final List<ClassModel> classes;
  final List<StudentModel> students;

  GlobalAppState({
    required this.classes,
    required this.students,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(GlobalAppState oldWidget) {
    return (classes != oldWidget.classes) || (students != oldWidget.students);
  }
}
