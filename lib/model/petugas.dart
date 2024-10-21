import 'package:freezed_annotation/freezed_annotation.dart';

part 'petugas.freezed.dart';
part 'petugas.g.dart';

@freezed
class PetugasResponse with _$PetugasResponse {
  const factory PetugasResponse({
    required bool success,
    required String message,
    required PetugasResult result,
  }) = _PetugasResponse;

  factory PetugasResponse.fromJson(Map<String, dynamic> json) =>
      _$PetugasResponseFromJson(json);
}

@freezed
class PetugasResult with _$PetugasResult {
  const factory PetugasResult({
    required int totalCount,
    required int totalPages,
    required List<Petugas> data,
  }) = _PetugasResult;

  factory PetugasResult.fromJson(Map<String, dynamic> json) => _$PetugasResultFromJson(json);
}

@freezed
class Petugas with _$Petugas {
  const factory Petugas({
    required String id,
    required String userId,
    required String nama,
    required String email,
    required String noTelp,
    required String lokasiKandang,
  }) = _Petugas;

  factory Petugas.fromJson(Map<String, dynamic> json) => _$PetugasFromJson(json);
}
