import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_petugas.dart';
import 'package:smart_farmer_app/model/upload.dart';

class DetailPetugasProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;
  final String idPetugas;

  DetailPetugasProvider({
    required this.apiService,
    required this.authRepository,
    required this.idPetugas,
  }) {
    getDetailPetugas(idPetugas: idPetugas);
  }

  DetailPetugasResponse? detailPetugasResponse;
  UploadResponse? uploadResponse;
  LoadingState loadingState = const LoadingState.initial();

  Future<void> getDetailPetugas({required String idPetugas}) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      detailPetugasResponse = await apiService.getDetailPetugas(
        idPetugas: idPetugas,
        token: token,
      );

      if (detailPetugasResponse!.success) {
        loadingState = const LoadingState.loaded();
        notifyListeners();
      } else {
        loadingState = LoadingState.error(detailPetugasResponse!.message);
        notifyListeners();
      }
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> updateLokasiPetugas({
    required String idPetugas,
    required String idKandang,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      uploadResponse = await apiService.updateLokasiPetugas(
        token: token,
        idPetugas: idPetugas,
        idKandang: idKandang,
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
