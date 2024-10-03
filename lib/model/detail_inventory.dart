import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_inventory.freezed.dart';
part 'detail_inventory.g.dart';

@freezed
class DetailInventoryResponse with _$DetailInventoryResponse {
  const factory DetailInventoryResponse({
    required bool success,
    required String message,
    required DetailInventory data,
  }) = _DetailInventoryResponse;

  factory DetailInventoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailInventoryResponseFromJson(json);
}

@freezed
class DetailInventory with _$DetailInventory {
  const factory DetailInventory({
    required String id,
    required String idKandang,
    required String name,
    required int stock,
    required String jenis,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<InventoryImage> images,
  }) = _DetailInventory;

  factory DetailInventory.fromJson(Map<String, dynamic> json) => _$DetailInventoryFromJson(json);
}

@freezed
class InventoryImage with _$InventoryImage {
  const factory InventoryImage({
    required String id,
    required String url,
  }) = _InventoryImage;

  factory InventoryImage.fromJson(Map<String, dynamic> json) => _$InventoryImageFromJson(json);
}
