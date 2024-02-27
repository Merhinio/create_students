import 'package:flutter/material.dart';
import 'package:setstate_provider/global_app_state.dart';
import 'package:setstate_provider/models/class_models.dart';

class ClassesCreateScreen extends StatefulWidget {
  const ClassesCreateScreen({super.key});

  @override
  State<ClassesCreateScreen> createState() => _ClassesCreateScreenState();
}

class _ClassesCreateScreenState extends State<ClassesCreateScreen> {
  TextEditingController classTitleController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('create new class'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          TextField(
            controller: classTitleController,
            autofocus: true,
            decoration: InputDecoration(
                labelText: 'Class title',
                helperText: 'Enter the class title',
                prefixIcon: const Icon(Icons.group),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          ElevatedButton(
              onPressed: () {
                final newClass = ClassModel(title: classTitleController.text);
                context
                    .dependOnInheritedWidgetOfExactType<GlobalAppState>()!
                    .classes
                    .add(newClass);
                Navigator.pop(context);
              },
              child: const Text('Create class'))
        ]),
      ),
    );
  }
}
