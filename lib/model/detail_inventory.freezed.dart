// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailInventoryResponse _$DetailInventoryResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailInventoryResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailInventoryResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DetailInventory get data => throw _privateConstructorUsedError;

  /// Serializes this DetailInventoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInventoryResponseCopyWith<DetailInventoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInventoryResponseCopyWith<$Res> {
  factory $DetailInventoryResponseCopyWith(DetailInventoryResponse value,
          $Res Function(DetailInventoryResponse) then) =
      _$DetailInventoryResponseCopyWithImpl<$Res, DetailInventoryResponse>;
  @useResult
  $Res call({bool success, String message, DetailInventory data});

  $DetailInventoryCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailInventoryResponseCopyWithImpl<$Res,
        $Val extends DetailInventoryResponse>
    implements $DetailInventoryResponseCopyWith<$Res> {
  _$DetailInventoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInventoryResponse
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
              as DetailInventory,
    ) as $Val);
  }

  /// Create a copy of DetailInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailInventoryCopyWith<$Res> get data {
    return $DetailInventoryCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailInventoryResponseImplCopyWith<$Res>
    implements $DetailInventoryResponseCopyWith<$Res> {
  factory _$$DetailInventoryResponseImplCopyWith(
          _$DetailInventoryResponseImpl value,
          $Res Function(_$DetailInventoryResponseImpl) then) =
      __$$DetailInventoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, DetailInventory data});

  @override
  $DetailInventoryCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailInventoryResponseImplCopyWithImpl<$Res>
    extends _$DetailInventoryResponseCopyWithImpl<$Res,
        _$DetailInventoryResponseImpl>
    implements _$$DetailInventoryResponseImplCopyWith<$Res> {
  __$$DetailInventoryResponseImplCopyWithImpl(
      _$DetailInventoryResponseImpl _value,
      $Res Function(_$DetailInventoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$DetailInventoryResponseImpl(
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
              as DetailInventory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailInventoryResponseImpl implements _DetailInventoryResponse {
  const _$DetailInventoryResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$DetailInventoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInventoryResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final DetailInventory data;

  @override
  String toString() {
    return 'DetailInventoryResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInventoryResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of DetailInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInventoryResponseImplCopyWith<_$DetailInventoryResponseImpl>
      get copyWith => __$$DetailInventoryResponseImplCopyWithImpl<
          _$DetailInventoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInventoryResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailInventoryResponse implements DetailInventoryResponse {
  const factory _DetailInventoryResponse(
      {required final bool success,
      required final String message,
      required final DetailInventory data}) = _$DetailInventoryResponseImpl;

  factory _DetailInventoryResponse.fromJson(Map<String, dynamic> json) =
      _$DetailInventoryResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  DetailInventory get data;

  /// Create a copy of DetailInventoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInventoryResponseImplCopyWith<_$DetailInventoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailInventory _$DetailInventoryFromJson(Map<String, dynamic> json) {
  return _DetailInventory.fromJson(json);
}

/// @nodoc
mixin _$DetailInventory {
  String get id => throw _privateConstructorUsedError;
  String get idKandang => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  String get jenis => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<InventoryImage> get images => throw _privateConstructorUsedError;

  /// Serializes this DetailInventory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailInventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailInventoryCopyWith<DetailInventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInventoryCopyWith<$Res> {
  factory $DetailInventoryCopyWith(
          DetailInventory value, $Res Function(DetailInventory) then) =
      _$DetailInventoryCopyWithImpl<$Res, DetailInventory>;
  @useResult
  $Res call(
      {String id,
      String idKandang,
      String name,
      int stock,
      String jenis,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      List<InventoryImage> images});
}

/// @nodoc
class _$DetailInventoryCopyWithImpl<$Res, $Val extends DetailInventory>
    implements $DetailInventoryCopyWith<$Res> {
  _$DetailInventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailInventory
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
abstract class _$$DetailInventoryImplCopyWith<$Res>
    implements $DetailInventoryCopyWith<$Res> {
  factory _$$DetailInventoryImplCopyWith(_$DetailInventoryImpl value,
          $Res Function(_$DetailInventoryImpl) then) =
      __$$DetailInventoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String idKandang,
      String name,
      int stock,
      String jenis,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      List<InventoryImage> images});
}

/// @nodoc
class __$$DetailInventoryImplCopyWithImpl<$Res>
    extends _$DetailInventoryCopyWithImpl<$Res, _$DetailInventoryImpl>
    implements _$$DetailInventoryImplCopyWith<$Res> {
  __$$DetailInventoryImplCopyWithImpl(
      _$DetailInventoryImpl _value, $Res Function(_$DetailInventoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailInventory
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
    return _then(_$DetailInventoryImpl(
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
class _$DetailInventoryImpl implements _DetailInventory {
  const _$DetailInventoryImpl(
      {required this.id,
      required this.idKandang,
      required this.name,
      required this.stock,
      required this.jenis,
      required this.isDeleted,
      required this.createdAt,
      required this.updatedAt,
      required final List<InventoryImage> images})
      : _images = images;

  factory _$DetailInventoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailInventoryImplFromJson(json);

  @override
  final String id;
  @override
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
    return 'DetailInventory(id: $id, idKandang: $idKandang, name: $name, stock: $stock, jenis: $jenis, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInventoryImpl &&
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

  /// Create a copy of DetailInventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInventoryImplCopyWith<_$DetailInventoryImpl> get copyWith =>
      __$$DetailInventoryImplCopyWithImpl<_$DetailInventoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailInventoryImplToJson(
      this,
    );
  }
}

abstract class _DetailInventory implements DetailInventory {
  const factory _DetailInventory(
      {required final String id,
      required final String idKandang,
      required final String name,
      required final int stock,
      required final String jenis,
      required final bool isDeleted,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<InventoryImage> images}) = _$DetailInventoryImpl;

  factory _DetailInventory.fromJson(Map<String, dynamic> json) =
      _$DetailInventoryImpl.fromJson;

  @override
  String get id;
  @override
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

  /// Create a copy of DetailInventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInventoryImplCopyWith<_$DetailInventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryImage _$InventoryImageFromJson(Map<String, dynamic> json) {
  return _InventoryImage.fromJson(json);
}

/// @nodoc
mixin _$InventoryImage {
  String get id => throw _privateConstructorUsedError;
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
  $Res call({String id, String url});
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
abstract class _$$InventoryImageImplCopyWith<$Res>
    implements $InventoryImageCopyWith<$Res> {
  factory _$$InventoryImageImplCopyWith(_$InventoryImageImpl value,
          $Res Function(_$InventoryImageImpl) then) =
      __$$InventoryImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
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
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$InventoryImageImpl(
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
class _$InventoryImageImpl implements _InventoryImage {
  const _$InventoryImageImpl({required this.id, required this.url});

  factory _$InventoryImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryImageImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'InventoryImage(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

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
  const factory _InventoryImage(
      {required final String id,
      required final String url}) = _$InventoryImageImpl;

  factory _InventoryImage.fromJson(Map<String, dynamic> json) =
      _$InventoryImageImpl.fromJson;

  @override
  String get id;
  @override
  String get url;

  /// Create a copy of InventoryImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryImageImplCopyWith<_$InventoryImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
