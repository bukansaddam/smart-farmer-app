// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laporan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaporanResponseImpl _$$LaporanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LaporanResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: LaporanResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LaporanResponseImplToJson(
        _$LaporanResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$LaporanResultImpl _$$LaporanResultImplFromJson(Map<String, dynamic> json) =>
    _$LaporanResultImpl(
      totalCount: (json['totalCount'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Laporan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LaporanResultImplToJson(_$LaporanResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_$LaporanImpl _$$LaporanImplFromJson(Map<String, dynamic> json) =>
    _$LaporanImpl(
      idLaporan: json['idLaporan'] as String,
      jenis: json['jenis'] as String,
      kandang: json['kandang'] as String,
      tanggal: DateTime.parse(json['tanggal'] as String),
    );

Map<String, dynamic> _$$LaporanImplToJson(_$LaporanImpl instance) =>
    <String, dynamic>{
      'idLaporan': instance.idLaporan,
      'jenis': instance.jenis,
      'kandang': instance.kandang,
      'tanggal': instance.tanggal.toIso8601String(),
    };
