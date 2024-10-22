import 'package:flutter/material.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/statistic.dart';

class StatisticProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  StatisticProvider({
    required this.apiService,
    required this.authRepository,
  });

  StatisticResponse? statisticResponse;
  LoadingState loadingState = const LoadingState.initial();

  int page = 1;
  int pageSize = 10;

  List<Data> listData = [];
  List<Data> selectedDaysData = [];

  List<double> weeklyData = [];
  List<int> dates = [];

  int totalOrder = 0;
  int totalIncome = 0;
  int totalOrderEmployee = 0;

  Future<void> getStatistic(
      {required String idKandang,
      required String kategori,
      String dateStart = '',
      String dateEnd = ''}) async {
    try {
      if (page == 1) {
        loadingState = const LoadingState.loading();
        notifyListeners();
      }

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingState.error('You must login first');
        notifyListeners();
        return;
      }

      statisticResponse = await apiService.getStatistik(
          token: token,
          idKandang: idKandang,
          jenis: kategori,
          startDate: dateStart,
          endDate: dateEnd);

      if (statisticResponse!.success) {
        weeklyData = [];
        listData = statisticResponse!.result.data;

        getDataGraph();

        loadingState = const LoadingState.loaded();
        debugPrint(weeklyData.toString());
        notifyListeners();
      } else {
        loadingState = LoadingState.error(statisticResponse!.message);
        notifyListeners();
      }
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }

  void getDataGraph() {
    weeklyData =
        statisticResponse!.result.graph.map((e) => e.count.toDouble()).toList();
    dates =
        statisticResponse!.result.graph.map((e) => int.parse(e.date)).toList();
  }

  Future<void> refreshStatistic({
    required String idKandang,
    String dateStart = '',
    String dateEnd = '',
    required String kategori,
    int date = 0,
  }) async {
    if (date != 0) {
      getOrderByDate(date: date);
    } else {
      page = 1;
      listData = [];
      await getStatistic(
          idKandang: idKandang,
          kategori: kategori,
          dateStart: dateStart,
          dateEnd: dateEnd);
    }
  }

  Future<void> getOrderByDate({required int date}) async {
    selectedDaysData =
        listData.where((element) => element.tanggal.day == date).toList();
    notifyListeners();
  }

  Future<void> clearSelectedDaysOrder() async {
    selectedDaysData.clear();
    notifyListeners();
  }
}
