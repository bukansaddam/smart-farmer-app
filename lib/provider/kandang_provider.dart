import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/kandang.dart';

class KandangProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  KandangProvider({
    required this.apiService,
    required this.authRepository,
  });

  KandangResponse? kandangResponse;
  LoadingState loadingState = const LoadingState.initial();

  int? pageItems = 1;
  int sizeItems = 10;

  List<Kandang> listKandang = [];

  Kandang? selectedKandang;

  Future<void> getAllKandang({String? searchValue}) async {
    try {
      if (pageItems == 1) {
        loadingState = const LoadingState.loading();
        notifyListeners();
      }

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingState.error('Token is null');
        notifyListeners();
        return;
      }

      kandangResponse = await apiService.getKandang(
          token: token,
          page: pageItems,
          pageSize: sizeItems,
          nama: searchValue ?? '');

      if (kandangResponse!.success) {
        if (pageItems == 1) {
          listKandang.clear();
        }
        listKandang.addAll(kandangResponse!.result.data);

        loadingState = const LoadingState.loaded();
        notifyListeners();

        if (kandangResponse!.result.data.length < sizeItems) {
          pageItems = null;
        } else {
          pageItems = pageItems! + 1;
        }
      } else {
        loadingState = LoadingState.error(kandangResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> refreshKandang({String? searchValue}) async {
    pageItems = 1;
    listKandang.clear();
    await getAllKandang(searchValue: searchValue);
  }

  Future<void> setSelectedKandang({Kandang? kandang}) async {
    try {
      if (kandang == null) {
        selectedKandang = listKandang.first;
        notifyListeners();
      } else {
        selectedKandang = kandang;
        notifyListeners();
      }
      debugPrint("selected kandang : $kandang");
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }
}
