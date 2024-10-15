// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_kandang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailKandangResponseImpl _$$DetailKandangResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailKandangResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: DetailKandang.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailKandangResponseImplToJson(
        _$DetailKandangResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$DetailKandangImpl _$$DetailKandangImplFromJson(Map<String, dynamic> json) =>
    _$DetailKandangImpl(
      id: json['id'] as String,
      nama: json['nama'] as String,
      lokasi: json['lokasi'] as String,
      longitude: (json['longitude'] as num).toInt(),
      latitude: (json['latitude'] as num).toInt(),
      jumlahAyam: (json['jumlahAyam'] as num).toInt(),
      idPemilik: json['idPemilik'] as String,
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      kandangImages: (json['kandangImages'] as List<dynamic>)
          .map((e) => KandangImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailKandangImplToJson(_$DetailKandangImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'lokasi': instance.lokasi,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'jumlahAyam': instance.jumlahAyam,
      'idPemilik': instance.idPemilik,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'kandangImages': instance.kandangImages,
    };

_$KandangImageImpl _$$KandangImageImplFromJson(Map<String, dynamic> json) =>
    _$KandangImageImpl(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$KandangImageImplToJson(_$KandangImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
