import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Projects',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: List.generate(3, (index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  // Later: launch project URL
                },
                child: Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade100.withOpacity(0.3),
                    border: Border.all(color: Colors.blueAccent, width: 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text('Project ${index + 1}'),
                  ),
                )
                    .animate()
                    .fadeIn(duration: 400.ms)
                    .slideX(begin: index.isEven ? -0.2 : 0.2),
              ),
            );
          }),
        )
      ],
    );
  }
}
