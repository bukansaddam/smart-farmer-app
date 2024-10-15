// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kandang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KandangResponse _$KandangResponseFromJson(Map<String, dynamic> json) {
  return _KandangResponse.fromJson(json);
}

/// @nodoc
mixin _$KandangResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  KandangResult get result => throw _privateConstructorUsedError;

  /// Serializes this KandangResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangResponseCopyWith<KandangResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangResponseCopyWith<$Res> {
  factory $KandangResponseCopyWith(
          KandangResponse value, $Res Function(KandangResponse) then) =
      _$KandangResponseCopyWithImpl<$Res, KandangResponse>;
  @useResult
  $Res call({bool success, String message, KandangResult result});

  $KandangResultCopyWith<$Res> get result;
}

/// @nodoc
class _$KandangResponseCopyWithImpl<$Res, $Val extends KandangResponse>
    implements $KandangResponseCopyWith<$Res> {
  _$KandangResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KandangResponse
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
              as KandangResult,
    ) as $Val);
  }

  /// Create a copy of KandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KandangResultCopyWith<$Res> get result {
    return $KandangResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KandangResponseImplCopyWith<$Res>
    implements $KandangResponseCopyWith<$Res> {
  factory _$$KandangResponseImplCopyWith(_$KandangResponseImpl value,
          $Res Function(_$KandangResponseImpl) then) =
      __$$KandangResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, KandangResult result});

  @override
  $KandangResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$KandangResponseImplCopyWithImpl<$Res>
    extends _$KandangResponseCopyWithImpl<$Res, _$KandangResponseImpl>
    implements _$$KandangResponseImplCopyWith<$Res> {
  __$$KandangResponseImplCopyWithImpl(
      _$KandangResponseImpl _value, $Res Function(_$KandangResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of KandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$KandangResponseImpl(
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
              as KandangResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangResponseImpl implements _KandangResponse {
  const _$KandangResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$KandangResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final KandangResult result;

  @override
  String toString() {
    return 'KandangResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of KandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangResponseImplCopyWith<_$KandangResponseImpl> get copyWith =>
      __$$KandangResponseImplCopyWithImpl<_$KandangResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangResponseImplToJson(
      this,
    );
  }
}

abstract class _KandangResponse implements KandangResponse {
  const factory _KandangResponse(
      {required final bool success,
      required final String message,
      required final KandangResult result}) = _$KandangResponseImpl;

  factory _KandangResponse.fromJson(Map<String, dynamic> json) =
      _$KandangResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  KandangResult get result;

  /// Create a copy of KandangResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangResponseImplCopyWith<_$KandangResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KandangResult _$KandangResultFromJson(Map<String, dynamic> json) {
  return _KandangResult.fromJson(json);
}

/// @nodoc
mixin _$KandangResult {
  int? get totalCount => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  List<Kandang> get data => throw _privateConstructorUsedError;

  /// Serializes this KandangResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KandangResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangResultCopyWith<KandangResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangResultCopyWith<$Res> {
  factory $KandangResultCopyWith(
          KandangResult value, $Res Function(KandangResult) then) =
      _$KandangResultCopyWithImpl<$Res, KandangResult>;
  @useResult
  $Res call({int? totalCount, int? totalPages, List<Kandang> data});
}

/// @nodoc
class _$KandangResultCopyWithImpl<$Res, $Val extends KandangResult>
    implements $KandangResultCopyWith<$Res> {
  _$KandangResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KandangResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? totalPages = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Kandang>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KandangResultImplCopyWith<$Res>
    implements $KandangResultCopyWith<$Res> {
  factory _$$KandangResultImplCopyWith(
          _$KandangResultImpl value, $Res Function(_$KandangResultImpl) then) =
      __$$KandangResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalCount, int? totalPages, List<Kandang> data});
}

/// @nodoc
class __$$KandangResultImplCopyWithImpl<$Res>
    extends _$KandangResultCopyWithImpl<$Res, _$KandangResultImpl>
    implements _$$KandangResultImplCopyWith<$Res> {
  __$$KandangResultImplCopyWithImpl(
      _$KandangResultImpl _value, $Res Function(_$KandangResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of KandangResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? totalPages = freezed,
    Object? data = null,
  }) {
    return _then(_$KandangResultImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Kandang>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangResultImpl implements _KandangResult {
  const _$KandangResultImpl(
      {required this.totalCount,
      required this.totalPages,
      required final List<Kandang> data})
      : _data = data;

  factory _$KandangResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangResultImplFromJson(json);

  @override
  final int? totalCount;
  @override
  final int? totalPages;
  final List<Kandang> _data;
  @override
  List<Kandang> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'KandangResult(totalCount: $totalCount, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangResultImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, totalPages,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of KandangResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangResultImplCopyWith<_$KandangResultImpl> get copyWith =>
      __$$KandangResultImplCopyWithImpl<_$KandangResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangResultImplToJson(
      this,
    );
  }
}

abstract class _KandangResult implements KandangResult {
  const factory _KandangResult(
      {required final int? totalCount,
      required final int? totalPages,
      required final List<Kandang> data}) = _$KandangResultImpl;

  factory _KandangResult.fromJson(Map<String, dynamic> json) =
      _$KandangResultImpl.fromJson;

  @override
  int? get totalCount;
  @override
  int? get totalPages;
  @override
  List<Kandang> get data;

  /// Create a copy of KandangResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangResultImplCopyWith<_$KandangResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Kandang _$KandangFromJson(Map<String, dynamic> json) {
  return _Kandang.fromJson(json);
}

/// @nodoc
mixin _$Kandang {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get lokasi => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int get jumlahAyam => throw _privateConstructorUsedError;
  List<KandangImage> get images => throw _privateConstructorUsedError;

  /// Serializes this Kandang to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Kandang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KandangCopyWith<Kandang> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangCopyWith<$Res> {
  factory $KandangCopyWith(Kandang value, $Res Function(Kandang) then) =
      _$KandangCopyWithImpl<$Res, Kandang>;
  @useResult
  $Res call(
      {String id,
      String nama,
      String lokasi,
      double latitude,
      double longitude,
      int jumlahAyam,
      List<KandangImage> images});
}

/// @nodoc
class _$KandangCopyWithImpl<$Res, $Val extends Kandang>
    implements $KandangCopyWith<$Res> {
  _$KandangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Kandang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? lokasi = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? jumlahAyam = null,
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
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      jumlahAyam: null == jumlahAyam
          ? _value.jumlahAyam
          : jumlahAyam // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<KandangImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KandangImplCopyWith<$Res> implements $KandangCopyWith<$Res> {
  factory _$$KandangImplCopyWith(
          _$KandangImpl value, $Res Function(_$KandangImpl) then) =
      __$$KandangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nama,
      String lokasi,
      double latitude,
      double longitude,
      int jumlahAyam,
      List<KandangImage> images});
}

/// @nodoc
class __$$KandangImplCopyWithImpl<$Res>
    extends _$KandangCopyWithImpl<$Res, _$KandangImpl>
    implements _$$KandangImplCopyWith<$Res> {
  __$$KandangImplCopyWithImpl(
      _$KandangImpl _value, $Res Function(_$KandangImpl) _then)
      : super(_value, _then);

  /// Create a copy of Kandang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? lokasi = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? jumlahAyam = null,
    Object? images = null,
  }) {
    return _then(_$KandangImpl(
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
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      jumlahAyam: null == jumlahAyam
          ? _value.jumlahAyam
          : jumlahAyam // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<KandangImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangImpl implements _Kandang {
  const _$KandangImpl(
      {required this.id,
      required this.nama,
      required this.lokasi,
      required this.latitude,
      required this.longitude,
      required this.jumlahAyam,
      required final List<KandangImage> images})
      : _images = images;

  factory _$KandangImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangImplFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String lokasi;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int jumlahAyam;
  final List<KandangImage> _images;
  @override
  List<KandangImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Kandang(id: $id, nama: $nama, lokasi: $lokasi, latitude: $latitude, longitude: $longitude, jumlahAyam: $jumlahAyam, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.jumlahAyam, jumlahAyam) ||
                other.jumlahAyam == jumlahAyam) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, lokasi, latitude,
      longitude, jumlahAyam, const DeepCollectionEquality().hash(_images));

  /// Create a copy of Kandang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangImplCopyWith<_$KandangImpl> get copyWith =>
      __$$KandangImplCopyWithImpl<_$KandangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangImplToJson(
      this,
    );
  }
}

abstract class _Kandang implements Kandang {
  const factory _Kandang(
      {required final String id,
      required final String nama,
      required final String lokasi,
      required final double latitude,
      required final double longitude,
      required final int jumlahAyam,
      required final List<KandangImage> images}) = _$KandangImpl;

  factory _Kandang.fromJson(Map<String, dynamic> json) = _$KandangImpl.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get lokasi;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int get jumlahAyam;
  @override
  List<KandangImage> get images;

  /// Create a copy of Kandang
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangImplCopyWith<_$KandangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KandangImage _$KandangImageFromJson(Map<String, dynamic> json) {
  return _KandangImage.fromJson(json);
}

/// @nodoc
mixin _$KandangImage {
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
  $Res call({String url});
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
    Object? url = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String url});
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
    Object? url = null,
  }) {
    return _then(_$KandangImageImpl(
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
  const _$KandangImageImpl({required this.url});

  factory _$KandangImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'KandangImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

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
  const factory _KandangImage({required final String url}) = _$KandangImageImpl;

  factory _KandangImage.fromJson(Map<String, dynamic> json) =
      _$KandangImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of KandangImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KandangImageImplCopyWith<_$KandangImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
