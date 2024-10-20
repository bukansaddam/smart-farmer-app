// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_laporan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailLaporanResponseImpl _$$DetailLaporanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailLaporanResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: DetailLaporan.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailLaporanResponseImplToJson(
        _$DetailLaporanResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DetailLaporanImpl _$$DetailLaporanImplFromJson(Map<String, dynamic> json) =>
    _$DetailLaporanImpl(
      id: json['id'] as String,
      jenis: json['jenis'] as String,
      status: json['status'] as String,
      namaKandang: json['namaKandang'] as String,
      lokasiKandang: json['lokasiKandang'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      tanggal: DateTime.parse(json['tanggal'] as String),
      namaPelapor: json['namaPelapor'] as String,
      ciriCiri: json['ciriCiri'] as String?,
      jumlah: (json['jumlah'] as num?)?.toInt(),
      totalAyam: (json['totalAyam'] as num?)?.toInt(),
      totalTelur: (json['totalTelur'] as num?)?.toInt(),
      totalBerat: (json['totalBerat'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => LaporanImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailLaporanImplToJson(_$DetailLaporanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jenis': instance.jenis,
      'status': instance.status,
      'namaKandang': instance.namaKandang,
      'lokasiKandang': instance.lokasiKandang,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'tanggal': instance.tanggal.toIso8601String(),
      'namaPelapor': instance.namaPelapor,
      'ciriCiri': instance.ciriCiri,
      'jumlah': instance.jumlah,
      'totalAyam': instance.totalAyam,
      'totalTelur': instance.totalTelur,
      'totalBerat': instance.totalBerat,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'images': instance.images,
    };

_$LaporanImageImpl _$$LaporanImageImplFromJson(Map<String, dynamic> json) =>
    _$LaporanImageImpl(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$LaporanImageImplToJson(_$LaporanImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
