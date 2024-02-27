import 'package:flutter/material.dart';

import 'package:setstate_provider/screens/classes/classes_listscreen.dart';

import 'package:setstate_provider/screens/students/studenslistscreen.dart';

class NavigationBase extends StatefulWidget {
  const NavigationBase({super.key});

  @override
  State<NavigationBase> createState() => _NavigationBaseState();
}

class _NavigationBaseState extends State<NavigationBase> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          ClassesListScreen(),
          StudentsListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Classes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Students'),
        ],
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
