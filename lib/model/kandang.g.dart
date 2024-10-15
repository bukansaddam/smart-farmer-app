// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KandangResponseImpl _$$KandangResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KandangResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: KandangResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KandangResponseImplToJson(
        _$KandangResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$KandangResultImpl _$$KandangResultImplFromJson(Map<String, dynamic> json) =>
    _$KandangResultImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Kandang.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KandangResultImplToJson(_$KandangResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_$KandangImpl _$$KandangImplFromJson(Map<String, dynamic> json) =>
    _$KandangImpl(
      id: json['id'] as String,
      nama: json['nama'] as String,
      lokasi: json['lokasi'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      jumlahAyam: (json['jumlahAyam'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => KandangImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KandangImplToJson(_$KandangImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'lokasi': instance.lokasi,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'jumlahAyam': instance.jumlahAyam,
      'images': instance.images,
    };

_$KandangImageImpl _$$KandangImageImplFromJson(Map<String, dynamic> json) =>
    _$KandangImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$KandangImageImplToJson(_$KandangImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
