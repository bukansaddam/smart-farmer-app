import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_laporan.dart';
import 'package:smart_farmer_app/model/upload.dart';

class DetailLaporanProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;
  final String idLaporan;

  DetailLaporanProvider({
    required this.apiService,
    required this.authRepository,
    required this.idLaporan,
  }) {
    getDetailLaporan(id: idLaporan);
  }

  DetailLaporanResponse? detailLaporanResponse;
  LoadingState loadingState = const LoadingState.initial();
  UploadResponse? uploadResponse;

  Future<void> getDetailLaporan({required String id}) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      detailLaporanResponse = await apiService.getDetailLaporan(
        token: token,
        idLaporan: id,
      );

      if (detailLaporanResponse!.success) {
        loadingState = const LoadingState.loaded();
        notifyListeners();
      } else {
        loadingState = LoadingState.error(detailLaporanResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> updateStatusLaporan({
    required String idLaporan,
    required String status,
    required String kategori,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      uploadResponse = await apiService.updateStatusLaporan(
        token: token,
        idLaporan: idLaporan,
        status: status,
        kategori: kategori,
      );

      if (uploadResponse!.success) {
        loadingState = const LoadingState.loaded();
        notifyListeners();
      } else {
        loadingState = LoadingState.error(uploadResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }
}
