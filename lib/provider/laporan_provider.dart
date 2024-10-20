import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/laporan.dart';

class LaporanProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  LaporanProvider({required this.apiService, required this.authRepository});

  LaporanResponse? laporanResponse;
  LoadingState loadingState = const LoadingState.initial();

  int? pageItems = 1;
  int? sizeItems = 10;

  List<Laporan> listLaporan = [];

  Future<void> getAllLaporan({
    String? kandang,
    String? jenis,
  }) async {
    try {
      if (pageItems == 1) {
        loadingState = const LoadingState.loading();
        notifyListeners();
      }

      final repository = await authRepository.getUser();
      final token = repository!.token;

      laporanResponse = await apiService.getAllLaporan(
        token: token,
        page: pageItems!,
        pageSize: sizeItems!,
        jenis: jenis == 'Semua' || jenis == null ? '' : jenis,
        kandang: kandang ?? '',
      );

      if (laporanResponse!.success) {
        if (pageItems == 1) {
          listLaporan.clear();
        }
        listLaporan.addAll(laporanResponse!.result.data);

        loadingState = const LoadingState.loaded();
        notifyListeners();

        if (laporanResponse!.result.data.length < sizeItems!) {
          pageItems = null;
        } else {
          pageItems = pageItems! + 1;
        }
      } else {
        loadingState = LoadingState.error(laporanResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> refreshLaporan({
    String? jenis,
    String? kandang,
  }) async {
    pageItems = 1;
    listLaporan.clear();
    await getAllLaporan(jenis: jenis, kandang: kandang);
  }
}
