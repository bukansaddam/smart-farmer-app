// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LaporanResponse _$LaporanResponseFromJson(Map<String, dynamic> json) {
  return _LaporanResponse.fromJson(json);
}

/// @nodoc
mixin _$LaporanResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  LaporanResult get result => throw _privateConstructorUsedError;

  /// Serializes this LaporanResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaporanResponseCopyWith<LaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanResponseCopyWith<$Res> {
  factory $LaporanResponseCopyWith(
          LaporanResponse value, $Res Function(LaporanResponse) then) =
      _$LaporanResponseCopyWithImpl<$Res, LaporanResponse>;
  @useResult
  $Res call({bool success, String message, LaporanResult result});

  $LaporanResultCopyWith<$Res> get result;
}

/// @nodoc
class _$LaporanResponseCopyWithImpl<$Res, $Val extends LaporanResponse>
    implements $LaporanResponseCopyWith<$Res> {
  _$LaporanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaporanResponse
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
              as LaporanResult,
    ) as $Val);
  }

  /// Create a copy of LaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LaporanResultCopyWith<$Res> get result {
    return $LaporanResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaporanResponseImplCopyWith<$Res>
    implements $LaporanResponseCopyWith<$Res> {
  factory _$$LaporanResponseImplCopyWith(_$LaporanResponseImpl value,
          $Res Function(_$LaporanResponseImpl) then) =
      __$$LaporanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, LaporanResult result});

  @override
  $LaporanResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$LaporanResponseImplCopyWithImpl<$Res>
    extends _$LaporanResponseCopyWithImpl<$Res, _$LaporanResponseImpl>
    implements _$$LaporanResponseImplCopyWith<$Res> {
  __$$LaporanResponseImplCopyWithImpl(
      _$LaporanResponseImpl _value, $Res Function(_$LaporanResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$LaporanResponseImpl(
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
              as LaporanResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanResponseImpl implements _LaporanResponse {
  const _$LaporanResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$LaporanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final LaporanResult result;

  @override
  String toString() {
    return 'LaporanResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of LaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanResponseImplCopyWith<_$LaporanResponseImpl> get copyWith =>
      __$$LaporanResponseImplCopyWithImpl<_$LaporanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanResponseImplToJson(
      this,
    );
  }
}

abstract class _LaporanResponse implements LaporanResponse {
  const factory _LaporanResponse(
      {required final bool success,
      required final String message,
      required final LaporanResult result}) = _$LaporanResponseImpl;

  factory _LaporanResponse.fromJson(Map<String, dynamic> json) =
      _$LaporanResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  LaporanResult get result;

  /// Create a copy of LaporanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaporanResponseImplCopyWith<_$LaporanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LaporanResult _$LaporanResultFromJson(Map<String, dynamic> json) {
  return _LaporanResult.fromJson(json);
}

/// @nodoc
mixin _$LaporanResult {
  int get totalCount => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Laporan> get data => throw _privateConstructorUsedError;

  /// Serializes this LaporanResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaporanResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaporanResultCopyWith<LaporanResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanResultCopyWith<$Res> {
  factory $LaporanResultCopyWith(
          LaporanResult value, $Res Function(LaporanResult) then) =
      _$LaporanResultCopyWithImpl<$Res, LaporanResult>;
  @useResult
  $Res call({int totalCount, int totalPages, List<Laporan> data});
}

/// @nodoc
class _$LaporanResultCopyWithImpl<$Res, $Val extends LaporanResult>
    implements $LaporanResultCopyWith<$Res> {
  _$LaporanResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaporanResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Laporan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanResultImplCopyWith<$Res>
    implements $LaporanResultCopyWith<$Res> {
  factory _$$LaporanResultImplCopyWith(
          _$LaporanResultImpl value, $Res Function(_$LaporanResultImpl) then) =
      __$$LaporanResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, int totalPages, List<Laporan> data});
}

/// @nodoc
class __$$LaporanResultImplCopyWithImpl<$Res>
    extends _$LaporanResultCopyWithImpl<$Res, _$LaporanResultImpl>
    implements _$$LaporanResultImplCopyWith<$Res> {
  __$$LaporanResultImplCopyWithImpl(
      _$LaporanResultImpl _value, $Res Function(_$LaporanResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaporanResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_$LaporanResultImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Laporan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanResultImpl implements _LaporanResult {
  const _$LaporanResultImpl(
      {required this.totalCount,
      required this.totalPages,
      required final List<Laporan> data})
      : _data = data;

  factory _$LaporanResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanResultImplFromJson(json);

  @override
  final int totalCount;
  @override
  final int totalPages;
  final List<Laporan> _data;
  @override
  List<Laporan> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LaporanResult(totalCount: $totalCount, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanResultImpl &&
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

  /// Create a copy of LaporanResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanResultImplCopyWith<_$LaporanResultImpl> get copyWith =>
      __$$LaporanResultImplCopyWithImpl<_$LaporanResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanResultImplToJson(
      this,
    );
  }
}

abstract class _LaporanResult implements LaporanResult {
  const factory _LaporanResult(
      {required final int totalCount,
      required final int totalPages,
      required final List<Laporan> data}) = _$LaporanResultImpl;

  factory _LaporanResult.fromJson(Map<String, dynamic> json) =
      _$LaporanResultImpl.fromJson;

  @override
  int get totalCount;
  @override
  int get totalPages;
  @override
  List<Laporan> get data;

  /// Create a copy of LaporanResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaporanResultImplCopyWith<_$LaporanResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Laporan _$LaporanFromJson(Map<String, dynamic> json) {
  return _Laporan.fromJson(json);
}

/// @nodoc
mixin _$Laporan {
  String get idLaporan => throw _privateConstructorUsedError;
  String get jenis => throw _privateConstructorUsedError;
  String get kandang => throw _privateConstructorUsedError;
  DateTime get tanggal => throw _privateConstructorUsedError;

  /// Serializes this Laporan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Laporan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaporanCopyWith<Laporan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanCopyWith<$Res> {
  factory $LaporanCopyWith(Laporan value, $Res Function(Laporan) then) =
      _$LaporanCopyWithImpl<$Res, Laporan>;
  @useResult
  $Res call({String idLaporan, String jenis, String kandang, DateTime tanggal});
}

/// @nodoc
class _$LaporanCopyWithImpl<$Res, $Val extends Laporan>
    implements $LaporanCopyWith<$Res> {
  _$LaporanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Laporan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLaporan = null,
    Object? jenis = null,
    Object? kandang = null,
    Object? tanggal = null,
  }) {
    return _then(_value.copyWith(
      idLaporan: null == idLaporan
          ? _value.idLaporan
          : idLaporan // ignore: cast_nullable_to_non_nullable
              as String,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      kandang: null == kandang
          ? _value.kandang
          : kandang // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanImplCopyWith<$Res> implements $LaporanCopyWith<$Res> {
  factory _$$LaporanImplCopyWith(
          _$LaporanImpl value, $Res Function(_$LaporanImpl) then) =
      __$$LaporanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idLaporan, String jenis, String kandang, DateTime tanggal});
}

/// @nodoc
class __$$LaporanImplCopyWithImpl<$Res>
    extends _$LaporanCopyWithImpl<$Res, _$LaporanImpl>
    implements _$$LaporanImplCopyWith<$Res> {
  __$$LaporanImplCopyWithImpl(
      _$LaporanImpl _value, $Res Function(_$LaporanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Laporan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLaporan = null,
    Object? jenis = null,
    Object? kandang = null,
    Object? tanggal = null,
  }) {
    return _then(_$LaporanImpl(
      idLaporan: null == idLaporan
          ? _value.idLaporan
          : idLaporan // ignore: cast_nullable_to_non_nullable
              as String,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      kandang: null == kandang
          ? _value.kandang
          : kandang // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanImpl implements _Laporan {
  const _$LaporanImpl(
      {required this.idLaporan,
      required this.jenis,
      required this.kandang,
      required this.tanggal});

  factory _$LaporanImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanImplFromJson(json);

  @override
  final String idLaporan;
  @override
  final String jenis;
  @override
  final String kandang;
  @override
  final DateTime tanggal;

  @override
  String toString() {
    return 'Laporan(idLaporan: $idLaporan, jenis: $jenis, kandang: $kandang, tanggal: $tanggal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanImpl &&
            (identical(other.idLaporan, idLaporan) ||
                other.idLaporan == idLaporan) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.kandang, kandang) || other.kandang == kandang) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idLaporan, jenis, kandang, tanggal);

  /// Create a copy of Laporan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanImplCopyWith<_$LaporanImpl> get copyWith =>
      __$$LaporanImplCopyWithImpl<_$LaporanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanImplToJson(
      this,
    );
  }
}

abstract class _Laporan implements Laporan {
  const factory _Laporan(
      {required final String idLaporan,
      required final String jenis,
      required final String kandang,
      required final DateTime tanggal}) = _$LaporanImpl;

  factory _Laporan.fromJson(Map<String, dynamic> json) = _$LaporanImpl.fromJson;

  @override
  String get idLaporan;
  @override
  String get jenis;
  @override
  String get kandang;
  @override
  DateTime get tanggal;

  /// Create a copy of Laporan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaporanImplCopyWith<_$LaporanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
