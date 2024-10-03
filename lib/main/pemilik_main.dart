import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/detail_inventory.dart';
import 'package:smart_farmer_app/provider/auth_provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/auth/register_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/add_inventory_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/detail_inventory_screen.dart';
import 'package:smart_farmer_app/screen/home_pemilik_screen.dart';
import 'package:smart_farmer_app/screen/auth/login_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/edit_inventory_screen.dart';
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
        ChangeNotifierProvider(
          create: (context) => di.locator<HomeProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => di.locator<InventoryProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => di.locator<KandangProvider>(),
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
          routes: [
            GoRoute(
                path: 'detail_inventory/:id',
                name: 'detail_inventory',
                builder: (context, state) {
                  String extraCategory = (state.extra
                      as Map<String, dynamic>)['category'] as String;
                  String extraIdKandang = (state.extra
                      as Map<String, dynamic>)['idKandang'] as String;
                  debugPrint('extra: ${state.extra}');
                  return DetailInventoryScreen(
                    id: state.pathParameters['id']!,
                    category: extraCategory,
                    kandangId: extraIdKandang,
                  );
                },
                routes: [
                  GoRoute(
                      path: 'edit_inventory',
                      name: 'edit_inventory',
                      builder: (context, state) {
                        String extraCategory = (state.extra
                            as Map<String, dynamic>)['category'] as String;
                        DetailInventory detailInventory = (state.extra
                                as Map<String, dynamic>)['detailInventory']
                            as DetailInventory;
                        String extraIdKandang = (state.extra
                            as Map<String, dynamic>)['idKandang'] as String;
                        return EditInventoryScreen(
                          idKandang: extraIdKandang,
                          idInventory: state.pathParameters['id']!,
                          category: extraCategory,
                          detailInventory: detailInventory,
                        );
                      }),
                ]),
            GoRoute(
                path: 'add_inventory',
                name: 'add_inventory',
                builder: (context, state) {
                  String extraId = (state.extra
                      as Map<String, dynamic>)['idKandang'] as String;
                  String extraCategory = (state.extra
                      as Map<String, dynamic>)['category'] as String;
                  return AddInventoryScreen(
                    idKandang: extraId,
                    category: extraCategory,
                  );
                }),
          ]),
    ],
  );
}
