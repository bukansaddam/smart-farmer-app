import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_laporan.freezed.dart';
part 'detail_laporan.g.dart';

@freezed
class DetailLaporanResponse with _$DetailLaporanResponse {
  const factory DetailLaporanResponse({
    required bool success,
    required String message,
    required DetailLaporan data,
  }) = _DetailLaporanResponse;

  factory DetailLaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailLaporanResponseFromJson(json);
}

@freezed
class DetailLaporan with _$DetailLaporan {
  const factory DetailLaporan({
    required String id,
    required String jenis,
    required String status,
    required String namaKandang,
    required String lokasiKandang,
    required double longitude,
    required double latitude,
    required DateTime tanggal,
    required String namaPelapor,
    String? ciriCiri,
    int? jumlah,
    int? totalAyam,
    int? totalTelur,
    double? totalBerat,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<LaporanImage>? images,
  }) = _DetailLaporan;

  factory DetailLaporan.fromJson(Map<String, dynamic> json) =>
      _$DetailLaporanFromJson(json);
}

@freezed
class LaporanImage with _$LaporanImage {
  const factory LaporanImage({
    required String id,
    required String url,
  }) = _LaporanImage;

  factory LaporanImage.fromJson(Map<String, dynamic> json) =>
      _$LaporanImageFromJson(json);
}
