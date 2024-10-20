import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class InventoryResponse with _$InventoryResponse {
  const factory InventoryResponse({
    required bool success,
    required String message,
    required InventoryResult result,
  }) = _InventoryResponse;

  factory InventoryResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryResponseFromJson(json);
}

@freezed
class InventoryResult with _$InventoryResult {
  const factory InventoryResult({
    required int totalCount,
    required int totalPages,
    required List<Inventory> data,
  }) = _InventoryResult;

  factory InventoryResult.fromJson(Map<String, dynamic> json) =>
      _$InventoryResultFromJson(json);
}

@freezed
class Inventory with _$Inventory {
  const factory Inventory({
    required String id,
    @JsonKey(name: 'id_kandang') required String idKandang,
    required String name,
    required int stock,
    required String jenis,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<InventoryImage> images,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);
}

@freezed
class InventoryImage with _$InventoryImage {
  const factory InventoryImage({
    required String url,
  }) = _InventoryImage;

  factory InventoryImage.fromJson(Map<String, dynamic> json) =>
      _$InventoryImageFromJson(json);
}
