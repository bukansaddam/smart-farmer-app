import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistic.freezed.dart';
part 'statistic.g.dart';

@freezed
class StatisticResponse with _$StatisticResponse {
  const factory StatisticResponse({
    required bool success,
    required String message,
    required StatisticResult result,
  }) = _StatisticResponse;

  factory StatisticResponse.fromJson(Map<String, dynamic> json) =>
      _$StatisticResponseFromJson(json);
}

@freezed
class StatisticResult with _$StatisticResult {
  const factory StatisticResult({
    required int totalCount,
    required int totalPages,
    required List<Graph> graph,
    required List<Data> data,
  }) = _StatisticResult;

  factory StatisticResult.fromJson(Map<String, dynamic> json) =>
      _$StatisticResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required String jenis,
    required String kandang,
    required String deskripsi,
    required int total,
    required DateTime tanggal,
    required String user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Graph with _$Graph {
  const factory Graph({
    required String date,
    required int count,
  }) = _Graph;

  factory Graph.fromJson(Map<String, dynamic> json) => _$GraphFromJson(json);
}
