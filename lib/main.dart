import 'package:flutter/material.dart';
import 'package:quiz_app/screen/home_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Glory'),
      home: const HomeView(),
    );
  }
}
