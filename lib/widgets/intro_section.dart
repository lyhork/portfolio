import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Lyhork Lim',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Flutter Developer',
                  textStyle: const TextStyle(fontSize: 24, color: Colors.grey)),
              TypewriterAnimatedText('Firebase Enthusiast',
                  textStyle: const TextStyle(fontSize: 24, color: Colors.grey)),
            ],
            repeatForever: true,
            pause: const Duration(milliseconds: 1000),
          ),
        ],
      ),
    );
  }
}
