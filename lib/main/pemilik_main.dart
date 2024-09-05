import 'package:flutter/material.dart';

void main() {
  runApp(const PemilikApp());
}

class PemilikApp extends StatelessWidget {
  const PemilikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
