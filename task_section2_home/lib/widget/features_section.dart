import 'package:flutter/material.dart';
import 'package:task_section2_home/widget/feature_tile.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Features",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),

        const FeatureTile(
          icon: Icons.speed,
          title: "Fast Performance",
          subtitle: "Lightning fast app performance",
          iconColor: Colors.deepPurple,
        ),
        const FeatureTile(
          icon: Icons.security_rounded,
          title: "Secure",
          subtitle: "Your data is safe with us",
          iconColor: Colors.lightBlue,
        ),
        const FeatureTile(
          icon: Icons.palette,
          title: "Beautiful UI",
          subtitle: "Modern and clean design",
          iconColor: Colors.orange,
        ),
      ],
    );
  }
}
