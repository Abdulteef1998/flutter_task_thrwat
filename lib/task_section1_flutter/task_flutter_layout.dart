import 'package:flutter/material.dart';
import 'package:task_flutter_thrwat/task_section1_flutter/widget/body_detials.dart';

class TaskFlutterLayout extends StatelessWidget {
  const TaskFlutterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Layout Demo'), centerTitle: true),
      backgroundColor: Colors.white,
      body: Column(children: [Image.asset('assets/sea.jfif'), BodyDetials()]),
    );
  }
}
