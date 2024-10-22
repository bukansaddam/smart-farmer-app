import 'package:get_it/get_it.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/provider/auth_provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/provider/laporan_provider.dart';
import 'package:smart_farmer_app/provider/petugas_provider.dart';
import 'package:smart_farmer_app/provider/statistic_provider.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton<AuthProvider>(
    () => AuthProvider(apiService: locator(), authRepository: locator()),
  );
  locator.registerLazySingleton<HomeProvider>(
    () => HomeProvider(apiService: locator(), authRepository: locator()),
  );
  locator.registerLazySingleton<InventoryProvider>(
    () => InventoryProvider(apiService: locator(), authRepository: locator()),
  );
  locator.registerLazySingleton<KandangProvider>(
    () => KandangProvider(apiService: locator(), authRepository: locator()),
  );
  locator.registerLazySingleton<LaporanProvider>(
    () => LaporanProvider(apiService: locator(), authRepository: locator()),
  );
  locator.registerLazySingleton<PetugasProvider>(
    () => PetugasProvider(apiService: locator(), authRepository: locator()),
  );
  locator.registerLazySingleton<StatisticProvider>(
    () => StatisticProvider(apiService: locator(), authRepository: locator()),
  );

  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerLazySingleton<AuthRepository>(() => AuthRepository());
}
