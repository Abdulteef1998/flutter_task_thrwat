import 'package:flutter/material.dart';
import 'package:task_flutter_thrwat/task_section1_flutter/task_flutter_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskFlutterLayout(),
    );
  }
}
