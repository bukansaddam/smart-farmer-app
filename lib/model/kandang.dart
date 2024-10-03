import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'kandang.freezed.dart';
part 'kandang.g.dart';

@freezed
class KandangResponse with _$KandangResponse {
  const factory KandangResponse({
    required bool success,
    required String message,
    required KandangResult result,
  }) = _KandangResponse;

  factory KandangResponse.fromJson(Map<String, dynamic> json) =>
      _$KandangResponseFromJson(json);
}

@freezed
class KandangResult with _$KandangResult {
  const factory KandangResult({
    required int totalCount,
    required int totalPages,
    required List<Kandang> data,
  }) = _KandangResult;

  factory KandangResult.fromJson(Map<String, dynamic> json) => _$KandangResultFromJson(json);
}

@freezed
class Kandang with _$Kandang {
  const factory Kandang({
    required String id,
    required String nama,
    required String lokasi,
    required int latitude,
    required int longitude,
    required int jumlahAyam,
  }) = _Kandang;

  factory Kandang.fromJson(Map<String, dynamic> json) => _$KandangFromJson(json);
}
