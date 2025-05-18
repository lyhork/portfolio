import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern Portfolio',
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lyhork Lim'),
          actions: [
            IconButton(
              icon: Icon(isDark ? Icons.wb_sunny : Icons.nights_stay),
              onPressed: () => setState(() => isDark = !isDark),
            ),
          ],
        ),
        body: const HomePage(),
      ),
    );
  }
}

