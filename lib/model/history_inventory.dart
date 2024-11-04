import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_inventory.freezed.dart';
part 'history_inventory.g.dart';

@freezed
class HistoryInventoryResponse with _$HistoryInventoryResponse {
  const factory HistoryInventoryResponse({
    required bool success,
    required String message,
    required HistoryInventoryResult result,
  }) = _HistoryInventoryResponse;

  factory HistoryInventoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryInventoryResponseFromJson(json);
}

@freezed
class HistoryInventoryResult with _$HistoryInventoryResult {
  const factory HistoryInventoryResult({
    required int totalCount,
    required int totalPages,
    required List<HistoryInventory> data,
  }) = _HistoryInventoryResult;

  factory HistoryInventoryResult.fromJson(Map<String, dynamic> json) =>
      _$HistoryInventoryResultFromJson(json);
}

@freezed
class HistoryInventory with _$HistoryInventory {
  const factory HistoryInventory({
    required String id,
    required String namaItem,
    required String keterangan,
    required String createdBy,
    required DateTime createdAt,
  }) = _HistoryInventory;

  factory HistoryInventory.fromJson(Map<String, dynamic> json) =>
      _$HistoryInventoryFromJson(json);
}
