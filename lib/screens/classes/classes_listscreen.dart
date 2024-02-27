import 'package:flutter/material.dart';
import 'package:setstate_provider/global_app_state.dart';
import 'package:setstate_provider/screens/classes/classes_createscreen.dart';

class ClassesListScreen extends StatefulWidget {
  const ClassesListScreen({super.key});

  @override
  State<ClassesListScreen> createState() => _ClassesListScreenState();
}

class _ClassesListScreenState extends State<ClassesListScreen> {
  @override
  Widget build(BuildContext context) {
    final classList =
        context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.classes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Classes'),
      ),
      body: classList.isEmpty
          ? const Center(
              child: Text('No Classes yet'),
            )
          : ListView.builder(
              itemCount: classList.length,
              itemBuilder: (context, index) {
                final classItem = classList[index];
                return ListTile(
                  title: Text(classItem.title),
                  // Calculate students
                  subtitle: Text('0'),
                  onLongPress: () {
                    setState(() {
                      classList.remove(classItem);
                    });
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add_class_btn',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ClassesCreateScreen()),
          ).then((value) => setState(() {}));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
