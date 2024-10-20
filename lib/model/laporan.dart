import 'package:freezed_annotation/freezed_annotation.dart';

part 'laporan.freezed.dart';
part 'laporan.g.dart';

@freezed
class LaporanResponse with _$LaporanResponse {
  const factory LaporanResponse({
    required bool success,
    required String message,
    required LaporanResult result,
  }) = _LaporanResponse;

  factory LaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$LaporanResponseFromJson(json);
}

@freezed
class LaporanResult with _$LaporanResult {
  const factory LaporanResult({
    required int totalCount,
    required int totalPages,
    required List<Laporan> data,
  }) = _LaporanResult;

  factory LaporanResult.fromJson(Map<String, dynamic> json) =>
      _$LaporanResultFromJson(json);
}

@freezed
class Laporan with _$Laporan {
  const factory Laporan({
    required String idLaporan,
    required String jenis,
    required String kandang,
    required DateTime tanggal,
  }) = _Laporan;

  factory Laporan.fromJson(Map<String, dynamic> json) =>
      _$LaporanFromJson(json);
}
