import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/auth_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  delayscreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      final authRepository = context.read<AuthProvider>();
      final isLoggedIn = await authRepository.authRepository.getState();

      if (!isLoggedIn && mounted) {
        context.goNamed('login');
      } else if (isLoggedIn && mounted) {
        context.goNamed('home');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    delayscreen();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF4E6B3E),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
