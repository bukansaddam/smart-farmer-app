import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/auth_provider.dart';
import 'package:smart_farmer_app/screen/auth/register_screen.dart';
import 'package:smart_farmer_app/screen/home_pemilik_screen.dart';
import 'package:smart_farmer_app/screen/auth/login_screen.dart';
import 'package:smart_farmer_app/screen/splash_screen.dart';
import '../config/injection.dart' as di;

void main() {
  di.init();

  runApp(PemilikApp());
}

class PemilikApp extends StatelessWidget {
  PemilikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => di.locator<AuthProvider>(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
            centerTitle: true,
            scrolledUnderElevation: 0,
          ),
        ),
        routerConfig: _router,
      ),
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
          path: '/register',
          name: 'register',
          builder: (context, state) => const RegisterScreen()),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomePemilikScreen(),
      ),
    ],
  );
}
