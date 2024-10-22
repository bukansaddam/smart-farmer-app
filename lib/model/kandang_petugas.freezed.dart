// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kandang_petugas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KandangPetugasResponse _$KandangPetugasResponseFromJson(
    Map<String, dynamic> json) {
  return _KandangPetugasResponse.fromJson(json);
}

/// @nodoc
mixin _$KandangPetugasResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  KandangPetugasResult get result => throw _privateConstructorUsedError;

  /// Serializes this KandangPetugasResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KandangPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangPetugasResponseCopyWith<KandangPetugasResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangPetugasResponseCopyWith<$Res> {
  factory $KandangPetugasResponseCopyWith(KandangPetugasResponse value,
          $Res Function(KandangPetugasResponse) then) =
      _$KandangPetugasResponseCopyWithImpl<$Res, KandangPetugasResponse>;
  @useResult
  $Res call({bool success, String message, KandangPetugasResult result});

  $KandangPetugasResultCopyWith<$Res> get result;
}

/// @nodoc
class _$KandangPetugasResponseCopyWithImpl<$Res,
        $Val extends KandangPetugasResponse>
    implements $KandangPetugasResponseCopyWith<$Res> {
  _$KandangPetugasResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KandangPetugasResponse
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
              as KandangPetugasResult,
    ) as $Val);
  }

  /// Create a copy of KandangPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KandangPetugasResultCopyWith<$Res> get result {
    return $KandangPetugasResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KandangPetugasResponseImplCopyWith<$Res>
    implements $KandangPetugasResponseCopyWith<$Res> {
  factory _$$KandangPetugasResponseImplCopyWith(
          _$KandangPetugasResponseImpl value,
          $Res Function(_$KandangPetugasResponseImpl) then) =
      __$$KandangPetugasResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, KandangPetugasResult result});

  @override
  $KandangPetugasResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$KandangPetugasResponseImplCopyWithImpl<$Res>
    extends _$KandangPetugasResponseCopyWithImpl<$Res,
        _$KandangPetugasResponseImpl>
    implements _$$KandangPetugasResponseImplCopyWith<$Res> {
  __$$KandangPetugasResponseImplCopyWithImpl(
      _$KandangPetugasResponseImpl _value,
      $Res Function(_$KandangPetugasResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of KandangPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$KandangPetugasResponseImpl(
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
              as KandangPetugasResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangPetugasResponseImpl implements _KandangPetugasResponse {
  const _$KandangPetugasResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$KandangPetugasResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangPetugasResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final KandangPetugasResult result;

  @override
  String toString() {
    return 'KandangPetugasResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangPetugasResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of KandangPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangPetugasResponseImplCopyWith<_$KandangPetugasResponseImpl>
      get copyWith => __$$KandangPetugasResponseImplCopyWithImpl<
          _$KandangPetugasResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangPetugasResponseImplToJson(
      this,
    );
  }
}

abstract class _KandangPetugasResponse implements KandangPetugasResponse {
  const factory _KandangPetugasResponse(
          {required final bool success,
          required final String message,
          required final KandangPetugasResult result}) =
      _$KandangPetugasResponseImpl;

  factory _KandangPetugasResponse.fromJson(Map<String, dynamic> json) =
      _$KandangPetugasResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  KandangPetugasResult get result;

  /// Create a copy of KandangPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangPetugasResponseImplCopyWith<_$KandangPetugasResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

KandangPetugasResult _$KandangPetugasResultFromJson(Map<String, dynamic> json) {
  return _KandangPetugasResult.fromJson(json);
}

/// @nodoc
mixin _$KandangPetugasResult {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  KandangPetugas get kandang => throw _privateConstructorUsedError;

  /// Serializes this KandangPetugasResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KandangPetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangPetugasResultCopyWith<KandangPetugasResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangPetugasResultCopyWith<$Res> {
  factory $KandangPetugasResultCopyWith(KandangPetugasResult value,
          $Res Function(KandangPetugasResult) then) =
      _$KandangPetugasResultCopyWithImpl<$Res, KandangPetugasResult>;
  @useResult
  $Res call({String id, String userId, String nama, KandangPetugas kandang});

  $KandangPetugasCopyWith<$Res> get kandang;
}

/// @nodoc
class _$KandangPetugasResultCopyWithImpl<$Res,
        $Val extends KandangPetugasResult>
    implements $KandangPetugasResultCopyWith<$Res> {
  _$KandangPetugasResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KandangPetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? nama = null,
    Object? kandang = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      kandang: null == kandang
          ? _value.kandang
          : kandang // ignore: cast_nullable_to_non_nullable
              as KandangPetugas,
    ) as $Val);
  }

  /// Create a copy of KandangPetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KandangPetugasCopyWith<$Res> get kandang {
    return $KandangPetugasCopyWith<$Res>(_value.kandang, (value) {
      return _then(_value.copyWith(kandang: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KandangPetugasResultImplCopyWith<$Res>
    implements $KandangPetugasResultCopyWith<$Res> {
  factory _$$KandangPetugasResultImplCopyWith(_$KandangPetugasResultImpl value,
          $Res Function(_$KandangPetugasResultImpl) then) =
      __$$KandangPetugasResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId, String nama, KandangPetugas kandang});

  @override
  $KandangPetugasCopyWith<$Res> get kandang;
}

/// @nodoc
class __$$KandangPetugasResultImplCopyWithImpl<$Res>
    extends _$KandangPetugasResultCopyWithImpl<$Res, _$KandangPetugasResultImpl>
    implements _$$KandangPetugasResultImplCopyWith<$Res> {
  __$$KandangPetugasResultImplCopyWithImpl(_$KandangPetugasResultImpl _value,
      $Res Function(_$KandangPetugasResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of KandangPetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? nama = null,
    Object? kandang = null,
  }) {
    return _then(_$KandangPetugasResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      kandang: null == kandang
          ? _value.kandang
          : kandang // ignore: cast_nullable_to_non_nullable
              as KandangPetugas,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangPetugasResultImpl implements _KandangPetugasResult {
  const _$KandangPetugasResultImpl(
      {required this.id,
      required this.userId,
      required this.nama,
      required this.kandang});

  factory _$KandangPetugasResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangPetugasResultImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String nama;
  @override
  final KandangPetugas kandang;

  @override
  String toString() {
    return 'KandangPetugasResult(id: $id, userId: $userId, nama: $nama, kandang: $kandang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangPetugasResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.kandang, kandang) || other.kandang == kandang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, nama, kandang);

  /// Create a copy of KandangPetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangPetugasResultImplCopyWith<_$KandangPetugasResultImpl>
      get copyWith =>
          __$$KandangPetugasResultImplCopyWithImpl<_$KandangPetugasResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangPetugasResultImplToJson(
      this,
    );
  }
}

abstract class _KandangPetugasResult implements KandangPetugasResult {
  const factory _KandangPetugasResult(
      {required final String id,
      required final String userId,
      required final String nama,
      required final KandangPetugas kandang}) = _$KandangPetugasResultImpl;

  factory _KandangPetugasResult.fromJson(Map<String, dynamic> json) =
      _$KandangPetugasResultImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get nama;
  @override
  KandangPetugas get kandang;

  /// Create a copy of KandangPetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangPetugasResultImplCopyWith<_$KandangPetugasResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

KandangPetugas _$KandangPetugasFromJson(Map<String, dynamic> json) {
  return _KandangPetugas.fromJson(json);
}

/// @nodoc
mixin _$KandangPetugas {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get lokasi => throw _privateConstructorUsedError;
  int get totalAyam => throw _privateConstructorUsedError;
  int get latitude => throw _privateConstructorUsedError;
  int get longitude => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;

  /// Serializes this KandangPetugas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KandangPetugas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangPetugasCopyWith<KandangPetugas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangPetugasCopyWith<$Res> {
  factory $KandangPetugasCopyWith(
          KandangPetugas value, $Res Function(KandangPetugas) then) =
      _$KandangPetugasCopyWithImpl<$Res, KandangPetugas>;
  @useResult
  $Res call(
      {String id,
      String nama,
      String lokasi,
      int totalAyam,
      int latitude,
      int longitude,
      List<Image> images});
}

/// @nodoc
class _$KandangPetugasCopyWithImpl<$Res, $Val extends KandangPetugas>
    implements $KandangPetugasCopyWith<$Res> {
  _$KandangPetugasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KandangPetugas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? lokasi = null,
    Object? totalAyam = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? images = null,
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
      totalAyam: null == totalAyam
          ? _value.totalAyam
          : totalAyam // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KandangPetugasImplCopyWith<$Res>
    implements $KandangPetugasCopyWith<$Res> {
  factory _$$KandangPetugasImplCopyWith(_$KandangPetugasImpl value,
          $Res Function(_$KandangPetugasImpl) then) =
      __$$KandangPetugasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nama,
      String lokasi,
      int totalAyam,
      int latitude,
      int longitude,
      List<Image> images});
}

/// @nodoc
class __$$KandangPetugasImplCopyWithImpl<$Res>
    extends _$KandangPetugasCopyWithImpl<$Res, _$KandangPetugasImpl>
    implements _$$KandangPetugasImplCopyWith<$Res> {
  __$$KandangPetugasImplCopyWithImpl(
      _$KandangPetugasImpl _value, $Res Function(_$KandangPetugasImpl) _then)
      : super(_value, _then);

  /// Create a copy of KandangPetugas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? lokasi = null,
    Object? totalAyam = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? images = null,
  }) {
    return _then(_$KandangPetugasImpl(
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
      totalAyam: null == totalAyam
          ? _value.totalAyam
          : totalAyam // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangPetugasImpl implements _KandangPetugas {
  const _$KandangPetugasImpl(
      {required this.id,
      required this.nama,
      required this.lokasi,
      required this.totalAyam,
      required this.latitude,
      required this.longitude,
      required final List<Image> images})
      : _images = images;

  factory _$KandangPetugasImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangPetugasImplFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String lokasi;
  @override
  final int totalAyam;
  @override
  final int latitude;
  @override
  final int longitude;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'KandangPetugas(id: $id, nama: $nama, lokasi: $lokasi, totalAyam: $totalAyam, latitude: $latitude, longitude: $longitude, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangPetugasImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.totalAyam, totalAyam) ||
                other.totalAyam == totalAyam) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, lokasi, totalAyam,
      latitude, longitude, const DeepCollectionEquality().hash(_images));

  /// Create a copy of KandangPetugas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangPetugasImplCopyWith<_$KandangPetugasImpl> get copyWith =>
      __$$KandangPetugasImplCopyWithImpl<_$KandangPetugasImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangPetugasImplToJson(
      this,
    );
  }
}

abstract class _KandangPetugas implements KandangPetugas {
  const factory _KandangPetugas(
      {required final String id,
      required final String nama,
      required final String lokasi,
      required final int totalAyam,
      required final int latitude,
      required final int longitude,
      required final List<Image> images}) = _$KandangPetugasImpl;

  factory _KandangPetugas.fromJson(Map<String, dynamic> json) =
      _$KandangPetugasImpl.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get lokasi;
  @override
  int get totalAyam;
  @override
  int get latitude;
  @override
  int get longitude;
  @override
  List<Image> get images;

  /// Create a copy of KandangPetugas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangPetugasImplCopyWith<_$KandangPetugasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
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
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$ImageImpl(
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
class _$ImageImpl implements _Image {
  const _$ImageImpl({required this.id, required this.url});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'Image(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image({required final String id, required final String url}) =
      _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  String get id;
  @override
  String get url;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
