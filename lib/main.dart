import 'package:flutter/material.dart';
import 'package:food_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        textTheme: TextTheme(
            titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        )),
      ),
    );
  }
}
