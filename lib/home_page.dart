import 'package:flutter/material.dart';
import 'widgets/intro_section.dart';
import 'widgets/project_section.dart';
import 'widgets/contact_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          IntroSection(),
          SizedBox(height: 40),
          ProjectSection(),
          SizedBox(height: 40),
          ContactSection(),
        ],
      ),
    );
  }
}
