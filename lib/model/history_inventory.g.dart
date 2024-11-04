// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryInventoryResponseImpl _$$HistoryInventoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryInventoryResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: HistoryInventoryResult.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HistoryInventoryResponseImplToJson(
        _$HistoryInventoryResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$HistoryInventoryResultImpl _$$HistoryInventoryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryInventoryResultImpl(
      totalCount: (json['totalCount'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => HistoryInventory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryInventoryResultImplToJson(
        _$HistoryInventoryResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_$HistoryInventoryImpl _$$HistoryInventoryImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryInventoryImpl(
      id: json['id'] as String,
      namaItem: json['namaItem'] as String,
      keterangan: json['keterangan'] as String,
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$HistoryInventoryImplToJson(
        _$HistoryInventoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namaItem': instance.namaItem,
      'keterangan': instance.keterangan,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
    };
