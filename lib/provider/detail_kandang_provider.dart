import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_kandang.dart';

class DetailKandangProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;
  final String idKandang;

  DetailKandangProvider({
    required this.apiService,
    required this.authRepository,
    required this.idKandang,
  }){
    getDetailKandang(idKandang: idKandang);
  }

  LoadingState loadingState = const LoadingStateInitial();
  DetailKandangResponse? detailKandangResponse;

  Future<void> getDetailKandang({required String idKandang}) async {
    try {
      loadingState = const LoadingStateLoading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingStateError('Token is null');
        notifyListeners();
        return;
      }

      detailKandangResponse = await apiService.getDetailKandang(
        token: token,
        idKandang: idKandang,
      );

      if (detailKandangResponse!.success) {
        loadingState = const LoadingStateLoaded();
      } else {
        loadingState = LoadingStateError(detailKandangResponse!.message);
      }
    } catch (e) {
      loadingState = LoadingStateError(e.toString());
    } finally {
      notifyListeners();
    }
  }
}
