// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_kandang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailKandangResponse _$DetailKandangResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailKandangResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailKandangResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DetailKandang get result => throw _privateConstructorUsedError;

  /// Serializes this DetailKandangResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailKandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailKandangResponseCopyWith<DetailKandangResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailKandangResponseCopyWith<$Res> {
  factory $DetailKandangResponseCopyWith(DetailKandangResponse value,
          $Res Function(DetailKandangResponse) then) =
      _$DetailKandangResponseCopyWithImpl<$Res, DetailKandangResponse>;
  @useResult
  $Res call({bool success, String message, DetailKandang result});

  $DetailKandangCopyWith<$Res> get result;
}

/// @nodoc
class _$DetailKandangResponseCopyWithImpl<$Res,
        $Val extends DetailKandangResponse>
    implements $DetailKandangResponseCopyWith<$Res> {
  _$DetailKandangResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailKandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
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
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as DetailKandang,
    ) as $Val);
  }

  /// Create a copy of DetailKandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailKandangCopyWith<$Res> get result {
    return $DetailKandangCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailKandangResponseImplCopyWith<$Res>
    implements $DetailKandangResponseCopyWith<$Res> {
  factory _$$DetailKandangResponseImplCopyWith(
          _$DetailKandangResponseImpl value,
          $Res Function(_$DetailKandangResponseImpl) then) =
      __$$DetailKandangResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, DetailKandang result});

  @override
  $DetailKandangCopyWith<$Res> get result;
}

/// @nodoc
class __$$DetailKandangResponseImplCopyWithImpl<$Res>
    extends _$DetailKandangResponseCopyWithImpl<$Res,
        _$DetailKandangResponseImpl>
    implements _$$DetailKandangResponseImplCopyWith<$Res> {
  __$$DetailKandangResponseImplCopyWithImpl(_$DetailKandangResponseImpl _value,
      $Res Function(_$DetailKandangResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailKandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$DetailKandangResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as DetailKandang,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailKandangResponseImpl implements _DetailKandangResponse {
  const _$DetailKandangResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$DetailKandangResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailKandangResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final DetailKandang result;

  @override
  String toString() {
    return 'DetailKandangResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailKandangResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of DetailKandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailKandangResponseImplCopyWith<_$DetailKandangResponseImpl>
      get copyWith => __$$DetailKandangResponseImplCopyWithImpl<
          _$DetailKandangResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailKandangResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailKandangResponse implements DetailKandangResponse {
  const factory _DetailKandangResponse(
      {required final bool success,
      required final String message,
      required final DetailKandang result}) = _$DetailKandangResponseImpl;

  factory _DetailKandangResponse.fromJson(Map<String, dynamic> json) =
      _$DetailKandangResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  DetailKandang get result;

  /// Create a copy of DetailKandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailKandangResponseImplCopyWith<_$DetailKandangResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailKandang _$DetailKandangFromJson(Map<String, dynamic> json) {
  return _DetailKandang.fromJson(json);
}

/// @nodoc
mixin _$DetailKandang {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get lokasi => throw _privateConstructorUsedError;
  int get longitude => throw _privateConstructorUsedError;
  int get latitude => throw _privateConstructorUsedError;
  int get jumlahAyam => throw _privateConstructorUsedError;
  String get idPemilik => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<KandangImage> get kandangImages => throw _privateConstructorUsedError;

  /// Serializes this DetailKandang to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailKandang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailKandangCopyWith<DetailKandang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailKandangCopyWith<$Res> {
  factory $DetailKandangCopyWith(
          DetailKandang value, $Res Function(DetailKandang) then) =
      _$DetailKandangCopyWithImpl<$Res, DetailKandang>;
  @useResult
  $Res call(
      {String id,
      String nama,
      String lokasi,
      int longitude,
      int latitude,
      int jumlahAyam,
      String idPemilik,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      List<KandangImage> kandangImages});
}

/// @nodoc
class _$DetailKandangCopyWithImpl<$Res, $Val extends DetailKandang>
    implements $DetailKandangCopyWith<$Res> {
  _$DetailKandangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailKandang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? lokasi = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? jumlahAyam = null,
    Object? idPemilik = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? kandangImages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahAyam: null == jumlahAyam
          ? _value.jumlahAyam
          : jumlahAyam // ignore: cast_nullable_to_non_nullable
              as int,
      idPemilik: null == idPemilik
          ? _value.idPemilik
          : idPemilik // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kandangImages: null == kandangImages
          ? _value.kandangImages
          : kandangImages // ignore: cast_nullable_to_non_nullable
              as List<KandangImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailKandangImplCopyWith<$Res>
    implements $DetailKandangCopyWith<$Res> {
  factory _$$DetailKandangImplCopyWith(
          _$DetailKandangImpl value, $Res Function(_$DetailKandangImpl) then) =
      __$$DetailKandangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nama,
      String lokasi,
      int longitude,
      int latitude,
      int jumlahAyam,
      String idPemilik,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      List<KandangImage> kandangImages});
}

/// @nodoc
class __$$DetailKandangImplCopyWithImpl<$Res>
    extends _$DetailKandangCopyWithImpl<$Res, _$DetailKandangImpl>
    implements _$$DetailKandangImplCopyWith<$Res> {
  __$$DetailKandangImplCopyWithImpl(
      _$DetailKandangImpl _value, $Res Function(_$DetailKandangImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailKandang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? lokasi = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? jumlahAyam = null,
    Object? idPemilik = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? kandangImages = null,
  }) {
    return _then(_$DetailKandangImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahAyam: null == jumlahAyam
          ? _value.jumlahAyam
          : jumlahAyam // ignore: cast_nullable_to_non_nullable
              as int,
      idPemilik: null == idPemilik
          ? _value.idPemilik
          : idPemilik // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kandangImages: null == kandangImages
          ? _value._kandangImages
          : kandangImages // ignore: cast_nullable_to_non_nullable
              as List<KandangImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailKandangImpl implements _DetailKandang {
  const _$DetailKandangImpl(
      {required this.id,
      required this.nama,
      required this.lokasi,
      required this.longitude,
      required this.latitude,
      required this.jumlahAyam,
      required this.idPemilik,
      required this.isDeleted,
      required this.createdAt,
      required this.updatedAt,
      required final List<KandangImage> kandangImages})
      : _kandangImages = kandangImages;

  factory _$DetailKandangImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailKandangImplFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String lokasi;
  @override
  final int longitude;
  @override
  final int latitude;
  @override
  final int jumlahAyam;
  @override
  final String idPemilik;
  @override
  final bool isDeleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<KandangImage> _kandangImages;
  @override
  List<KandangImage> get kandangImages {
    if (_kandangImages is EqualUnmodifiableListView) return _kandangImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kandangImages);
  }

  @override
  String toString() {
    return 'DetailKandang(id: $id, nama: $nama, lokasi: $lokasi, longitude: $longitude, latitude: $latitude, jumlahAyam: $jumlahAyam, idPemilik: $idPemilik, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, kandangImages: $kandangImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailKandangImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.jumlahAyam, jumlahAyam) ||
                other.jumlahAyam == jumlahAyam) &&
            (identical(other.idPemilik, idPemilik) ||
                other.idPemilik == idPemilik) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._kandangImages, _kandangImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nama,
      lokasi,
      longitude,
      latitude,
      jumlahAyam,
      idPemilik,
      isDeleted,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_kandangImages));

  /// Create a copy of DetailKandang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailKandangImplCopyWith<_$DetailKandangImpl> get copyWith =>
      __$$DetailKandangImplCopyWithImpl<_$DetailKandangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailKandangImplToJson(
      this,
    );
  }
}

abstract class _DetailKandang implements DetailKandang {
  const factory _DetailKandang(
      {required final String id,
      required final String nama,
      required final String lokasi,
      required final int longitude,
      required final int latitude,
      required final int jumlahAyam,
      required final String idPemilik,
      required final bool isDeleted,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<KandangImage> kandangImages}) = _$DetailKandangImpl;

  factory _DetailKandang.fromJson(Map<String, dynamic> json) =
      _$DetailKandangImpl.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get lokasi;
  @override
  int get longitude;
  @override
  int get latitude;
  @override
  int get jumlahAyam;
  @override
  String get idPemilik;
  @override
  bool get isDeleted;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<KandangImage> get kandangImages;

  /// Create a copy of DetailKandang
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailKandangImplCopyWith<_$DetailKandangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KandangImage _$KandangImageFromJson(Map<String, dynamic> json) {
  return _KandangImage.fromJson(json);
}

/// @nodoc
mixin _$KandangImage {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this KandangImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KandangImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangImageCopyWith<KandangImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangImageCopyWith<$Res> {
  factory $KandangImageCopyWith(
          KandangImage value, $Res Function(KandangImage) then) =
      _$KandangImageCopyWithImpl<$Res, KandangImage>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$KandangImageCopyWithImpl<$Res, $Val extends KandangImage>
    implements $KandangImageCopyWith<$Res> {
  _$KandangImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KandangImage
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
abstract class _$$KandangImageImplCopyWith<$Res>
    implements $KandangImageCopyWith<$Res> {
  factory _$$KandangImageImplCopyWith(
          _$KandangImageImpl value, $Res Function(_$KandangImageImpl) then) =
      __$$KandangImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$KandangImageImplCopyWithImpl<$Res>
    extends _$KandangImageCopyWithImpl<$Res, _$KandangImageImpl>
    implements _$$KandangImageImplCopyWith<$Res> {
  __$$KandangImageImplCopyWithImpl(
      _$KandangImageImpl _value, $Res Function(_$KandangImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of KandangImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$KandangImageImpl(
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
class _$KandangImageImpl implements _KandangImage {
  const _$KandangImageImpl({required this.id, required this.url});

  factory _$KandangImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangImageImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'KandangImage(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of KandangImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangImageImplCopyWith<_$KandangImageImpl> get copyWith =>
      __$$KandangImageImplCopyWithImpl<_$KandangImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangImageImplToJson(
      this,
    );
  }
}

abstract class _KandangImage implements KandangImage {
  const factory _KandangImage(
      {required final String id,
      required final String url}) = _$KandangImageImpl;

  factory _KandangImage.fromJson(Map<String, dynamic> json) =
      _$KandangImageImpl.fromJson;

  @override
  String get id;
  @override
  String get url;

  /// Create a copy of KandangImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangImageImplCopyWith<_$KandangImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
