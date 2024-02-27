import 'package:flutter/material.dart';
import 'package:setstate_provider/global_app_state.dart';
import 'package:setstate_provider/screens/students/studenscreatescreen.dart';

class StudentsListScreen extends StatefulWidget {
  const StudentsListScreen({super.key});

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen> {
  @override
  Widget build(BuildContext context) {
    final studentList =
        context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.students;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Students'),
        ),
        body: studentList.isEmpty
            ? const Center(
                child: Text('No students created yet'),
              )
            : ListView.builder(
                itemCount: studentList.length,
                itemBuilder: (context, index) {
                  final studentItem = studentList[index];
                  return ListTile(
                    title: Text(
                        studentItem.firstName + ' ' + studentItem.lastName),
                    // Calculate students
                    subtitle: Text('0'),
                    onLongPress: () {
                      setState(() {
                        studentList.remove(studentItem);
                      });
                    },
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'add_studenst_btn',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StudentsCreateScreen()),
            ).then((value) => setState(() {}));
          },
          child: const Icon(Icons.add),
        ));
  }
}
