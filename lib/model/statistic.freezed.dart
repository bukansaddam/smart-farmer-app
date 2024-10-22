// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatisticResponse _$StatisticResponseFromJson(Map<String, dynamic> json) {
  return _StatisticResponse.fromJson(json);
}

/// @nodoc
mixin _$StatisticResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StatisticResult get result => throw _privateConstructorUsedError;

  /// Serializes this StatisticResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticResponseCopyWith<StatisticResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticResponseCopyWith<$Res> {
  factory $StatisticResponseCopyWith(
          StatisticResponse value, $Res Function(StatisticResponse) then) =
      _$StatisticResponseCopyWithImpl<$Res, StatisticResponse>;
  @useResult
  $Res call({bool success, String message, StatisticResult result});

  $StatisticResultCopyWith<$Res> get result;
}

/// @nodoc
class _$StatisticResponseCopyWithImpl<$Res, $Val extends StatisticResponse>
    implements $StatisticResponseCopyWith<$Res> {
  _$StatisticResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticResponse
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
              as StatisticResult,
    ) as $Val);
  }

  /// Create a copy of StatisticResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticResultCopyWith<$Res> get result {
    return $StatisticResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticResponseImplCopyWith<$Res>
    implements $StatisticResponseCopyWith<$Res> {
  factory _$$StatisticResponseImplCopyWith(_$StatisticResponseImpl value,
          $Res Function(_$StatisticResponseImpl) then) =
      __$$StatisticResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, StatisticResult result});

  @override
  $StatisticResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$StatisticResponseImplCopyWithImpl<$Res>
    extends _$StatisticResponseCopyWithImpl<$Res, _$StatisticResponseImpl>
    implements _$$StatisticResponseImplCopyWith<$Res> {
  __$$StatisticResponseImplCopyWithImpl(_$StatisticResponseImpl _value,
      $Res Function(_$StatisticResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? result = null,
  }) {
    return _then(_$StatisticResponseImpl(
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
              as StatisticResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticResponseImpl implements _StatisticResponse {
  const _$StatisticResponseImpl(
      {required this.success, required this.message, required this.result});

  factory _$StatisticResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final StatisticResult result;

  @override
  String toString() {
    return 'StatisticResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of StatisticResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticResponseImplCopyWith<_$StatisticResponseImpl> get copyWith =>
      __$$StatisticResponseImplCopyWithImpl<_$StatisticResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticResponseImplToJson(
      this,
    );
  }
}

abstract class _StatisticResponse implements StatisticResponse {
  const factory _StatisticResponse(
      {required final bool success,
      required final String message,
      required final StatisticResult result}) = _$StatisticResponseImpl;

  factory _StatisticResponse.fromJson(Map<String, dynamic> json) =
      _$StatisticResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  StatisticResult get result;

  /// Create a copy of StatisticResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticResponseImplCopyWith<_$StatisticResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticResult _$StatisticResultFromJson(Map<String, dynamic> json) {
  return _StatisticResult.fromJson(json);
}

/// @nodoc
mixin _$StatisticResult {
  int get totalCount => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Graph> get graph => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;

  /// Serializes this StatisticResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticResultCopyWith<StatisticResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticResultCopyWith<$Res> {
  factory $StatisticResultCopyWith(
          StatisticResult value, $Res Function(StatisticResult) then) =
      _$StatisticResultCopyWithImpl<$Res, StatisticResult>;
  @useResult
  $Res call(
      {int totalCount, int totalPages, List<Graph> graph, List<Data> data});
}

/// @nodoc
class _$StatisticResultCopyWithImpl<$Res, $Val extends StatisticResult>
    implements $StatisticResultCopyWith<$Res> {
  _$StatisticResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? graph = null,
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
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as List<Graph>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticResultImplCopyWith<$Res>
    implements $StatisticResultCopyWith<$Res> {
  factory _$$StatisticResultImplCopyWith(_$StatisticResultImpl value,
          $Res Function(_$StatisticResultImpl) then) =
      __$$StatisticResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCount, int totalPages, List<Graph> graph, List<Data> data});
}

/// @nodoc
class __$$StatisticResultImplCopyWithImpl<$Res>
    extends _$StatisticResultCopyWithImpl<$Res, _$StatisticResultImpl>
    implements _$$StatisticResultImplCopyWith<$Res> {
  __$$StatisticResultImplCopyWithImpl(
      _$StatisticResultImpl _value, $Res Function(_$StatisticResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? totalPages = null,
    Object? graph = null,
    Object? data = null,
  }) {
    return _then(_$StatisticResultImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      graph: null == graph
          ? _value._graph
          : graph // ignore: cast_nullable_to_non_nullable
              as List<Graph>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticResultImpl implements _StatisticResult {
  const _$StatisticResultImpl(
      {required this.totalCount,
      required this.totalPages,
      required final List<Graph> graph,
      required final List<Data> data})
      : _graph = graph,
        _data = data;

  factory _$StatisticResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticResultImplFromJson(json);

  @override
  final int totalCount;
  @override
  final int totalPages;
  final List<Graph> _graph;
  @override
  List<Graph> get graph {
    if (_graph is EqualUnmodifiableListView) return _graph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_graph);
  }

  final List<Data> _data;
  @override
  List<Data> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'StatisticResult(totalCount: $totalCount, totalPages: $totalPages, graph: $graph, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticResultImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._graph, _graph) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalCount,
      totalPages,
      const DeepCollectionEquality().hash(_graph),
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of StatisticResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticResultImplCopyWith<_$StatisticResultImpl> get copyWith =>
      __$$StatisticResultImplCopyWithImpl<_$StatisticResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticResultImplToJson(
      this,
    );
  }
}

abstract class _StatisticResult implements StatisticResult {
  const factory _StatisticResult(
      {required final int totalCount,
      required final int totalPages,
      required final List<Graph> graph,
      required final List<Data> data}) = _$StatisticResultImpl;

  factory _StatisticResult.fromJson(Map<String, dynamic> json) =
      _$StatisticResultImpl.fromJson;

  @override
  int get totalCount;
  @override
  int get totalPages;
  @override
  List<Graph> get graph;
  @override
  List<Data> get data;

  /// Create a copy of StatisticResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticResultImplCopyWith<_$StatisticResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get id => throw _privateConstructorUsedError;
  String get jenis => throw _privateConstructorUsedError;
  String get kandang => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  DateTime get tanggal => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String id,
      String jenis,
      String kandang,
      String deskripsi,
      int total,
      DateTime tanggal,
      String user});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenis = null,
    Object? kandang = null,
    Object? deskripsi = null,
    Object? total = null,
    Object? tanggal = null,
    Object? user = null,
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
      kandang: null == kandang
          ? _value.kandang
          : kandang // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String jenis,
      String kandang,
      String deskripsi,
      int total,
      DateTime tanggal,
      String user});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenis = null,
    Object? kandang = null,
    Object? deskripsi = null,
    Object? total = null,
    Object? tanggal = null,
    Object? user = null,
  }) {
    return _then(_$DataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      kandang: null == kandang
          ? _value.kandang
          : kandang // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.id,
      required this.jenis,
      required this.kandang,
      required this.deskripsi,
      required this.total,
      required this.tanggal,
      required this.user});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String id;
  @override
  final String jenis;
  @override
  final String kandang;
  @override
  final String deskripsi;
  @override
  final int total;
  @override
  final DateTime tanggal;
  @override
  final String user;

  @override
  String toString() {
    return 'Data(id: $id, jenis: $jenis, kandang: $kandang, deskripsi: $deskripsi, total: $total, tanggal: $tanggal, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.kandang, kandang) || other.kandang == kandang) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, jenis, kandang, deskripsi, total, tanggal, user);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String id,
      required final String jenis,
      required final String kandang,
      required final String deskripsi,
      required final int total,
      required final DateTime tanggal,
      required final String user}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String get id;
  @override
  String get jenis;
  @override
  String get kandang;
  @override
  String get deskripsi;
  @override
  int get total;
  @override
  DateTime get tanggal;
  @override
  String get user;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Graph _$GraphFromJson(Map<String, dynamic> json) {
  return _Graph.fromJson(json);
}

/// @nodoc
mixin _$Graph {
  String get date => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this Graph to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Graph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GraphCopyWith<Graph> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphCopyWith<$Res> {
  factory $GraphCopyWith(Graph value, $Res Function(Graph) then) =
      _$GraphCopyWithImpl<$Res, Graph>;
  @useResult
  $Res call({String date, int count});
}

/// @nodoc
class _$GraphCopyWithImpl<$Res, $Val extends Graph>
    implements $GraphCopyWith<$Res> {
  _$GraphCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Graph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphImplCopyWith<$Res> implements $GraphCopyWith<$Res> {
  factory _$$GraphImplCopyWith(
          _$GraphImpl value, $Res Function(_$GraphImpl) then) =
      __$$GraphImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int count});
}

/// @nodoc
class __$$GraphImplCopyWithImpl<$Res>
    extends _$GraphCopyWithImpl<$Res, _$GraphImpl>
    implements _$$GraphImplCopyWith<$Res> {
  __$$GraphImplCopyWithImpl(
      _$GraphImpl _value, $Res Function(_$GraphImpl) _then)
      : super(_value, _then);

  /// Create a copy of Graph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? count = null,
  }) {
    return _then(_$GraphImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GraphImpl implements _Graph {
  const _$GraphImpl({required this.date, required this.count});

  factory _$GraphImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraphImplFromJson(json);

  @override
  final String date;
  @override
  final int count;

  @override
  String toString() {
    return 'Graph(date: $date, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, count);

  /// Create a copy of Graph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphImplCopyWith<_$GraphImpl> get copyWith =>
      __$$GraphImplCopyWithImpl<_$GraphImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraphImplToJson(
      this,
    );
  }
}

abstract class _Graph implements Graph {
  const factory _Graph({required final String date, required final int count}) =
      _$GraphImpl;

  factory _Graph.fromJson(Map<String, dynamic> json) = _$GraphImpl.fromJson;

  @override
  String get date;
  @override
  int get count;

  /// Create a copy of Graph
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphImplCopyWith<_$GraphImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
