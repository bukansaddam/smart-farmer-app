// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryResponseImpl _$$InventoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: InventoryResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryResponseImplToJson(
        _$InventoryResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$InventoryResultImpl _$$InventoryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryResultImpl(
      totalCount: (json['totalCount'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Inventory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InventoryResultImplToJson(
        _$InventoryResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_$InventoryImpl _$$InventoryImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImpl(
      id: json['id'] as String,
      idKandang: json['id_kandang'] as String,
      name: json['name'] as String,
      stock: (json['stock'] as num).toInt(),
      jenis: json['jenis'] as String,
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      images: (json['images'] as List<dynamic>)
          .map((e) => InventoryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InventoryImplToJson(_$InventoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_kandang': instance.idKandang,
      'name': instance.name,
      'stock': instance.stock,
      'jenis': instance.jenis,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'images': instance.images,
    };

_$InventoryImageImpl _$$InventoryImageImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$InventoryImageImplToJson(
        _$InventoryImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
