import 'package:flutter/material.dart';

class StudentsCreateScreen extends StatelessWidget {
  StudentsCreateScreen({super.key});

  final classList = ['Class A'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new students'),
      ),
      body: classList.isEmpty
          ? const Center(
              child: Text('Please create a class befor creating a student'),
            )
          : Column(
              children: [
                const SizedBox(height: 20),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: 'First name',
                      helperText: 'Enter the students first name',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                const SizedBox(height: 20),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: 'Last name',
                      helperText: 'Enter the students last name',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                DropdownButton(
                  value: 'Class A',
                  hint: const Text('Please choose a class'),
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: 'Class A',
                      child: Text('Class A'),
                    ),
                    DropdownMenuItem(
                      value: 'Class B',
                      child: Text('Class B'),
                    ),
                  ],
                  onChanged: (newValue) {},
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('create students'))
              ],
            ),
    );
  }
}
