import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_inventory.dart';
import 'package:smart_farmer_app/model/upload.dart';

class DetailInventoryProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;
  final String id;

  DetailInventoryProvider({
    required this.apiService,
    required this.authRepository,
    required this.id,
  }) {
    getDetailInventory(idInventory: id);
  }

  LoadingState loadingState = const LoadingStateInitial();

  DetailInventoryResponse? detailInventoryResponse;
  UploadResponse? uploadResponse;

  int? commodityStock = 0;
  int? currentStock = 0;

  Future<void> getDetailInventory({
    String idInventory = '',
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      detailInventoryResponse = await apiService.getDetailInventory(
          token: token!, idInventory: idInventory);

      if (detailInventoryResponse!.success) {
        loadingState = const LoadingState.loaded();
        commodityStock = detailInventoryResponse!.data.stock;
        currentStock = detailInventoryResponse!.data.stock;
        notifyListeners();
      } else {
        loadingState = LoadingState.error(detailInventoryResponse!.message);
        notifyListeners();
      }
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> increaseStock() {
    commodityStock = commodityStock! + 1;
    notifyListeners();
    return Future.value();
  }

  Future<void> decreaseStock() {
    if (commodityStock! > 0) {
      commodityStock = commodityStock! - 1;
      notifyListeners();
    }
    return Future.value();
  }

  Future<void> updateStock() async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      uploadResponse = await apiService.updateStock(
        token: token!,
        idInventory: id,
        stock: commodityStock!,
      );

      if (uploadResponse!.success) {
        loadingState = const LoadingState.loaded();
        currentStock = commodityStock;
        notifyListeners();
      } else {
        loadingState = LoadingState.error(uploadResponse!.message);
        notifyListeners();
      }
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }
}
