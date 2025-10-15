import 'package:flutter/material.dart';
import 'package:task_flutter_thrwat/task_section1_flutter/widget/iconwithlabel.dart';

/// ---------- Main Widget ----------
class BodyDetials extends StatelessWidget {
  const BodyDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(
            children: const [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const IconButtonWithLabel(icon: Icons.star, color: Colors.red),

              const SizedBox(width: 4),
              const Text('41'),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const IconButtonWithLabel(
                icon: Icons.call,
                label: 'CALL',
                color: Colors.purple,
              ),
              const IconButtonWithLabel(
                icon: Icons.near_me,
                label: 'ROUTE',
                color: Colors.purple,
              ),
              const IconButtonWithLabel(
                icon: Icons.share,
                label: 'SHARE',
                color: Colors.purple,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
            'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
            'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
            'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
            'Activities enjoyed here include rowing, and riding the summer toboggan run.',
          ),
        ],
      ),
    );
  }
}
