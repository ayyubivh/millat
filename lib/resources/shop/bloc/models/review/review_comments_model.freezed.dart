// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewCommentsModel _$ReviewCommentsModelFromJson(Map<String, dynamic> json) {
  return _ReviewCommentsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewCommentsModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCommentsModelCopyWith<ReviewCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCommentsModelCopyWith<$Res> {
  factory $ReviewCommentsModelCopyWith(
          ReviewCommentsModel value, $Res Function(ReviewCommentsModel) then) =
      _$ReviewCommentsModelCopyWithImpl<$Res, ReviewCommentsModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ReviewCommentsModelCopyWithImpl<$Res, $Val extends ReviewCommentsModel>
    implements $ReviewCommentsModelCopyWith<$Res> {
  _$ReviewCommentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewCommentsModelImplCopyWith<$Res>
    implements $ReviewCommentsModelCopyWith<$Res> {
  factory _$$ReviewCommentsModelImplCopyWith(_$ReviewCommentsModelImpl value,
          $Res Function(_$ReviewCommentsModelImpl) then) =
      __$$ReviewCommentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ReviewCommentsModelImplCopyWithImpl<$Res>
    extends _$ReviewCommentsModelCopyWithImpl<$Res, _$ReviewCommentsModelImpl>
    implements _$$ReviewCommentsModelImplCopyWith<$Res> {
  __$$ReviewCommentsModelImplCopyWithImpl(_$ReviewCommentsModelImpl _value,
      $Res Function(_$ReviewCommentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ReviewCommentsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewCommentsModelImpl implements _ReviewCommentsModel {
  _$ReviewCommentsModelImpl(
      {this.status, this.message, this.error, this.result});

  factory _$ReviewCommentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewCommentsModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ReviewCommentsModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCommentsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewCommentsModelImplCopyWith<_$ReviewCommentsModelImpl> get copyWith =>
      __$$ReviewCommentsModelImplCopyWithImpl<_$ReviewCommentsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewCommentsModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewCommentsModel implements ReviewCommentsModel {
  factory _ReviewCommentsModel(
      {final int? status,
      final String? message,
      final String? error,
      final Result? result}) = _$ReviewCommentsModelImpl;

  factory _ReviewCommentsModel.fromJson(Map<String, dynamic> json) =
      _$ReviewCommentsModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$ReviewCommentsModelImplCopyWith<_$ReviewCommentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  _$ResultImpl({this.data});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result({final Data? data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'ratingStats')
  List<RatingStats>? get ratingStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewComments')
  List<ReviewComment>? get reviewComments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ratingStats') List<RatingStats>? ratingStats,
      @JsonKey(name: 'reviewComments') List<ReviewComment>? reviewComments});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingStats = freezed,
    Object? reviewComments = freezed,
  }) {
    return _then(_value.copyWith(
      ratingStats: freezed == ratingStats
          ? _value.ratingStats
          : ratingStats // ignore: cast_nullable_to_non_nullable
              as List<RatingStats>?,
      reviewComments: freezed == reviewComments
          ? _value.reviewComments
          : reviewComments // ignore: cast_nullable_to_non_nullable
              as List<ReviewComment>?,
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
      {@JsonKey(name: 'ratingStats') List<RatingStats>? ratingStats,
      @JsonKey(name: 'reviewComments') List<ReviewComment>? reviewComments});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingStats = freezed,
    Object? reviewComments = freezed,
  }) {
    return _then(_$DataImpl(
      ratingStats: freezed == ratingStats
          ? _value._ratingStats
          : ratingStats // ignore: cast_nullable_to_non_nullable
              as List<RatingStats>?,
      reviewComments: freezed == reviewComments
          ? _value._reviewComments
          : reviewComments // ignore: cast_nullable_to_non_nullable
              as List<ReviewComment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: 'ratingStats') final List<RatingStats>? ratingStats,
      @JsonKey(name: 'reviewComments')
      final List<ReviewComment>? reviewComments})
      : _ratingStats = ratingStats,
        _reviewComments = reviewComments;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<RatingStats>? _ratingStats;
  @override
  @JsonKey(name: 'ratingStats')
  List<RatingStats>? get ratingStats {
    final value = _ratingStats;
    if (value == null) return null;
    if (_ratingStats is EqualUnmodifiableListView) return _ratingStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReviewComment>? _reviewComments;
  @override
  @JsonKey(name: 'reviewComments')
  List<ReviewComment>? get reviewComments {
    final value = _reviewComments;
    if (value == null) return null;
    if (_reviewComments is EqualUnmodifiableListView) return _reviewComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(ratingStats: $ratingStats, reviewComments: $reviewComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._ratingStats, _ratingStats) &&
            const DeepCollectionEquality()
                .equals(other._reviewComments, _reviewComments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ratingStats),
      const DeepCollectionEquality().hash(_reviewComments));

  @JsonKey(ignore: true)
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
  factory _Data(
      {@JsonKey(name: 'ratingStats') final List<RatingStats>? ratingStats,
      @JsonKey(name: 'reviewComments')
      final List<ReviewComment>? reviewComments}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'ratingStats')
  List<RatingStats>? get ratingStats;
  @override
  @JsonKey(name: 'reviewComments')
  List<ReviewComment>? get reviewComments;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingStats _$RatingStatsFromJson(Map<String, dynamic> json) {
  return _RatingStats.fromJson(json);
}

/// @nodoc
mixin _$RatingStats {
  @JsonKey(name: '_id')
  double? get id => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingStatsCopyWith<RatingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingStatsCopyWith<$Res> {
  factory $RatingStatsCopyWith(
          RatingStats value, $Res Function(RatingStats) then) =
      _$RatingStatsCopyWithImpl<$Res, RatingStats>;
  @useResult
  $Res call({@JsonKey(name: '_id') double? id, int? count});
}

/// @nodoc
class _$RatingStatsCopyWithImpl<$Res, $Val extends RatingStats>
    implements $RatingStatsCopyWith<$Res> {
  _$RatingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingStatsImplCopyWith<$Res>
    implements $RatingStatsCopyWith<$Res> {
  factory _$$RatingStatsImplCopyWith(
          _$RatingStatsImpl value, $Res Function(_$RatingStatsImpl) then) =
      __$$RatingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') double? id, int? count});
}

/// @nodoc
class __$$RatingStatsImplCopyWithImpl<$Res>
    extends _$RatingStatsCopyWithImpl<$Res, _$RatingStatsImpl>
    implements _$$RatingStatsImplCopyWith<$Res> {
  __$$RatingStatsImplCopyWithImpl(
      _$RatingStatsImpl _value, $Res Function(_$RatingStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
  }) {
    return _then(_$RatingStatsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingStatsImpl implements _RatingStats {
  _$RatingStatsImpl({@JsonKey(name: '_id') this.id, this.count});

  factory _$RatingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingStatsImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final double? id;
  @override
  final int? count;

  @override
  String toString() {
    return 'RatingStats(id: $id, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingStatsImplCopyWith<_$RatingStatsImpl> get copyWith =>
      __$$RatingStatsImplCopyWithImpl<_$RatingStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingStatsImplToJson(
      this,
    );
  }
}

abstract class _RatingStats implements RatingStats {
  factory _RatingStats(
      {@JsonKey(name: '_id') final double? id,
      final int? count}) = _$RatingStatsImpl;

  factory _RatingStats.fromJson(Map<String, dynamic> json) =
      _$RatingStatsImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  double? get id;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$RatingStatsImplCopyWith<_$RatingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewComment _$ReviewCommentFromJson(Map<String, dynamic> json) {
  return _ReviewComment.fromJson(json);
}

/// @nodoc
mixin _$ReviewComment {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  String? get product => throw _privateConstructorUsedError;
  bool? get flagged => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCommentCopyWith<ReviewComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCommentCopyWith<$Res> {
  factory $ReviewCommentCopyWith(
          ReviewComment value, $Res Function(ReviewComment) then) =
      _$ReviewCommentCopyWithImpl<$Res, ReviewComment>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      double? rating,
      String? comment,
      UserId? userId,
      @JsonKey(name: 'productId') String? product,
      bool? flagged,
      String? date,
      String? createdAt,
      String? updatedAt});

  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class _$ReviewCommentCopyWithImpl<$Res, $Val extends ReviewComment>
    implements $ReviewCommentCopyWith<$Res> {
  _$ReviewCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? comment = freezed,
    Object? userId = freezed,
    Object? product = freezed,
    Object? flagged = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      flagged: freezed == flagged
          ? _value.flagged
          : flagged // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $UserIdCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewCommentImplCopyWith<$Res>
    implements $ReviewCommentCopyWith<$Res> {
  factory _$$ReviewCommentImplCopyWith(
          _$ReviewCommentImpl value, $Res Function(_$ReviewCommentImpl) then) =
      __$$ReviewCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      double? rating,
      String? comment,
      UserId? userId,
      @JsonKey(name: 'productId') String? product,
      bool? flagged,
      String? date,
      String? createdAt,
      String? updatedAt});

  @override
  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class __$$ReviewCommentImplCopyWithImpl<$Res>
    extends _$ReviewCommentCopyWithImpl<$Res, _$ReviewCommentImpl>
    implements _$$ReviewCommentImplCopyWith<$Res> {
  __$$ReviewCommentImplCopyWithImpl(
      _$ReviewCommentImpl _value, $Res Function(_$ReviewCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? comment = freezed,
    Object? userId = freezed,
    Object? product = freezed,
    Object? flagged = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReviewCommentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      flagged: freezed == flagged
          ? _value.flagged
          : flagged // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewCommentImpl implements _ReviewComment {
  _$ReviewCommentImpl(
      {@JsonKey(name: '_id') this.id,
      this.name,
      this.rating,
      this.comment,
      this.userId,
      @JsonKey(name: 'productId') this.product,
      this.flagged,
      this.date,
      this.createdAt,
      this.updatedAt});

  factory _$ReviewCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewCommentImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? name;
  @override
  final double? rating;
  @override
  final String? comment;
  @override
  final UserId? userId;
  @override
  @JsonKey(name: 'productId')
  final String? product;
  @override
  final bool? flagged;
  @override
  final String? date;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ReviewComment(id: $id, name: $name, rating: $rating, comment: $comment, userId: $userId, product: $product, flagged: $flagged, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.flagged, flagged) || other.flagged == flagged) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, rating, comment,
      userId, product, flagged, date, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewCommentImplCopyWith<_$ReviewCommentImpl> get copyWith =>
      __$$ReviewCommentImplCopyWithImpl<_$ReviewCommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewCommentImplToJson(
      this,
    );
  }
}

abstract class _ReviewComment implements ReviewComment {
  factory _ReviewComment(
      {@JsonKey(name: '_id') final String? id,
      final String? name,
      final double? rating,
      final String? comment,
      final UserId? userId,
      @JsonKey(name: 'productId') final String? product,
      final bool? flagged,
      final String? date,
      final String? createdAt,
      final String? updatedAt}) = _$ReviewCommentImpl;

  factory _ReviewComment.fromJson(Map<String, dynamic> json) =
      _$ReviewCommentImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get name;
  @override
  double? get rating;
  @override
  String? get comment;
  @override
  UserId? get userId;
  @override
  @JsonKey(name: 'productId')
  String? get product;
  @override
  bool? get flagged;
  @override
  String? get date;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReviewCommentImplCopyWith<_$ReviewCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'DOB')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get institution => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdCopyWith<UserId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdCopyWith<$Res> {
  factory $UserIdCopyWith(UserId value, $Res Function(UserId) then) =
      _$UserIdCopyWithImpl<$Res, UserId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? username,
      String? email,
      String? password,
      @JsonKey(name: 'createdAt') String? createdDate,
      @JsonKey(name: 'updatedAt') String? updatedDate,
      @JsonKey(name: 'DOB') String? dateOfBirth,
      String? institution,
      String? picture,
      String? profession,
      String? uuid});
}

/// @nodoc
class _$UserIdCopyWithImpl<$Res, $Val extends UserId>
    implements $UserIdCopyWith<$Res> {
  _$UserIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? dateOfBirth = freezed,
    Object? institution = freezed,
    Object? picture = freezed,
    Object? profession = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIdImplCopyWith<$Res> implements $UserIdCopyWith<$Res> {
  factory _$$UserIdImplCopyWith(
          _$UserIdImpl value, $Res Function(_$UserIdImpl) then) =
      __$$UserIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? username,
      String? email,
      String? password,
      @JsonKey(name: 'createdAt') String? createdDate,
      @JsonKey(name: 'updatedAt') String? updatedDate,
      @JsonKey(name: 'DOB') String? dateOfBirth,
      String? institution,
      String? picture,
      String? profession,
      String? uuid});
}

/// @nodoc
class __$$UserIdImplCopyWithImpl<$Res>
    extends _$UserIdCopyWithImpl<$Res, _$UserIdImpl>
    implements _$$UserIdImplCopyWith<$Res> {
  __$$UserIdImplCopyWithImpl(
      _$UserIdImpl _value, $Res Function(_$UserIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? dateOfBirth = freezed,
    Object? institution = freezed,
    Object? picture = freezed,
    Object? profession = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$UserIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  _$UserIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.name,
      this.username,
      this.email,
      this.password,
      @JsonKey(name: 'createdAt') this.createdDate,
      @JsonKey(name: 'updatedAt') this.updatedDate,
      @JsonKey(name: 'DOB') this.dateOfBirth,
      this.institution,
      this.picture,
      this.profession,
      this.uuid});

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdDate;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedDate;
  @override
  @JsonKey(name: 'DOB')
  final String? dateOfBirth;
  @override
  final String? institution;
  @override
  final String? picture;
  @override
  final String? profession;
  @override
  final String? uuid;

  @override
  String toString() {
    return 'UserId(id: $id, name: $name, username: $username, email: $email, password: $password, createdDate: $createdDate, updatedDate: $updatedDate, dateOfBirth: $dateOfBirth, institution: $institution, picture: $picture, profession: $profession, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      email,
      password,
      createdDate,
      updatedDate,
      dateOfBirth,
      institution,
      picture,
      profession,
      uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      __$$UserIdImplCopyWithImpl<_$UserIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdImplToJson(
      this,
    );
  }
}

abstract class _UserId implements UserId {
  factory _UserId(
      {@JsonKey(name: '_id') final String? id,
      final String? name,
      final String? username,
      final String? email,
      final String? password,
      @JsonKey(name: 'createdAt') final String? createdDate,
      @JsonKey(name: 'updatedAt') final String? updatedDate,
      @JsonKey(name: 'DOB') final String? dateOfBirth,
      final String? institution,
      final String? picture,
      final String? profession,
      final String? uuid}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdDate;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedDate;
  @override
  @JsonKey(name: 'DOB')
  String? get dateOfBirth;
  @override
  String? get institution;
  @override
  String? get picture;
  @override
  String? get profession;
  @override
  String? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
