import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/petugas.dart';

class PetugasProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  PetugasProvider({required this.apiService, required this.authRepository});

  PetugasResponse? petugasResponse;
  LoadingState loadingState = const LoadingState.initial();

  int? pageItems = 1;
  int? sizeItems = 10;

  List<Petugas> listPetugas = [];

  Future<void> getAllPetugas({
    String? nama,
  }) async {
    try {
      if (pageItems == 1) {
        loadingState = const LoadingState.loading();
        notifyListeners();
      }

      final repository = await authRepository.getUser();
      final token = repository!.token;

      petugasResponse = await apiService.getAllPetugas(
        token: token,
        page: pageItems!,
        pageSize: sizeItems!,
        nama: nama ?? '',
      );

      if (petugasResponse!.success) {
        if (pageItems == 1) {
          listPetugas.clear();
        }
        listPetugas.addAll(petugasResponse!.result.data);

        loadingState = const LoadingState.loaded();
        notifyListeners();

        if (petugasResponse!.result.data.length < sizeItems!) {
          pageItems = null;
        } else {
          pageItems = pageItems! + 1;
        }
      } else {
        loadingState = LoadingState.error(petugasResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> refreshPetugas({
    String? searchValue
  }) async {
    pageItems = 1;
    listPetugas.clear();
    await getAllPetugas(nama: searchValue);
  }
}
