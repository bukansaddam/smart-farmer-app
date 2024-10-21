// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petugas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PetugasResponse _$PetugasResponseFromJson(Map<String, dynamic> json) {
  return _PetugasResponse.fromJson(json);
}

/// @nodoc
mixin _$PetugasResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PetugasResult get result => throw _privateConstructorUsedError;

  /// Serializes this PetugasResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetugasResponseCopyWith<PetugasResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetugasResponseCopyWith<$Res> {
  factory $PetugasResponseCopyWith(
          PetugasResponse value, $Res Function(PetugasResponse) then) =
      _$PetugasResponseCopyWithImpl<$Res, PetugasResponse>;
  @useResult
  $Res call({bool success, String message, PetugasResult result});

  $PetugasResultCopyWith<$Res> get result;
}

/// @nodoc
class _$PetugasResponseCopyWithImpl<$Res, $Val extends PetugasResponse>
    implements $PetugasResponseCopyWith<$Res> {
  _$PetugasResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetugasResponse
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
              as PetugasResult,
    ) as $Val);
  }

  /// Create a copy of PetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PetugasResultCopyWith<$Res> get result {
    return $PetugasResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PetugasResponseImplCopyWith<$Res>
    implements $PetugasResponseCopyWith<$Res> {
  factory _$$PetugasResponseImplCopyWith(_$PetugasResponseImpl value,
          $Res Function(_$PetugasResponseImpl) then) =
      __$$PetugasResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, PetugasResult result});

  @override
  $PetugasResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$PetugasResponseImplCopyWithImpl<$Res>
    extends _$PetugasResponseCopyWithImpl<$Res, _$PetugasResponseImpl>
    implements _$$PetugasResponseImplCopyWith<$Res> {
  __$$PetugasResponseImplCopyWithImpl(
      _$PetugasResponseImpl _value, $Res Function(_$PetugasResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$PetugasResponseImpl(
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
              as PetugasResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetugasResponseImpl implements _PetugasResponse {
  const _$PetugasResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$PetugasResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetugasResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final PetugasResult result;

  @override
  String toString() {
    return 'PetugasResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetugasResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of PetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetugasResponseImplCopyWith<_$PetugasResponseImpl> get copyWith =>
      __$$PetugasResponseImplCopyWithImpl<_$PetugasResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetugasResponseImplToJson(
      this,
    );
  }
}

abstract class _PetugasResponse implements PetugasResponse {
  const factory _PetugasResponse(
      {required final bool success,
      required final String message,
      required final PetugasResult result}) = _$PetugasResponseImpl;

  factory _PetugasResponse.fromJson(Map<String, dynamic> json) =
      _$PetugasResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  PetugasResult get result;

  /// Create a copy of PetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetugasResponseImplCopyWith<_$PetugasResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PetugasResult _$PetugasResultFromJson(Map<String, dynamic> json) {
  return _PetugasResult.fromJson(json);
}

/// @nodoc
mixin _$PetugasResult {
  int get totalCount => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Petugas> get data => throw _privateConstructorUsedError;

  /// Serializes this PetugasResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetugasResultCopyWith<PetugasResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetugasResultCopyWith<$Res> {
  factory $PetugasResultCopyWith(
          PetugasResult value, $Res Function(PetugasResult) then) =
      _$PetugasResultCopyWithImpl<$Res, PetugasResult>;
  @useResult
  $Res call({int totalCount, int totalPages, List<Petugas> data});
}

/// @nodoc
class _$PetugasResultCopyWithImpl<$Res, $Val extends PetugasResult>
    implements $PetugasResultCopyWith<$Res> {
  _$PetugasResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetugasResult
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
              as List<Petugas>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetugasResultImplCopyWith<$Res>
    implements $PetugasResultCopyWith<$Res> {
  factory _$$PetugasResultImplCopyWith(
          _$PetugasResultImpl value, $Res Function(_$PetugasResultImpl) then) =
      __$$PetugasResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, int totalPages, List<Petugas> data});
}

/// @nodoc
class __$$PetugasResultImplCopyWithImpl<$Res>
    extends _$PetugasResultCopyWithImpl<$Res, _$PetugasResultImpl>
    implements _$$PetugasResultImplCopyWith<$Res> {
  __$$PetugasResultImplCopyWithImpl(
      _$PetugasResultImpl _value, $Res Function(_$PetugasResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_$PetugasResultImpl(
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
              as List<Petugas>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetugasResultImpl implements _PetugasResult {
  const _$PetugasResultImpl(
      {required this.totalCount,
      required this.totalPages,
      required final List<Petugas> data})
      : _data = data;

  factory _$PetugasResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetugasResultImplFromJson(json);

  @override
  final int totalCount;
  @override
  final int totalPages;
  final List<Petugas> _data;
  @override
  List<Petugas> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PetugasResult(totalCount: $totalCount, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetugasResultImpl &&
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

  /// Create a copy of PetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetugasResultImplCopyWith<_$PetugasResultImpl> get copyWith =>
      __$$PetugasResultImplCopyWithImpl<_$PetugasResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetugasResultImplToJson(
      this,
    );
  }
}

abstract class _PetugasResult implements PetugasResult {
  const factory _PetugasResult(
      {required final int totalCount,
      required final int totalPages,
      required final List<Petugas> data}) = _$PetugasResultImpl;

  factory _PetugasResult.fromJson(Map<String, dynamic> json) =
      _$PetugasResultImpl.fromJson;

  @override
  int get totalCount;
  @override
  int get totalPages;
  @override
  List<Petugas> get data;

  /// Create a copy of PetugasResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetugasResultImplCopyWith<_$PetugasResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Petugas _$PetugasFromJson(Map<String, dynamic> json) {
  return _Petugas.fromJson(json);
}

/// @nodoc
mixin _$Petugas {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get noTelp => throw _privateConstructorUsedError;
  String get lokasiKandang => throw _privateConstructorUsedError;

  /// Serializes this Petugas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Petugas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetugasCopyWith<Petugas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetugasCopyWith<$Res> {
  factory $PetugasCopyWith(Petugas value, $Res Function(Petugas) then) =
      _$PetugasCopyWithImpl<$Res, Petugas>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String nama,
      String email,
      String noTelp,
      String lokasiKandang});
}

/// @nodoc
class _$PetugasCopyWithImpl<$Res, $Val extends Petugas>
    implements $PetugasCopyWith<$Res> {
  _$PetugasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Petugas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? nama = null,
    Object? email = null,
    Object? noTelp = null,
    Object? lokasiKandang = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      noTelp: null == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiKandang: null == lokasiKandang
          ? _value.lokasiKandang
          : lokasiKandang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetugasImplCopyWith<$Res> implements $PetugasCopyWith<$Res> {
  factory _$$PetugasImplCopyWith(
          _$PetugasImpl value, $Res Function(_$PetugasImpl) then) =
      __$$PetugasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String nama,
      String email,
      String noTelp,
      String lokasiKandang});
}

/// @nodoc
class __$$PetugasImplCopyWithImpl<$Res>
    extends _$PetugasCopyWithImpl<$Res, _$PetugasImpl>
    implements _$$PetugasImplCopyWith<$Res> {
  __$$PetugasImplCopyWithImpl(
      _$PetugasImpl _value, $Res Function(_$PetugasImpl) _then)
      : super(_value, _then);

  /// Create a copy of Petugas
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? nama = null,
    Object? email = null,
    Object? noTelp = null,
    Object? lokasiKandang = null,
  }) {
    return _then(_$PetugasImpl(
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      noTelp: null == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiKandang: null == lokasiKandang
          ? _value.lokasiKandang
          : lokasiKandang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetugasImpl implements _Petugas {
  const _$PetugasImpl(
      {required this.id,
      required this.userId,
      required this.nama,
      required this.email,
      required this.noTelp,
      required this.lokasiKandang});

  factory _$PetugasImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetugasImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String nama;
  @override
  final String email;
  @override
  final String noTelp;
  @override
  final String lokasiKandang;

  @override
  String toString() {
    return 'Petugas(id: $id, userId: $userId, nama: $nama, email: $email, noTelp: $noTelp, lokasiKandang: $lokasiKandang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetugasImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.noTelp, noTelp) || other.noTelp == noTelp) &&
            (identical(other.lokasiKandang, lokasiKandang) ||
                other.lokasiKandang == lokasiKandang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, nama, email, noTelp, lokasiKandang);

  /// Create a copy of Petugas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetugasImplCopyWith<_$PetugasImpl> get copyWith =>
      __$$PetugasImplCopyWithImpl<_$PetugasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetugasImplToJson(
      this,
    );
  }
}

abstract class _Petugas implements Petugas {
  const factory _Petugas(
      {required final String id,
      required final String userId,
      required final String nama,
      required final String email,
      required final String noTelp,
      required final String lokasiKandang}) = _$PetugasImpl;

  factory _Petugas.fromJson(Map<String, dynamic> json) = _$PetugasImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get nama;
  @override
  String get email;
  @override
  String get noTelp;
  @override
  String get lokasiKandang;

  /// Create a copy of Petugas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetugasImplCopyWith<_$PetugasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
