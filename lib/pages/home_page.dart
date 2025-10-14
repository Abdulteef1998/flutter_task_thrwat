import 'package:flutter/material.dart';
import 'package:task_flutter_thrwat/widgets/color_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const ColorBox(
              color: Color(0xFFDCEEFF),
              height: 120,
              width: double.infinity,
            ),

            Row(
              children: const [
                ColorBox(color: Color(0xFFE0E0E0), height: 25, width: 20),
                SizedBox(width: 1),
                ColorBox(color: Color(0xFFE0E0E0), height: 20, width: 340),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(height: 1, color: Colors.grey),
            ),

            Row(
              children: const [
                Expanded(
                  child: Column(
                    children: [
                      ColorBox(color: Color(0xFFA5D6A7), height: 50),
                      ColorBox(color: Color(0xFFA5D6A7), height: 50),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ColorBox(color: Color(0xFFFFCC80), height: 115),
                      ),
                      Expanded(
                        child: ColorBox(color: Color(0xFFFFCC80), height: 115),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Row(
              children: const [
                Expanded(
                  child: ColorBox(color: Color(0xFFE1BEE8), height: 100),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ColorBox(color: Color(0xFFCF93D9), height: 44),
                      ColorBox(color: Color(0xFFCF93D9), height: 44),
                    ],
                  ),
                ),
                Expanded(
                  child: ColorBox(
                    color: Color(0xFFE1BEE7),
                    height: 100,
                    margin: EdgeInsets.only(left: 10),
                  ),
                ),

                Expanded(
                  child: ColorBox(
                    color: Color(0xFFF3E5F6),
                    height: 100,
                    margin: EdgeInsets.only(right: 5),
                  ),
                ),
              ],
            ),

            Row(
              children: const [
                Expanded(child: ColorBox(color: Color(0xFFB2DFDC), height: 70)),
                Expanded(child: ColorBox(color: Color(0xFF80CBC4), height: 70)),
              ],
            ),

            const ColorBox(
              color: Color(0xFFE0E0E0),
              height: 50,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
