import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LongScrollTestPage(),
    );
  }
}

class LongScrollTestPage extends StatelessWidget {
  const LongScrollTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scroll Test')),
      body: ListView.builder(
        itemCount: 300, // ← increase this if needed
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            color: Colors.grey.shade300,
            child: Text(
              'Item $index',
              style: const TextStyle(fontSize: 24),
            ),
          );
        },
      ),
    );
  }
}
