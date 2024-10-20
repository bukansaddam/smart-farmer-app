// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailLaporanResponse _$DetailLaporanResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailLaporanResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailLaporanResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DetailLaporan get data => throw _privateConstructorUsedError;

  /// Serializes this DetailLaporanResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailLaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailLaporanResponseCopyWith<DetailLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLaporanResponseCopyWith<$Res> {
  factory $DetailLaporanResponseCopyWith(DetailLaporanResponse value,
          $Res Function(DetailLaporanResponse) then) =
      _$DetailLaporanResponseCopyWithImpl<$Res, DetailLaporanResponse>;
  @useResult
  $Res call({bool success, String message, DetailLaporan data});

  $DetailLaporanCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailLaporanResponseCopyWithImpl<$Res,
        $Val extends DetailLaporanResponse>
    implements $DetailLaporanResponseCopyWith<$Res> {
  _$DetailLaporanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailLaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailLaporan,
    ) as $Val);
  }

  /// Create a copy of DetailLaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailLaporanCopyWith<$Res> get data {
    return $DetailLaporanCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailLaporanResponseImplCopyWith<$Res>
    implements $DetailLaporanResponseCopyWith<$Res> {
  factory _$$DetailLaporanResponseImplCopyWith(
          _$DetailLaporanResponseImpl value,
          $Res Function(_$DetailLaporanResponseImpl) then) =
      __$$DetailLaporanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, DetailLaporan data});

  @override
  $DetailLaporanCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailLaporanResponseImplCopyWithImpl<$Res>
    extends _$DetailLaporanResponseCopyWithImpl<$Res,
        _$DetailLaporanResponseImpl>
    implements _$$DetailLaporanResponseImplCopyWith<$Res> {
  __$$DetailLaporanResponseImplCopyWithImpl(_$DetailLaporanResponseImpl _value,
      $Res Function(_$DetailLaporanResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailLaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$DetailLaporanResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailLaporan,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailLaporanResponseImpl implements _DetailLaporanResponse {
  const _$DetailLaporanResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$DetailLaporanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailLaporanResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final DetailLaporan data;

  @override
  String toString() {
    return 'DetailLaporanResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLaporanResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of DetailLaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLaporanResponseImplCopyWith<_$DetailLaporanResponseImpl>
      get copyWith => __$$DetailLaporanResponseImplCopyWithImpl<
          _$DetailLaporanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailLaporanResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailLaporanResponse implements DetailLaporanResponse {
  const factory _DetailLaporanResponse(
      {required final bool success,
      required final String message,
      required final DetailLaporan data}) = _$DetailLaporanResponseImpl;

  factory _DetailLaporanResponse.fromJson(Map<String, dynamic> json) =
      _$DetailLaporanResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  DetailLaporan get data;

  /// Create a copy of DetailLaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailLaporanResponseImplCopyWith<_$DetailLaporanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailLaporan _$DetailLaporanFromJson(Map<String, dynamic> json) {
  return _DetailLaporan.fromJson(json);
}

/// @nodoc
mixin _$DetailLaporan {
  String get id => throw _privateConstructorUsedError;
  String get jenis => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get namaKandang => throw _privateConstructorUsedError;
  String get lokasiKandang => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  DateTime get tanggal => throw _privateConstructorUsedError;
  String get namaPelapor => throw _privateConstructorUsedError;
  String? get ciriCiri => throw _privateConstructorUsedError;
  int? get jumlah => throw _privateConstructorUsedError;
  int? get totalAyam => throw _privateConstructorUsedError;
  int? get totalTelur => throw _privateConstructorUsedError;
  double? get totalBerat => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<LaporanImage>? get images => throw _privateConstructorUsedError;

  /// Serializes this DetailLaporan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailLaporan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailLaporanCopyWith<DetailLaporan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLaporanCopyWith<$Res> {
  factory $DetailLaporanCopyWith(
          DetailLaporan value, $Res Function(DetailLaporan) then) =
      _$DetailLaporanCopyWithImpl<$Res, DetailLaporan>;
  @useResult
  $Res call(
      {String id,
      String jenis,
      String status,
      String namaKandang,
      String lokasiKandang,
      double longitude,
      double latitude,
      DateTime tanggal,
      String namaPelapor,
      String? ciriCiri,
      int? jumlah,
      int? totalAyam,
      int? totalTelur,
      double? totalBerat,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<LaporanImage>? images});
}

/// @nodoc
class _$DetailLaporanCopyWithImpl<$Res, $Val extends DetailLaporan>
    implements $DetailLaporanCopyWith<$Res> {
  _$DetailLaporanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailLaporan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenis = null,
    Object? status = null,
    Object? namaKandang = null,
    Object? lokasiKandang = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? tanggal = null,
    Object? namaPelapor = null,
    Object? ciriCiri = freezed,
    Object? jumlah = freezed,
    Object? totalAyam = freezed,
    Object? totalTelur = freezed,
    Object? totalBerat = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      namaKandang: null == namaKandang
          ? _value.namaKandang
          : namaKandang // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiKandang: null == lokasiKandang
          ? _value.lokasiKandang
          : lokasiKandang // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      namaPelapor: null == namaPelapor
          ? _value.namaPelapor
          : namaPelapor // ignore: cast_nullable_to_non_nullable
              as String,
      ciriCiri: freezed == ciriCiri
          ? _value.ciriCiri
          : ciriCiri // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah: freezed == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAyam: freezed == totalAyam
          ? _value.totalAyam
          : totalAyam // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTelur: freezed == totalTelur
          ? _value.totalTelur
          : totalTelur // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBerat: freezed == totalBerat
          ? _value.totalBerat
          : totalBerat // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<LaporanImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailLaporanImplCopyWith<$Res>
    implements $DetailLaporanCopyWith<$Res> {
  factory _$$DetailLaporanImplCopyWith(
          _$DetailLaporanImpl value, $Res Function(_$DetailLaporanImpl) then) =
      __$$DetailLaporanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String jenis,
      String status,
      String namaKandang,
      String lokasiKandang,
      double longitude,
      double latitude,
      DateTime tanggal,
      String namaPelapor,
      String? ciriCiri,
      int? jumlah,
      int? totalAyam,
      int? totalTelur,
      double? totalBerat,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<LaporanImage>? images});
}

/// @nodoc
class __$$DetailLaporanImplCopyWithImpl<$Res>
    extends _$DetailLaporanCopyWithImpl<$Res, _$DetailLaporanImpl>
    implements _$$DetailLaporanImplCopyWith<$Res> {
  __$$DetailLaporanImplCopyWithImpl(
      _$DetailLaporanImpl _value, $Res Function(_$DetailLaporanImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailLaporan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenis = null,
    Object? status = null,
    Object? namaKandang = null,
    Object? lokasiKandang = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? tanggal = null,
    Object? namaPelapor = null,
    Object? ciriCiri = freezed,
    Object? jumlah = freezed,
    Object? totalAyam = freezed,
    Object? totalTelur = freezed,
    Object? totalBerat = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_$DetailLaporanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      namaKandang: null == namaKandang
          ? _value.namaKandang
          : namaKandang // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiKandang: null == lokasiKandang
          ? _value.lokasiKandang
          : lokasiKandang // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      namaPelapor: null == namaPelapor
          ? _value.namaPelapor
          : namaPelapor // ignore: cast_nullable_to_non_nullable
              as String,
      ciriCiri: freezed == ciriCiri
          ? _value.ciriCiri
          : ciriCiri // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah: freezed == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAyam: freezed == totalAyam
          ? _value.totalAyam
          : totalAyam // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTelur: freezed == totalTelur
          ? _value.totalTelur
          : totalTelur // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBerat: freezed == totalBerat
          ? _value.totalBerat
          : totalBerat // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<LaporanImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailLaporanImpl implements _DetailLaporan {
  const _$DetailLaporanImpl(
      {required this.id,
      required this.jenis,
      required this.status,
      required this.namaKandang,
      required this.lokasiKandang,
      required this.longitude,
      required this.latitude,
      required this.tanggal,
      required this.namaPelapor,
      this.ciriCiri,
      this.jumlah,
      this.totalAyam,
      this.totalTelur,
      this.totalBerat,
      this.createdAt,
      this.updatedAt,
      final List<LaporanImage>? images})
      : _images = images;

  factory _$DetailLaporanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailLaporanImplFromJson(json);

  @override
  final String id;
  @override
  final String jenis;
  @override
  final String status;
  @override
  final String namaKandang;
  @override
  final String lokasiKandang;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final DateTime tanggal;
  @override
  final String namaPelapor;
  @override
  final String? ciriCiri;
  @override
  final int? jumlah;
  @override
  final int? totalAyam;
  @override
  final int? totalTelur;
  @override
  final double? totalBerat;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<LaporanImage>? _images;
  @override
  List<LaporanImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailLaporan(id: $id, jenis: $jenis, status: $status, namaKandang: $namaKandang, lokasiKandang: $lokasiKandang, longitude: $longitude, latitude: $latitude, tanggal: $tanggal, namaPelapor: $namaPelapor, ciriCiri: $ciriCiri, jumlah: $jumlah, totalAyam: $totalAyam, totalTelur: $totalTelur, totalBerat: $totalBerat, createdAt: $createdAt, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLaporanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.namaKandang, namaKandang) ||
                other.namaKandang == namaKandang) &&
            (identical(other.lokasiKandang, lokasiKandang) ||
                other.lokasiKandang == lokasiKandang) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.namaPelapor, namaPelapor) ||
                other.namaPelapor == namaPelapor) &&
            (identical(other.ciriCiri, ciriCiri) ||
                other.ciriCiri == ciriCiri) &&
            (identical(other.jumlah, jumlah) || other.jumlah == jumlah) &&
            (identical(other.totalAyam, totalAyam) ||
                other.totalAyam == totalAyam) &&
            (identical(other.totalTelur, totalTelur) ||
                other.totalTelur == totalTelur) &&
            (identical(other.totalBerat, totalBerat) ||
                other.totalBerat == totalBerat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      jenis,
      status,
      namaKandang,
      lokasiKandang,
      longitude,
      latitude,
      tanggal,
      namaPelapor,
      ciriCiri,
      jumlah,
      totalAyam,
      totalTelur,
      totalBerat,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of DetailLaporan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLaporanImplCopyWith<_$DetailLaporanImpl> get copyWith =>
      __$$DetailLaporanImplCopyWithImpl<_$DetailLaporanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailLaporanImplToJson(
      this,
    );
  }
}

abstract class _DetailLaporan implements DetailLaporan {
  const factory _DetailLaporan(
      {required final String id,
      required final String jenis,
      required final String status,
      required final String namaKandang,
      required final String lokasiKandang,
      required final double longitude,
      required final double latitude,
      required final DateTime tanggal,
      required final String namaPelapor,
      final String? ciriCiri,
      final int? jumlah,
      final int? totalAyam,
      final int? totalTelur,
      final double? totalBerat,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final List<LaporanImage>? images}) = _$DetailLaporanImpl;

  factory _DetailLaporan.fromJson(Map<String, dynamic> json) =
      _$DetailLaporanImpl.fromJson;

  @override
  String get id;
  @override
  String get jenis;
  @override
  String get status;
  @override
  String get namaKandang;
  @override
  String get lokasiKandang;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  DateTime get tanggal;
  @override
  String get namaPelapor;
  @override
  String? get ciriCiri;
  @override
  int? get jumlah;
  @override
  int? get totalAyam;
  @override
  int? get totalTelur;
  @override
  double? get totalBerat;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<LaporanImage>? get images;

  /// Create a copy of DetailLaporan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailLaporanImplCopyWith<_$DetailLaporanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LaporanImage _$LaporanImageFromJson(Map<String, dynamic> json) {
  return _LaporanImage.fromJson(json);
}

/// @nodoc
mixin _$LaporanImage {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this LaporanImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaporanImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaporanImageCopyWith<LaporanImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanImageCopyWith<$Res> {
  factory $LaporanImageCopyWith(
          LaporanImage value, $Res Function(LaporanImage) then) =
      _$LaporanImageCopyWithImpl<$Res, LaporanImage>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$LaporanImageCopyWithImpl<$Res, $Val extends LaporanImage>
    implements $LaporanImageCopyWith<$Res> {
  _$LaporanImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaporanImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanImageImplCopyWith<$Res>
    implements $LaporanImageCopyWith<$Res> {
  factory _$$LaporanImageImplCopyWith(
          _$LaporanImageImpl value, $Res Function(_$LaporanImageImpl) then) =
      __$$LaporanImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$LaporanImageImplCopyWithImpl<$Res>
    extends _$LaporanImageCopyWithImpl<$Res, _$LaporanImageImpl>
    implements _$$LaporanImageImplCopyWith<$Res> {
  __$$LaporanImageImplCopyWithImpl(
      _$LaporanImageImpl _value, $Res Function(_$LaporanImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaporanImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$LaporanImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanImageImpl implements _LaporanImage {
  const _$LaporanImageImpl({required this.id, required this.url});

  factory _$LaporanImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanImageImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'LaporanImage(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of LaporanImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanImageImplCopyWith<_$LaporanImageImpl> get copyWith =>
      __$$LaporanImageImplCopyWithImpl<_$LaporanImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanImageImplToJson(
      this,
    );
  }
}

abstract class _LaporanImage implements LaporanImage {
  const factory _LaporanImage(
      {required final String id,
      required final String url}) = _$LaporanImageImpl;

  factory _LaporanImage.fromJson(Map<String, dynamic> json) =
      _$LaporanImageImpl.fromJson;

  @override
  String get id;
  @override
  String get url;

  /// Create a copy of LaporanImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaporanImageImplCopyWith<_$LaporanImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
