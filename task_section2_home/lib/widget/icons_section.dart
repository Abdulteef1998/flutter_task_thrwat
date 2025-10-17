import 'package:flutter/material.dart';
import 'package:task_section2_home/widget/state_card.dart';

class IconsSection extends StatelessWidget {
  const IconsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        StatCard(
          icon: Icons.people,
          value: "1,234",
          label: "Users",
          color: Colors.purple,
        ),
        StatCard(
          icon: Icons.star,
          value: "4.8",
          label: "Rating",
          color: Colors.orange,
        ),
        StatCard(
          icon: Icons.trending_up,
          value: "98%",
          label: "Success",
          color: Colors.blue,
        ),
      ],
    );
  }
}
