// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassModel {
  final String title;
  ClassModel({
    required this.title,
  });

  ClassModel copyWith({
    String? title,
  }) {
    return ClassModel(
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
    };
  }

  factory ClassModel.fromMap(Map<String, dynamic> map) {
    return ClassModel(
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassModel.fromJson(String source) =>
      ClassModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ClassModel(title: $title)';

  @override
  bool operator ==(covariant ClassModel other) {
    if (identical(this, other)) return true;

    return other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}
