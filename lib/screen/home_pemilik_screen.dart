import 'package:flutter/material.dart';

class HomePemilikScreen extends StatefulWidget {
  const HomePemilikScreen({super.key});

  @override
  State<HomePemilikScreen> createState() => _HomePemilikScreenState();
}

class _HomePemilikScreenState extends State<HomePemilikScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Pemilik'),
      ),
      body: const Center(
        child: Text('Home Pemilik'),
      ),
    );
  }
}