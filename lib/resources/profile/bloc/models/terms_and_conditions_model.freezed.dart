// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_and_conditions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsConditionsModel _$TermsConditionsModelFromJson(Map<String, dynamic> json) {
  return _TermsConditionsModel.fromJson(json);
}

/// @nodoc
mixin _$TermsConditionsModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  TermsConditionsResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsConditionsModelCopyWith<TermsConditionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsConditionsModelCopyWith<$Res> {
  factory $TermsConditionsModelCopyWith(TermsConditionsModel value,
          $Res Function(TermsConditionsModel) then) =
      _$TermsConditionsModelCopyWithImpl<$Res, TermsConditionsModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? error,
      TermsConditionsResult result});

  $TermsConditionsResultCopyWith<$Res> get result;
}

/// @nodoc
class _$TermsConditionsModelCopyWithImpl<$Res,
        $Val extends TermsConditionsModel>
    implements $TermsConditionsModelCopyWith<$Res> {
  _$TermsConditionsModelCopyWithImpl(this._value, this._then);

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
    Object? result = null,
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
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TermsConditionsResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TermsConditionsResultCopyWith<$Res> get result {
    return $TermsConditionsResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TermsConditionsModelCopyWith<$Res>
    implements $TermsConditionsModelCopyWith<$Res> {
  factory _$$_TermsConditionsModelCopyWith(_$_TermsConditionsModel value,
          $Res Function(_$_TermsConditionsModel) then) =
      __$$_TermsConditionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? error,
      TermsConditionsResult result});

  @override
  $TermsConditionsResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_TermsConditionsModelCopyWithImpl<$Res>
    extends _$TermsConditionsModelCopyWithImpl<$Res, _$_TermsConditionsModel>
    implements _$$_TermsConditionsModelCopyWith<$Res> {
  __$$_TermsConditionsModelCopyWithImpl(_$_TermsConditionsModel _value,
      $Res Function(_$_TermsConditionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$_TermsConditionsModel(
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
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TermsConditionsResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsConditionsModel implements _TermsConditionsModel {
  _$_TermsConditionsModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_TermsConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TermsConditionsModelFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final TermsConditionsResult result;

  @override
  String toString() {
    return 'TermsConditionsModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsConditionsModel &&
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
  _$$_TermsConditionsModelCopyWith<_$_TermsConditionsModel> get copyWith =>
      __$$_TermsConditionsModelCopyWithImpl<_$_TermsConditionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsConditionsModelToJson(
      this,
    );
  }
}

abstract class _TermsConditionsModel implements TermsConditionsModel {
  factory _TermsConditionsModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final TermsConditionsResult result}) = _$_TermsConditionsModel;

  factory _TermsConditionsModel.fromJson(Map<String, dynamic> json) =
      _$_TermsConditionsModel.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  TermsConditionsResult get result;
  @override
  @JsonKey(ignore: true)
  _$$_TermsConditionsModelCopyWith<_$_TermsConditionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TermsConditionsResult _$TermsConditionsResultFromJson(
    Map<String, dynamic> json) {
  return _TermsConditionsResult.fromJson(json);
}

/// @nodoc
mixin _$TermsConditionsResult {
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsConditionsResultCopyWith<TermsConditionsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsConditionsResultCopyWith<$Res> {
  factory $TermsConditionsResultCopyWith(TermsConditionsResult value,
          $Res Function(TermsConditionsResult) then) =
      _$TermsConditionsResultCopyWithImpl<$Res, TermsConditionsResult>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$TermsConditionsResultCopyWithImpl<$Res,
        $Val extends TermsConditionsResult>
    implements $TermsConditionsResultCopyWith<$Res> {
  _$TermsConditionsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TermsConditionsResultCopyWith<$Res>
    implements $TermsConditionsResultCopyWith<$Res> {
  factory _$$_TermsConditionsResultCopyWith(_$_TermsConditionsResult value,
          $Res Function(_$_TermsConditionsResult) then) =
      __$$_TermsConditionsResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TermsConditionsResultCopyWithImpl<$Res>
    extends _$TermsConditionsResultCopyWithImpl<$Res, _$_TermsConditionsResult>
    implements _$$_TermsConditionsResultCopyWith<$Res> {
  __$$_TermsConditionsResultCopyWithImpl(_$_TermsConditionsResult _value,
      $Res Function(_$_TermsConditionsResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TermsConditionsResult(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsConditionsResult implements _TermsConditionsResult {
  _$_TermsConditionsResult({required this.data});

  factory _$_TermsConditionsResult.fromJson(Map<String, dynamic> json) =>
      _$$_TermsConditionsResultFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'TermsConditionsResult(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsConditionsResult &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TermsConditionsResultCopyWith<_$_TermsConditionsResult> get copyWith =>
      __$$_TermsConditionsResultCopyWithImpl<_$_TermsConditionsResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsConditionsResultToJson(
      this,
    );
  }
}

abstract class _TermsConditionsResult implements TermsConditionsResult {
  factory _TermsConditionsResult({required final Data data}) =
      _$_TermsConditionsResult;

  factory _TermsConditionsResult.fromJson(Map<String, dynamic> json) =
      _$_TermsConditionsResult.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_TermsConditionsResultCopyWith<_$_TermsConditionsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  List<TermsCondition>? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get policyType => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {String? id,
      String slug,
      List<TermsCondition>? content,
      String? createdAt,
      String? date,
      String? policyType,
      String? updatedAt});
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
    Object? id = freezed,
    Object? slug = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? date = freezed,
    Object? policyType = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<TermsCondition>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String slug,
      List<TermsCondition>? content,
      String? createdAt,
      String? date,
      String? policyType,
      String? updatedAt});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? date = freezed,
    Object? policyType = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Data(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<TermsCondition>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
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
class _$_Data implements _Data {
  _$_Data(
      {required this.id,
      required this.slug,
      required final List<TermsCondition>? content,
      required this.createdAt,
      required this.date,
      required this.policyType,
      required this.updatedAt})
      : _content = content;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? id;
  @override
  final String slug;
  final List<TermsCondition>? _content;
  @override
  List<TermsCondition>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? date;
  @override
  final String? policyType;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Data(id: $id, slug: $slug, content: $content, createdAt: $createdAt, date: $date, policyType: $policyType, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      slug,
      const DeepCollectionEquality().hash(_content),
      createdAt,
      date,
      policyType,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {required final String? id,
      required final String slug,
      required final List<TermsCondition>? content,
      required final String? createdAt,
      required final String? date,
      required final String? policyType,
      required final String? updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get id;
  @override
  String get slug;
  @override
  List<TermsCondition>? get content;
  @override
  String? get createdAt;
  @override
  String? get date;
  @override
  String? get policyType;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

TermsCondition _$TermsConditionFromJson(Map<String, dynamic> json) {
  return _TermsCondition.fromJson(json);
}

/// @nodoc
mixin _$TermsCondition {
  String? get title => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  dynamic get re => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsConditionCopyWith<TermsCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsConditionCopyWith<$Res> {
  factory $TermsConditionCopyWith(
          TermsCondition value, $Res Function(TermsCondition) then) =
      _$TermsConditionCopyWithImpl<$Res, TermsCondition>;
  @useResult
  $Res call({String? title, String? html, String? id, dynamic re});
}

/// @nodoc
class _$TermsConditionCopyWithImpl<$Res, $Val extends TermsCondition>
    implements $TermsConditionCopyWith<$Res> {
  _$TermsConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? html = freezed,
    Object? id = freezed,
    Object? re = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      re: freezed == re
          ? _value.re
          : re // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TermsConditionCopyWith<$Res>
    implements $TermsConditionCopyWith<$Res> {
  factory _$$_TermsConditionCopyWith(
          _$_TermsCondition value, $Res Function(_$_TermsCondition) then) =
      __$$_TermsConditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? html, String? id, dynamic re});
}

/// @nodoc
class __$$_TermsConditionCopyWithImpl<$Res>
    extends _$TermsConditionCopyWithImpl<$Res, _$_TermsCondition>
    implements _$$_TermsConditionCopyWith<$Res> {
  __$$_TermsConditionCopyWithImpl(
      _$_TermsCondition _value, $Res Function(_$_TermsCondition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? html = freezed,
    Object? id = freezed,
    Object? re = freezed,
  }) {
    return _then(_$_TermsCondition(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      re: freezed == re ? _value.re! : re,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsCondition implements _TermsCondition {
  _$_TermsCondition(
      {required this.title, required this.html, required this.id, this.re});

  factory _$_TermsCondition.fromJson(Map<String, dynamic> json) =>
      _$$_TermsConditionFromJson(json);

  @override
  final String? title;
  @override
  final String? html;
  @override
  final String? id;
  @override
  final dynamic re;

  @override
  String toString() {
    return 'TermsCondition(title: $title, html: $html, id: $id, re: $re)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsCondition &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.re, re));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, html, id, const DeepCollectionEquality().hash(re));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TermsConditionCopyWith<_$_TermsCondition> get copyWith =>
      __$$_TermsConditionCopyWithImpl<_$_TermsCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsConditionToJson(
      this,
    );
  }
}

abstract class _TermsCondition implements TermsCondition {
  factory _TermsCondition(
      {required final String? title,
      required final String? html,
      required final String? id,
      final dynamic re}) = _$_TermsCondition;

  factory _TermsCondition.fromJson(Map<String, dynamic> json) =
      _$_TermsCondition.fromJson;

  @override
  String? get title;
  @override
  String? get html;
  @override
  String? get id;
  @override
  dynamic get re;
  @override
  @JsonKey(ignore: true)
  _$$_TermsConditionCopyWith<_$_TermsCondition> get copyWith =>
      throw _privateConstructorUsedError;
}
