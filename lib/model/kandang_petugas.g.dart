// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandang_petugas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KandangPetugasResponseImpl _$$KandangPetugasResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KandangPetugasResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result:
          KandangPetugasResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KandangPetugasResponseImplToJson(
        _$KandangPetugasResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$KandangPetugasResultImpl _$$KandangPetugasResultImplFromJson(
        Map<String, dynamic> json) =>
    _$KandangPetugasResultImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      nama: json['nama'] as String,
      kandang: KandangPetugas.fromJson(json['kandang'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KandangPetugasResultImplToJson(
        _$KandangPetugasResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'nama': instance.nama,
      'kandang': instance.kandang,
    };

_$KandangPetugasImpl _$$KandangPetugasImplFromJson(Map<String, dynamic> json) =>
    _$KandangPetugasImpl(
      id: json['id'] as String,
      nama: json['nama'] as String,
      lokasi: json['lokasi'] as String,
      totalAyam: (json['totalAyam'] as num).toInt(),
      latitude: (json['latitude'] as num).toInt(),
      longitude: (json['longitude'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KandangPetugasImplToJson(
        _$KandangPetugasImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'lokasi': instance.lokasi,
      'totalAyam': instance.totalAyam,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'images': instance.images,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
