// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailInventoryResponseImpl _$$DetailInventoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInventoryResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: DetailInventory.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailInventoryResponseImplToJson(
        _$DetailInventoryResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DetailInventoryImpl _$$DetailInventoryImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailInventoryImpl(
      id: json['id'] as String,
      idKandang: json['idKandang'] as String,
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

Map<String, dynamic> _$$DetailInventoryImplToJson(
        _$DetailInventoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idKandang': instance.idKandang,
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
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$InventoryImageImplToJson(
        _$InventoryImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
