import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_kandang.freezed.dart';
part 'detail_kandang.g.dart';

@freezed
class DetailKandangResponse with _$DetailKandangResponse {
  const factory DetailKandangResponse({
    required bool success,
    required String message,
    required DetailKandang result,
  }) = _DetailKandangResponse;

  factory DetailKandangResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailKandangResponseFromJson(json);
}

@freezed
class DetailKandang with _$DetailKandang {
  const factory DetailKandang({
    required String id,
    required String nama,
    required String lokasi,
    required int longitude,
    required int latitude,
    required int jumlahAyam,
    required String idPemilik,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<KandangImage> kandangImages,
  }) = _DetailKandang;

  factory DetailKandang.fromJson(Map<String, dynamic> json) =>
      _$DetailKandangFromJson(json);
}

@freezed
class KandangImage with _$KandangImage {
  const factory KandangImage({
    required String id,
    required String url,
  }) = _KandangImage;

  factory KandangImage.fromJson(Map<String, dynamic> json) =>
      _$KandangImageFromJson(json);
}
