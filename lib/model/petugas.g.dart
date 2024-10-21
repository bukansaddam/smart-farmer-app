// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petugas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetugasResponseImpl _$$PetugasResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PetugasResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: PetugasResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PetugasResponseImplToJson(
        _$PetugasResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$PetugasResultImpl _$$PetugasResultImplFromJson(Map<String, dynamic> json) =>
    _$PetugasResultImpl(
      totalCount: (json['totalCount'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Petugas.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PetugasResultImplToJson(_$PetugasResultImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_$PetugasImpl _$$PetugasImplFromJson(Map<String, dynamic> json) =>
    _$PetugasImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      nama: json['nama'] as String,
      email: json['email'] as String,
      noTelp: json['noTelp'] as String,
      lokasiKandang: json['lokasiKandang'] as String,
    );

Map<String, dynamic> _$$PetugasImplToJson(_$PetugasImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'nama': instance.nama,
      'email': instance.email,
      'noTelp': instance.noTelp,
      'lokasiKandang': instance.lokasiKandang,
    };
