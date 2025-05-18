import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Let’s Connect',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              onPressed: () => _launchURL('https://github.com/yourusername'),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () => _launchURL('https://linkedin.com/in/yourprofile'),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.telegram),
              onPressed: () => _launchURL('https://t.me/yourtelegram'),
            ),
          ],
        ),
      ],
    );
  }
}
