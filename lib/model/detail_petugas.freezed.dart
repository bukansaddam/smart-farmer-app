// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_petugas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailPetugasResponse _$DetailPetugasResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailPetugasResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailPetugasResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DetailPetugas get result => throw _privateConstructorUsedError;

  /// Serializes this DetailPetugasResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailPetugasResponseCopyWith<DetailPetugasResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPetugasResponseCopyWith<$Res> {
  factory $DetailPetugasResponseCopyWith(DetailPetugasResponse value,
          $Res Function(DetailPetugasResponse) then) =
      _$DetailPetugasResponseCopyWithImpl<$Res, DetailPetugasResponse>;
  @useResult
  $Res call({bool success, String message, DetailPetugas result});

  $DetailPetugasCopyWith<$Res> get result;
}

/// @nodoc
class _$DetailPetugasResponseCopyWithImpl<$Res,
        $Val extends DetailPetugasResponse>
    implements $DetailPetugasResponseCopyWith<$Res> {
  _$DetailPetugasResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailPetugasResponse
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
              as DetailPetugas,
    ) as $Val);
  }

  /// Create a copy of DetailPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailPetugasCopyWith<$Res> get result {
    return $DetailPetugasCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailPetugasResponseImplCopyWith<$Res>
    implements $DetailPetugasResponseCopyWith<$Res> {
  factory _$$DetailPetugasResponseImplCopyWith(
          _$DetailPetugasResponseImpl value,
          $Res Function(_$DetailPetugasResponseImpl) then) =
      __$$DetailPetugasResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, DetailPetugas result});

  @override
  $DetailPetugasCopyWith<$Res> get result;
}

/// @nodoc
class __$$DetailPetugasResponseImplCopyWithImpl<$Res>
    extends _$DetailPetugasResponseCopyWithImpl<$Res,
        _$DetailPetugasResponseImpl>
    implements _$$DetailPetugasResponseImplCopyWith<$Res> {
  __$$DetailPetugasResponseImplCopyWithImpl(_$DetailPetugasResponseImpl _value,
      $Res Function(_$DetailPetugasResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$DetailPetugasResponseImpl(
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
              as DetailPetugas,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailPetugasResponseImpl implements _DetailPetugasResponse {
  const _$DetailPetugasResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$DetailPetugasResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPetugasResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final DetailPetugas result;

  @override
  String toString() {
    return 'DetailPetugasResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPetugasResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of DetailPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPetugasResponseImplCopyWith<_$DetailPetugasResponseImpl>
      get copyWith => __$$DetailPetugasResponseImplCopyWithImpl<
          _$DetailPetugasResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPetugasResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailPetugasResponse implements DetailPetugasResponse {
  const factory _DetailPetugasResponse(
      {required final bool success,
      required final String message,
      required final DetailPetugas result}) = _$DetailPetugasResponseImpl;

  factory _DetailPetugasResponse.fromJson(Map<String, dynamic> json) =
      _$DetailPetugasResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  DetailPetugas get result;

  /// Create a copy of DetailPetugasResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailPetugasResponseImplCopyWith<_$DetailPetugasResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailPetugas _$DetailPetugasFromJson(Map<String, dynamic> json) {
  return _DetailPetugas.fromJson(json);
}

/// @nodoc
mixin _$DetailPetugas {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get noTelp => throw _privateConstructorUsedError;
  String get lokasiKandang => throw _privateConstructorUsedError;

  /// Serializes this DetailPetugas to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailPetugas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailPetugasCopyWith<DetailPetugas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPetugasCopyWith<$Res> {
  factory $DetailPetugasCopyWith(
          DetailPetugas value, $Res Function(DetailPetugas) then) =
      _$DetailPetugasCopyWithImpl<$Res, DetailPetugas>;
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
class _$DetailPetugasCopyWithImpl<$Res, $Val extends DetailPetugas>
    implements $DetailPetugasCopyWith<$Res> {
  _$DetailPetugasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailPetugas
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
abstract class _$$DetailPetugasImplCopyWith<$Res>
    implements $DetailPetugasCopyWith<$Res> {
  factory _$$DetailPetugasImplCopyWith(
          _$DetailPetugasImpl value, $Res Function(_$DetailPetugasImpl) then) =
      __$$DetailPetugasImplCopyWithImpl<$Res>;
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
class __$$DetailPetugasImplCopyWithImpl<$Res>
    extends _$DetailPetugasCopyWithImpl<$Res, _$DetailPetugasImpl>
    implements _$$DetailPetugasImplCopyWith<$Res> {
  __$$DetailPetugasImplCopyWithImpl(
      _$DetailPetugasImpl _value, $Res Function(_$DetailPetugasImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailPetugas
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
    return _then(_$DetailPetugasImpl(
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
class _$DetailPetugasImpl implements _DetailPetugas {
  const _$DetailPetugasImpl(
      {required this.id,
      required this.userId,
      required this.nama,
      required this.email,
      required this.noTelp,
      required this.lokasiKandang});

  factory _$DetailPetugasImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPetugasImplFromJson(json);

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
    return 'DetailPetugas(id: $id, userId: $userId, nama: $nama, email: $email, noTelp: $noTelp, lokasiKandang: $lokasiKandang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPetugasImpl &&
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

  /// Create a copy of DetailPetugas
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPetugasImplCopyWith<_$DetailPetugasImpl> get copyWith =>
      __$$DetailPetugasImplCopyWithImpl<_$DetailPetugasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPetugasImplToJson(
      this,
    );
  }
}

abstract class _DetailPetugas implements DetailPetugas {
  const factory _DetailPetugas(
      {required final String id,
      required final String userId,
      required final String nama,
      required final String email,
      required final String noTelp,
      required final String lokasiKandang}) = _$DetailPetugasImpl;

  factory _DetailPetugas.fromJson(Map<String, dynamic> json) =
      _$DetailPetugasImpl.fromJson;

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

  /// Create a copy of DetailPetugas
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailPetugasImplCopyWith<_$DetailPetugasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
