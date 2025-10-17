import 'package:flutter/material.dart';
import 'package:task_section2_home/widget/bottom_buttons.dart';
import 'package:task_section2_home/widget/features_section.dart';
import 'package:task_section2_home/widget/header_widget.dart';
import 'package:task_section2_home/widget/icons_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF4FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),

              const SizedBox(height: 25),

              const Text(
                "Quick Stats",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              IconsSection(),
              const SizedBox(height: 15),
              FeaturesSection(),

              const SizedBox(height: 50),

              BottomButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
