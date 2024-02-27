import 'package:flutter/material.dart';
import 'package:setstate_provider/global_app_state.dart';
import 'package:setstate_provider/navigationbase.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalAppState(
      classes: [],
      students: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const NavigationBase(),
      ),
    );
  }
}
