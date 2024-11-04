// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryInventoryResponse _$HistoryInventoryResponseFromJson(
    Map<String, dynamic> json) {
  return _HistoryInventoryResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryInventoryResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  HistoryInventoryResult get result => throw _privateConstructorUsedError;

  /// Serializes this HistoryInventoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryInventoryResponseCopyWith<HistoryInventoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryInventoryResponseCopyWith<$Res> {
  factory $HistoryInventoryResponseCopyWith(HistoryInventoryResponse value,
          $Res Function(HistoryInventoryResponse) then) =
      _$HistoryInventoryResponseCopyWithImpl<$Res, HistoryInventoryResponse>;
  @useResult
  $Res call({bool success, String message, HistoryInventoryResult result});

  $HistoryInventoryResultCopyWith<$Res> get result;
}

/// @nodoc
class _$HistoryInventoryResponseCopyWithImpl<$Res,
        $Val extends HistoryInventoryResponse>
    implements $HistoryInventoryResponseCopyWith<$Res> {
  _$HistoryInventoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryInventoryResponse
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
              as HistoryInventoryResult,
    ) as $Val);
  }

  /// Create a copy of HistoryInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HistoryInventoryResultCopyWith<$Res> get result {
    return $HistoryInventoryResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryInventoryResponseImplCopyWith<$Res>
    implements $HistoryInventoryResponseCopyWith<$Res> {
  factory _$$HistoryInventoryResponseImplCopyWith(
          _$HistoryInventoryResponseImpl value,
          $Res Function(_$HistoryInventoryResponseImpl) then) =
      __$$HistoryInventoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, HistoryInventoryResult result});

  @override
  $HistoryInventoryResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$HistoryInventoryResponseImplCopyWithImpl<$Res>
    extends _$HistoryInventoryResponseCopyWithImpl<$Res,
        _$HistoryInventoryResponseImpl>
    implements _$$HistoryInventoryResponseImplCopyWith<$Res> {
  __$$HistoryInventoryResponseImplCopyWithImpl(
      _$HistoryInventoryResponseImpl _value,
      $Res Function(_$HistoryInventoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$HistoryInventoryResponseImpl(
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
              as HistoryInventoryResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryInventoryResponseImpl implements _HistoryInventoryResponse {
  const _$HistoryInventoryResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$HistoryInventoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryInventoryResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final HistoryInventoryResult result;

  @override
  String toString() {
    return 'HistoryInventoryResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryInventoryResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of HistoryInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryInventoryResponseImplCopyWith<_$HistoryInventoryResponseImpl>
      get copyWith => __$$HistoryInventoryResponseImplCopyWithImpl<
          _$HistoryInventoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryInventoryResponseImplToJson(
      this,
    );
  }
}

abstract class _HistoryInventoryResponse implements HistoryInventoryResponse {
  const factory _HistoryInventoryResponse(
          {required final bool success,
          required final String message,
          required final HistoryInventoryResult result}) =
      _$HistoryInventoryResponseImpl;

  factory _HistoryInventoryResponse.fromJson(Map<String, dynamic> json) =
      _$HistoryInventoryResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  HistoryInventoryResult get result;

  /// Create a copy of HistoryInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryInventoryResponseImplCopyWith<_$HistoryInventoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HistoryInventoryResult _$HistoryInventoryResultFromJson(
    Map<String, dynamic> json) {
  return _HistoryInventoryResult.fromJson(json);
}

/// @nodoc
mixin _$HistoryInventoryResult {
  int get totalCount => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<HistoryInventory> get data => throw _privateConstructorUsedError;

  /// Serializes this HistoryInventoryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryInventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryInventoryResultCopyWith<HistoryInventoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryInventoryResultCopyWith<$Res> {
  factory $HistoryInventoryResultCopyWith(HistoryInventoryResult value,
          $Res Function(HistoryInventoryResult) then) =
      _$HistoryInventoryResultCopyWithImpl<$Res, HistoryInventoryResult>;
  @useResult
  $Res call({int totalCount, int totalPages, List<HistoryInventory> data});
}

/// @nodoc
class _$HistoryInventoryResultCopyWithImpl<$Res,
        $Val extends HistoryInventoryResult>
    implements $HistoryInventoryResultCopyWith<$Res> {
  _$HistoryInventoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryInventoryResult
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
              as List<HistoryInventory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryInventoryResultImplCopyWith<$Res>
    implements $HistoryInventoryResultCopyWith<$Res> {
  factory _$$HistoryInventoryResultImplCopyWith(
          _$HistoryInventoryResultImpl value,
          $Res Function(_$HistoryInventoryResultImpl) then) =
      __$$HistoryInventoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, int totalPages, List<HistoryInventory> data});
}

/// @nodoc
class __$$HistoryInventoryResultImplCopyWithImpl<$Res>
    extends _$HistoryInventoryResultCopyWithImpl<$Res,
        _$HistoryInventoryResultImpl>
    implements _$$HistoryInventoryResultImplCopyWith<$Res> {
  __$$HistoryInventoryResultImplCopyWithImpl(
      _$HistoryInventoryResultImpl _value,
      $Res Function(_$HistoryInventoryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryInventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_$HistoryInventoryResultImpl(
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
              as List<HistoryInventory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryInventoryResultImpl implements _HistoryInventoryResult {
  const _$HistoryInventoryResultImpl(
      {required this.totalCount,
      required this.totalPages,
      required final List<HistoryInventory> data})
      : _data = data;

  factory _$HistoryInventoryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryInventoryResultImplFromJson(json);

  @override
  final int totalCount;
  @override
  final int totalPages;
  final List<HistoryInventory> _data;
  @override
  List<HistoryInventory> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HistoryInventoryResult(totalCount: $totalCount, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryInventoryResultImpl &&
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

  /// Create a copy of HistoryInventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryInventoryResultImplCopyWith<_$HistoryInventoryResultImpl>
      get copyWith => __$$HistoryInventoryResultImplCopyWithImpl<
          _$HistoryInventoryResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryInventoryResultImplToJson(
      this,
    );
  }
}

abstract class _HistoryInventoryResult implements HistoryInventoryResult {
  const factory _HistoryInventoryResult(
          {required final int totalCount,
          required final int totalPages,
          required final List<HistoryInventory> data}) =
      _$HistoryInventoryResultImpl;

  factory _HistoryInventoryResult.fromJson(Map<String, dynamic> json) =
      _$HistoryInventoryResultImpl.fromJson;

  @override
  int get totalCount;
  @override
  int get totalPages;
  @override
  List<HistoryInventory> get data;

  /// Create a copy of HistoryInventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryInventoryResultImplCopyWith<_$HistoryInventoryResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HistoryInventory _$HistoryInventoryFromJson(Map<String, dynamic> json) {
  return _HistoryInventory.fromJson(json);
}

/// @nodoc
mixin _$HistoryInventory {
  String get id => throw _privateConstructorUsedError;
  String get namaItem => throw _privateConstructorUsedError;
  String get keterangan => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this HistoryInventory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryInventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryInventoryCopyWith<HistoryInventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryInventoryCopyWith<$Res> {
  factory $HistoryInventoryCopyWith(
          HistoryInventory value, $Res Function(HistoryInventory) then) =
      _$HistoryInventoryCopyWithImpl<$Res, HistoryInventory>;
  @useResult
  $Res call(
      {String id,
      String namaItem,
      String keterangan,
      String createdBy,
      DateTime createdAt});
}

/// @nodoc
class _$HistoryInventoryCopyWithImpl<$Res, $Val extends HistoryInventory>
    implements $HistoryInventoryCopyWith<$Res> {
  _$HistoryInventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryInventory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaItem = null,
    Object? keterangan = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namaItem: null == namaItem
          ? _value.namaItem
          : namaItem // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryInventoryImplCopyWith<$Res>
    implements $HistoryInventoryCopyWith<$Res> {
  factory _$$HistoryInventoryImplCopyWith(_$HistoryInventoryImpl value,
          $Res Function(_$HistoryInventoryImpl) then) =
      __$$HistoryInventoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String namaItem,
      String keterangan,
      String createdBy,
      DateTime createdAt});
}

/// @nodoc
class __$$HistoryInventoryImplCopyWithImpl<$Res>
    extends _$HistoryInventoryCopyWithImpl<$Res, _$HistoryInventoryImpl>
    implements _$$HistoryInventoryImplCopyWith<$Res> {
  __$$HistoryInventoryImplCopyWithImpl(_$HistoryInventoryImpl _value,
      $Res Function(_$HistoryInventoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryInventory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaItem = null,
    Object? keterangan = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_$HistoryInventoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namaItem: null == namaItem
          ? _value.namaItem
          : namaItem // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryInventoryImpl implements _HistoryInventory {
  const _$HistoryInventoryImpl(
      {required this.id,
      required this.namaItem,
      required this.keterangan,
      required this.createdBy,
      required this.createdAt});

  factory _$HistoryInventoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryInventoryImplFromJson(json);

  @override
  final String id;
  @override
  final String namaItem;
  @override
  final String keterangan;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'HistoryInventory(id: $id, namaItem: $namaItem, keterangan: $keterangan, createdBy: $createdBy, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryInventoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaItem, namaItem) ||
                other.namaItem == namaItem) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, namaItem, keterangan, createdBy, createdAt);

  /// Create a copy of HistoryInventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryInventoryImplCopyWith<_$HistoryInventoryImpl> get copyWith =>
      __$$HistoryInventoryImplCopyWithImpl<_$HistoryInventoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryInventoryImplToJson(
      this,
    );
  }
}

abstract class _HistoryInventory implements HistoryInventory {
  const factory _HistoryInventory(
      {required final String id,
      required final String namaItem,
      required final String keterangan,
      required final String createdBy,
      required final DateTime createdAt}) = _$HistoryInventoryImpl;

  factory _HistoryInventory.fromJson(Map<String, dynamic> json) =
      _$HistoryInventoryImpl.fromJson;

  @override
  String get id;
  @override
  String get namaItem;
  @override
  String get keterangan;
  @override
  String get createdBy;
  @override
  DateTime get createdAt;

  /// Create a copy of HistoryInventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryInventoryImplCopyWith<_$HistoryInventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
