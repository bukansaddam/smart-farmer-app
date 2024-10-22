// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticResponseImpl _$$StatisticResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: StatisticResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticResponseImplToJson(
        _$StatisticResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$StatisticResultImpl _$$StatisticResultImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticResultImpl(
      totalCount: (json['totalCount'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      graph: (json['graph'] as List<dynamic>)
          .map((e) => Graph.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StatisticResultImplToJson(
        _$StatisticResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'graph': instance.graph,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String,
      jenis: json['jenis'] as String,
      kandang: json['kandang'] as String,
      deskripsi: json['deskripsi'] as String,
      total: (json['total'] as num).toInt(),
      tanggal: DateTime.parse(json['tanggal'] as String),
      user: json['user'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jenis': instance.jenis,
      'kandang': instance.kandang,
      'deskripsi': instance.deskripsi,
      'total': instance.total,
      'tanggal': instance.tanggal.toIso8601String(),
      'user': instance.user,
    };

_$GraphImpl _$$GraphImplFromJson(Map<String, dynamic> json) => _$GraphImpl(
      date: json['date'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$GraphImplToJson(_$GraphImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'count': instance.count,
    };
