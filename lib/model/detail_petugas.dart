import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_petugas.freezed.dart';
part 'detail_petugas.g.dart';

@freezed
class DetailPetugasResponse with _$DetailPetugasResponse {
  const factory DetailPetugasResponse({
    required bool success,
    required String message,
    required DetailPetugas result,
  }) = _DetailPetugasResponse;

  factory DetailPetugasResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailPetugasResponseFromJson(json);
}

@freezed
class DetailPetugas with _$DetailPetugas {
  const factory DetailPetugas({
    required String id,
    required String userId,
    required String nama,
    required String email,
    required String noTelp,
    required String lokasiKandang,
  }) = _DetailPetugas;

  factory DetailPetugas.fromJson(Map<String, dynamic> json) => _$DetailPetugasFromJson(json);
}
