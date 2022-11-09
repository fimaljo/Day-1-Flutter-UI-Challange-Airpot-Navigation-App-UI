import 'package:day_1_airpot_navigation_app/screens/main.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,

          // scaffoldBackgroundColor: Colors.red
          scaffoldBackgroundColor: Color.fromARGB(105, 80, 77, 77)),
      home: MainPage(),
    );
  }
}
