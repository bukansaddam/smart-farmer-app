import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/detail_inventory.dart';
import 'package:smart_farmer_app/model/detail_kandang.dart';
import 'package:smart_farmer_app/provider/auth_provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/provider/laporan_provider.dart';
import 'package:smart_farmer_app/provider/petugas_provider.dart';
import 'package:smart_farmer_app/provider/statistic_provider.dart';
import 'package:smart_farmer_app/screen/auth/register_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory/add_inventory_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory/detail_inventory_screen.dart';
import 'package:smart_farmer_app/screen/home_pemilik_screen.dart';
import 'package:smart_farmer_app/screen/auth/login_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory/edit_inventory_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/kandang/add_kandang_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/kandang/detail_kandang_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/kandang/edit_kandang_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/laporan/detail_laporan_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/petugas/detail_petugas_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/statistik/statistik_screen.dart';
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
        ChangeNotifierProvider(
          create: (context) => di.locator<LaporanProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => di.locator<PetugasProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => di.locator<StatisticProvider>(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF6F7FC),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFF6F7FC),
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
                String extraCategory =
                    (state.extra as Map<String, dynamic>)['category'] as String;
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
                String extraCategory =
                    (state.extra as Map<String, dynamic>)['category'] as String;
                return AddInventoryScreen(
                  idKandang: extraId,
                  category: extraCategory,
                );
              }),
          GoRoute(
              path: 'detail_kandang',
              name: 'detail_kandang',
              builder: (context, state) {
                String extraId = (state.extra
                    as Map<String, dynamic>)['idKandang'] as String;
                return DetailKandangScreen(
                  idKandang: extraId,
                );
              },
              routes: [
                GoRoute(
                  path: 'edit_kandang',
                  name: 'edit_kandang',
                  builder: (context, state) {
                    String extraId = (state.extra
                        as Map<String, dynamic>)['idKandang'] as String;
                    DetailKandang detailKandang =
                        (state.extra as Map<String, dynamic>)['detailKandang']
                            as DetailKandang;
                    return EditKandangScreen(
                      idKandang: extraId,
                      detailKandang: detailKandang,
                    );
                  },
                ),
              ]),
          GoRoute(
              path: 'add_kandang',
              name: 'add_kandang',
              builder: (context, state) {
                return const AddKandangScreen();
              }),
          GoRoute(
            path: 'detail_laporan',
            name: 'detail_laporan',
            builder: (context, state) {
              String extraId =
                  (state.extra as Map<String, dynamic>)['idLaporan'] as String;
              String extraKategori =
                  (state.extra as Map<String, dynamic>)['kategori'] as String;
              return DetailLaporanScreen(
                idLaporan: extraId,
                kategori: extraKategori,
              );
            },
          ),
          GoRoute(
            path: 'detail_petugas',
            name: 'detail_petugas',
            builder: (context, state) {
              String extraId =
                  (state.extra as Map<String, dynamic>)['idPetugas'] as String;
              return DetailPetugasScreen(idPetugas: extraId);
            },
          ),
          GoRoute(
            path: 'statistik',
            name: 'statistik',
            builder: (context, state) {
              String extraId =
                  (state.extra as Map<String, dynamic>)['idKandang'] as String;
              String kategori =
                  (state.extra as Map<String, dynamic>)['kategori'] as String;
              String extraTitle =
                  (state.extra as Map<String, dynamic>)['title'] as String;
              return StatistikScreen(
                kategori: kategori,
                idKandang: extraId,
                title: extraTitle,
              );
            },
          ),
        ],
      ),
    ],
  );
}
