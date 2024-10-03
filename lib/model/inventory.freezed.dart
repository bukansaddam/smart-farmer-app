// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryResponse _$InventoryResponseFromJson(Map<String, dynamic> json) {
  return _InventoryResponse.fromJson(json);
}

/// @nodoc
mixin _$InventoryResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  InventoryResult get result => throw _privateConstructorUsedError;

  /// Serializes this InventoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryResponseCopyWith<InventoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryResponseCopyWith<$Res> {
  factory $InventoryResponseCopyWith(
          InventoryResponse value, $Res Function(InventoryResponse) then) =
      _$InventoryResponseCopyWithImpl<$Res, InventoryResponse>;
  @useResult
  $Res call({bool success, String message, InventoryResult result});

  $InventoryResultCopyWith<$Res> get result;
}

/// @nodoc
class _$InventoryResponseCopyWithImpl<$Res, $Val extends InventoryResponse>
    implements $InventoryResponseCopyWith<$Res> {
  _$InventoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryResponse
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
              as InventoryResult,
    ) as $Val);
  }

  /// Create a copy of InventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryResultCopyWith<$Res> get result {
    return $InventoryResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryResponseImplCopyWith<$Res>
    implements $InventoryResponseCopyWith<$Res> {
  factory _$$InventoryResponseImplCopyWith(_$InventoryResponseImpl value,
          $Res Function(_$InventoryResponseImpl) then) =
      __$$InventoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, InventoryResult result});

  @override
  $InventoryResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$InventoryResponseImplCopyWithImpl<$Res>
    extends _$InventoryResponseCopyWithImpl<$Res, _$InventoryResponseImpl>
    implements _$$InventoryResponseImplCopyWith<$Res> {
  __$$InventoryResponseImplCopyWithImpl(_$InventoryResponseImpl _value,
      $Res Function(_$InventoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$InventoryResponseImpl(
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
              as InventoryResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryResponseImpl implements _InventoryResponse {
  const _$InventoryResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$InventoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final InventoryResult result;

  @override
  String toString() {
    return 'InventoryResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of InventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryResponseImplCopyWith<_$InventoryResponseImpl> get copyWith =>
      __$$InventoryResponseImplCopyWithImpl<_$InventoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryResponseImplToJson(
      this,
    );
  }
}

abstract class _InventoryResponse implements InventoryResponse {
  const factory _InventoryResponse(
      {required final bool success,
      required final String message,
      required final InventoryResult result}) = _$InventoryResponseImpl;

  factory _InventoryResponse.fromJson(Map<String, dynamic> json) =
      _$InventoryResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  InventoryResult get result;

  /// Create a copy of InventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryResponseImplCopyWith<_$InventoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryResult _$InventoryResultFromJson(Map<String, dynamic> json) {
  return _InventoryResult.fromJson(json);
}

/// @nodoc
mixin _$InventoryResult {
  int get totalCount => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Inventory> get data => throw _privateConstructorUsedError;

  /// Serializes this InventoryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryResultCopyWith<InventoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryResultCopyWith<$Res> {
  factory $InventoryResultCopyWith(
          InventoryResult value, $Res Function(InventoryResult) then) =
      _$InventoryResultCopyWithImpl<$Res, InventoryResult>;
  @useResult
  $Res call({int totalCount, int totalPages, List<Inventory> data});
}

/// @nodoc
class _$InventoryResultCopyWithImpl<$Res, $Val extends InventoryResult>
    implements $InventoryResultCopyWith<$Res> {
  _$InventoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryResult
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
              as List<Inventory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryResultImplCopyWith<$Res>
    implements $InventoryResultCopyWith<$Res> {
  factory _$$InventoryResultImplCopyWith(_$InventoryResultImpl value,
          $Res Function(_$InventoryResultImpl) then) =
      __$$InventoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, int totalPages, List<Inventory> data});
}

/// @nodoc
class __$$InventoryResultImplCopyWithImpl<$Res>
    extends _$InventoryResultCopyWithImpl<$Res, _$InventoryResultImpl>
    implements _$$InventoryResultImplCopyWith<$Res> {
  __$$InventoryResultImplCopyWithImpl(
      _$InventoryResultImpl _value, $Res Function(_$InventoryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? data = null,
  }) {
    return _then(_$InventoryResultImpl(
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
              as List<Inventory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryResultImpl implements _InventoryResult {
  const _$InventoryResultImpl(
      {required this.totalCount,
      required this.totalPages,
      required final List<Inventory> data})
      : _data = data;

  factory _$InventoryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryResultImplFromJson(json);

  @override
  final int totalCount;
  @override
  final int totalPages;
  final List<Inventory> _data;
  @override
  List<Inventory> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'InventoryResult(totalCount: $totalCount, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryResultImpl &&
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

  /// Create a copy of InventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryResultImplCopyWith<_$InventoryResultImpl> get copyWith =>
      __$$InventoryResultImplCopyWithImpl<_$InventoryResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryResultImplToJson(
      this,
    );
  }
}

abstract class _InventoryResult implements InventoryResult {
  const factory _InventoryResult(
      {required final int totalCount,
      required final int totalPages,
      required final List<Inventory> data}) = _$InventoryResultImpl;

  factory _InventoryResult.fromJson(Map<String, dynamic> json) =
      _$InventoryResultImpl.fromJson;

  @override
  int get totalCount;
  @override
  int get totalPages;
  @override
  List<Inventory> get data;

  /// Create a copy of InventoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryResultImplCopyWith<_$InventoryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Inventory _$InventoryFromJson(Map<String, dynamic> json) {
  return _Inventory.fromJson(json);
}

/// @nodoc
mixin _$Inventory {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_kandang')
  String get idKandang => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  String get jenis => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<InventoryImage> get images => throw _privateConstructorUsedError;

  /// Serializes this Inventory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res, Inventory>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'id_kandang') String idKandang,
      String name,
      int stock,
      String jenis,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      List<InventoryImage> images});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res, $Val extends Inventory>
    implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idKandang = null,
    Object? name = null,
    Object? stock = null,
    Object? jenis = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idKandang: null == idKandang
          ? _value.idKandang
          : idKandang // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<InventoryImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryImplCopyWith<$Res>
    implements $InventoryCopyWith<$Res> {
  factory _$$InventoryImplCopyWith(
          _$InventoryImpl value, $Res Function(_$InventoryImpl) then) =
      __$$InventoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'id_kandang') String idKandang,
      String name,
      int stock,
      String jenis,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      List<InventoryImage> images});
}

/// @nodoc
class __$$InventoryImplCopyWithImpl<$Res>
    extends _$InventoryCopyWithImpl<$Res, _$InventoryImpl>
    implements _$$InventoryImplCopyWith<$Res> {
  __$$InventoryImplCopyWithImpl(
      _$InventoryImpl _value, $Res Function(_$InventoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idKandang = null,
    Object? name = null,
    Object? stock = null,
    Object? jenis = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
  }) {
    return _then(_$InventoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idKandang: null == idKandang
          ? _value.idKandang
          : idKandang // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
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
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<InventoryImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryImpl implements _Inventory {
  const _$InventoryImpl(
      {required this.id,
      @JsonKey(name: 'id_kandang') required this.idKandang,
      required this.name,
      required this.stock,
      required this.jenis,
      required this.isDeleted,
      required this.createdAt,
      required this.updatedAt,
      required final List<InventoryImage> images})
      : _images = images;

  factory _$InventoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'id_kandang')
  final String idKandang;
  @override
  final String name;
  @override
  final int stock;
  @override
  final String jenis;
  @override
  final bool isDeleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<InventoryImage> _images;
  @override
  List<InventoryImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Inventory(id: $id, idKandang: $idKandang, name: $name, stock: $stock, jenis: $jenis, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idKandang, idKandang) ||
                other.idKandang == idKandang) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
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
      idKandang,
      name,
      stock,
      jenis,
      isDeleted,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryImplCopyWith<_$InventoryImpl> get copyWith =>
      __$$InventoryImplCopyWithImpl<_$InventoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryImplToJson(
      this,
    );
  }
}

abstract class _Inventory implements Inventory {
  const factory _Inventory(
      {required final String id,
      @JsonKey(name: 'id_kandang') required final String idKandang,
      required final String name,
      required final int stock,
      required final String jenis,
      required final bool isDeleted,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<InventoryImage> images}) = _$InventoryImpl;

  factory _Inventory.fromJson(Map<String, dynamic> json) =
      _$InventoryImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'id_kandang')
  String get idKandang;
  @override
  String get name;
  @override
  int get stock;
  @override
  String get jenis;
  @override
  bool get isDeleted;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<InventoryImage> get images;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryImplCopyWith<_$InventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryImage _$InventoryImageFromJson(Map<String, dynamic> json) {
  return _InventoryImage.fromJson(json);
}

/// @nodoc
mixin _$InventoryImage {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this InventoryImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryImageCopyWith<InventoryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryImageCopyWith<$Res> {
  factory $InventoryImageCopyWith(
          InventoryImage value, $Res Function(InventoryImage) then) =
      _$InventoryImageCopyWithImpl<$Res, InventoryImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$InventoryImageCopyWithImpl<$Res, $Val extends InventoryImage>
    implements $InventoryImageCopyWith<$Res> {
  _$InventoryImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryImage
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
abstract class _$$InventoryImageImplCopyWith<$Res>
    implements $InventoryImageCopyWith<$Res> {
  factory _$$InventoryImageImplCopyWith(_$InventoryImageImpl value,
          $Res Function(_$InventoryImageImpl) then) =
      __$$InventoryImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$InventoryImageImplCopyWithImpl<$Res>
    extends _$InventoryImageCopyWithImpl<$Res, _$InventoryImageImpl>
    implements _$$InventoryImageImplCopyWith<$Res> {
  __$$InventoryImageImplCopyWithImpl(
      _$InventoryImageImpl _value, $Res Function(_$InventoryImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$InventoryImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryImageImpl implements _InventoryImage {
  const _$InventoryImageImpl({required this.url});

  factory _$InventoryImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'InventoryImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of InventoryImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryImageImplCopyWith<_$InventoryImageImpl> get copyWith =>
      __$$InventoryImageImplCopyWithImpl<_$InventoryImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryImageImplToJson(
      this,
    );
  }
}

abstract class _InventoryImage implements InventoryImage {
  const factory _InventoryImage({required final String url}) =
      _$InventoryImageImpl;

  factory _InventoryImage.fromJson(Map<String, dynamic> json) =
      _$InventoryImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of InventoryImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryImageImplCopyWith<_$InventoryImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
