import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'kandang_petugas.freezed.dart';
part 'kandang_petugas.g.dart';

@freezed
class KandangPetugasResponse with _$KandangPetugasResponse {
  const factory KandangPetugasResponse({
    required bool success,
    required String message,
    required KandangPetugasResult result,
  }) = _KandangPetugasResponse;

  factory KandangPetugasResponse.fromJson(Map<String, dynamic> json) =>
      _$KandangPetugasResponseFromJson(json);
}

@freezed
class KandangPetugasResult with _$KandangPetugasResult {
  const factory KandangPetugasResult({
    required String id,
    required String userId,
    required String nama,
    required KandangPetugas kandang,
  }) = _KandangPetugasResult;

  factory KandangPetugasResult.fromJson(Map<String, dynamic> json) => _$KandangPetugasResultFromJson(json);
}

@freezed
class KandangPetugas with _$KandangPetugas {
  const factory KandangPetugas({
    required String id,
    required String nama,
    required String lokasi,
    required int totalAyam,
    required int latitude,
    required int longitude,
    required List<Image> images,
  }) = _KandangPetugas;

  factory KandangPetugas.fromJson(Map<String, dynamic> json) =>
      _$KandangPetugasFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required String id,
    required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
