// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_petugas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPetugasResponseImpl _$$DetailPetugasResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailPetugasResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      result: DetailPetugas.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailPetugasResponseImplToJson(
        _$DetailPetugasResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$DetailPetugasImpl _$$DetailPetugasImplFromJson(Map<String, dynamic> json) =>
    _$DetailPetugasImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      nama: json['nama'] as String,
      email: json['email'] as String,
      noTelp: json['noTelp'] as String,
      lokasiKandang: json['lokasiKandang'] as String,
    );

Map<String, dynamic> _$$DetailPetugasImplToJson(_$DetailPetugasImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'nama': instance.nama,
      'email': instance.email,
      'noTelp': instance.noTelp,
      'lokasiKandang': instance.lokasiKandang,
    };
