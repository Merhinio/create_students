// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:setstate_provider/models/class_models.dart';

class StudentModel {
  final String firstName;
  final String lastName;
  final ClassModel? classModel;

  StudentModel({
    required this.firstName,
    required this.lastName,
    required this.classModel,
  });

  StudentModel copyWith({
    String? firstName,
    String? lastName,
    ClassModel? classModel,
  }) {
    return StudentModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      classModel: classModel ?? this.classModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'classModel': classModel?.toMap(),
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      classModel: map['classModel'] != null
          ? ClassModel.fromMap(map['classModel'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'StudentModel(firstName: $firstName, lastName: $lastName, classModel: $classModel)';

  @override
  bool operator ==(covariant StudentModel other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName &&
        other.lastName == lastName &&
        other.classModel == classModel;
  }

  @override
  int get hashCode =>
      firstName.hashCode ^ lastName.hashCode ^ classModel.hashCode;
}
