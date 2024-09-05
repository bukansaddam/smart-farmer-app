import 'package:get_it/get_it.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/provider/auth_provider.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton<AuthProvider>(
    () => AuthProvider(apiService: locator(), authRepository: locator()),
  );

  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerLazySingleton<AuthRepository>(() => AuthRepository());
}
