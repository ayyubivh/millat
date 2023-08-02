// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dua_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuaModel _$DuaModelFromJson(Map<String, dynamic> json) {
  return _DuaModel.fromJson(json);
}

/// @nodoc
mixin _$DuaModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaModelCopyWith<DuaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaModelCopyWith<$Res> {
  factory $DuaModelCopyWith(DuaModel value, $Res Function(DuaModel) then) =
      _$DuaModelCopyWithImpl<$Res, DuaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$DuaModelCopyWithImpl<$Res, $Val extends DuaModel>
    implements $DuaModelCopyWith<$Res> {
  _$DuaModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DuaModelCopyWith<$Res> implements $DuaModelCopyWith<$Res> {
  factory _$$_DuaModelCopyWith(
          _$_DuaModel value, $Res Function(_$_DuaModel) then) =
      __$$_DuaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_DuaModelCopyWithImpl<$Res>
    extends _$DuaModelCopyWithImpl<$Res, _$_DuaModel>
    implements _$$_DuaModelCopyWith<$Res> {
  __$$_DuaModelCopyWithImpl(
      _$_DuaModel _value, $Res Function(_$_DuaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DuaModel(
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
class _$_DuaModel implements _DuaModel {
  _$_DuaModel(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$_DuaModel.fromJson(Map<String, dynamic> json) =>
      _$$_DuaModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'result')
  final Result? result;

  @override
  String toString() {
    return 'DuaModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaModel &&
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
  _$$_DuaModelCopyWith<_$_DuaModel> get copyWith =>
      __$$_DuaModelCopyWithImpl<_$_DuaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaModelToJson(
      this,
    );
  }
}

abstract class _DuaModel implements DuaModel {
  factory _DuaModel(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'result') final Result? result}) = _$_DuaModel;

  factory _DuaModel.fromJson(Map<String, dynamic> json) = _$_DuaModel.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'result')
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$_DuaModelCopyWith<_$_DuaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'duaes')
  List<Duae>? get duas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({@JsonKey(name: 'duaes') List<Duae>? duas});
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
    Object? duas = freezed,
  }) {
    return _then(_value.copyWith(
      duas: freezed == duas
          ? _value.duas
          : duas // ignore: cast_nullable_to_non_nullable
              as List<Duae>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'duaes') List<Duae>? duas});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duas = freezed,
  }) {
    return _then(_$_Result(
      duas: freezed == duas
          ? _value._duas
          : duas // ignore: cast_nullable_to_non_nullable
              as List<Duae>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  _$_Result({@JsonKey(name: 'duaes') final List<Duae>? duas}) : _duas = duas;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<Duae>? _duas;
  @override
  @JsonKey(name: 'duaes')
  List<Duae>? get duas {
    final value = _duas;
    if (value == null) return null;
    if (_duas is EqualUnmodifiableListView) return _duas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(duas: $duas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other._duas, _duas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_duas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result({@JsonKey(name: 'duaes') final List<Duae>? duas}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: 'duaes')
  List<Duae>? get duas;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Duae _$DuaeFromJson(Map<String, dynamic> json) {
  return _Duae.fromJson(json);
}

/// @nodoc
mixin _$Duae {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'subCategoryId')
  SubCategory? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio')
  String? get audio => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource')
  String? get resource => throw _privateConstructorUsedError;
  @JsonKey(name: 'translate')
  List<Translate>? get translate => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaeCopyWith<Duae> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaeCopyWith<$Res> {
  factory $DuaeCopyWith(Duae value, $Res Function(Duae) then) =
      _$DuaeCopyWithImpl<$Res, Duae>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'subCategoryId') SubCategory? subCategory,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'audio') String? audio,
      @JsonKey(name: 'resource') String? resource,
      @JsonKey(name: 'translate') List<Translate>? translate,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $SubCategoryCopyWith<$Res>? get subCategory;
}

/// @nodoc
class _$DuaeCopyWithImpl<$Res, $Val extends Duae>
    implements $DuaeCopyWith<$Res> {
  _$DuaeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subCategory = freezed,
    Object? content = freezed,
    Object? audio = freezed,
    Object? resource = freezed,
    Object? translate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String?,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as List<Translate>?,
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
  $SubCategoryCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DuaeCopyWith<$Res> implements $DuaeCopyWith<$Res> {
  factory _$$_DuaeCopyWith(_$_Duae value, $Res Function(_$_Duae) then) =
      __$$_DuaeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'subCategoryId') SubCategory? subCategory,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'audio') String? audio,
      @JsonKey(name: 'resource') String? resource,
      @JsonKey(name: 'translate') List<Translate>? translate,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  @override
  $SubCategoryCopyWith<$Res>? get subCategory;
}

/// @nodoc
class __$$_DuaeCopyWithImpl<$Res> extends _$DuaeCopyWithImpl<$Res, _$_Duae>
    implements _$$_DuaeCopyWith<$Res> {
  __$$_DuaeCopyWithImpl(_$_Duae _value, $Res Function(_$_Duae) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subCategory = freezed,
    Object? content = freezed,
    Object? audio = freezed,
    Object? resource = freezed,
    Object? translate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Duae(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String?,
      translate: freezed == translate
          ? _value._translate
          : translate // ignore: cast_nullable_to_non_nullable
              as List<Translate>?,
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
class _$_Duae implements _Duae {
  _$_Duae(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'subCategoryId') this.subCategory,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'audio') this.audio,
      @JsonKey(name: 'resource') this.resource,
      @JsonKey(name: 'translate') final List<Translate>? translate,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt})
      : _translate = translate;

  factory _$_Duae.fromJson(Map<String, dynamic> json) => _$$_DuaeFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'subCategoryId')
  final SubCategory? subCategory;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'audio')
  final String? audio;
  @override
  @JsonKey(name: 'resource')
  final String? resource;
  final List<Translate>? _translate;
  @override
  @JsonKey(name: 'translate')
  List<Translate>? get translate {
    final value = _translate;
    if (value == null) return null;
    if (_translate is EqualUnmodifiableListView) return _translate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Duae(id: $id, subCategory: $subCategory, content: $content, audio: $audio, resource: $resource, translate: $translate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Duae &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            const DeepCollectionEquality()
                .equals(other._translate, _translate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      subCategory,
      content,
      audio,
      resource,
      const DeepCollectionEquality().hash(_translate),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DuaeCopyWith<_$_Duae> get copyWith =>
      __$$_DuaeCopyWithImpl<_$_Duae>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaeToJson(
      this,
    );
  }
}

abstract class _Duae implements Duae {
  factory _Duae(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'subCategoryId') final SubCategory? subCategory,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'audio') final String? audio,
      @JsonKey(name: 'resource') final String? resource,
      @JsonKey(name: 'translate') final List<Translate>? translate,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$_Duae;

  factory _Duae.fromJson(Map<String, dynamic> json) = _$_Duae.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'subCategoryId')
  SubCategory? get subCategory;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'audio')
  String? get audio;
  @override
  @JsonKey(name: 'resource')
  String? get resource;
  @override
  @JsonKey(name: 'translate')
  List<Translate>? get translate;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DuaeCopyWith<_$_Duae> get copyWith => throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  CategoryId? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subCategory')
  String? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryCopyWith<SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryCopyWith<$Res> {
  factory $SubCategoryCopyWith(
          SubCategory value, $Res Function(SubCategory) then) =
      _$SubCategoryCopyWithImpl<$Res, SubCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') CategoryId? categoryId,
      @JsonKey(name: 'subCategory') String? subCategory,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $CategoryIdCopyWith<$Res>? get categoryId;
}

/// @nodoc
class _$SubCategoryCopyWithImpl<$Res, $Val extends SubCategory>
    implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? subCategory = freezed,
    Object? count = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $CategoryIdCopyWith<$Res>? get categoryId {
    if (_value.categoryId == null) {
      return null;
    }

    return $CategoryIdCopyWith<$Res>(_value.categoryId!, (value) {
      return _then(_value.copyWith(categoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubCategoryCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$_SubCategoryCopyWith(
          _$_SubCategory value, $Res Function(_$_SubCategory) then) =
      __$$_SubCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') CategoryId? categoryId,
      @JsonKey(name: 'subCategory') String? subCategory,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  @override
  $CategoryIdCopyWith<$Res>? get categoryId;
}

/// @nodoc
class __$$_SubCategoryCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$_SubCategory>
    implements _$$_SubCategoryCopyWith<$Res> {
  __$$_SubCategoryCopyWithImpl(
      _$_SubCategory _value, $Res Function(_$_SubCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? subCategory = freezed,
    Object? count = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_SubCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_SubCategory implements _SubCategory {
  _$_SubCategory(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'categoryId') this.categoryId,
      @JsonKey(name: 'subCategory') this.subCategory,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$_SubCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'categoryId')
  final CategoryId? categoryId;
  @override
  @JsonKey(name: 'subCategory')
  final String? subCategory;
  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'SubCategory(id: $id, categoryId: $categoryId, subCategory: $subCategory, count: $count, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, categoryId, subCategory, count, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      __$$_SubCategoryCopyWithImpl<_$_SubCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryToJson(
      this,
    );
  }
}

abstract class _SubCategory implements SubCategory {
  factory _SubCategory(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'categoryId') final CategoryId? categoryId,
      @JsonKey(name: 'subCategory') final String? subCategory,
      @JsonKey(name: 'count') final int? count,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$_SubCategory;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$_SubCategory.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'categoryId')
  CategoryId? get categoryId;
  @override
  @JsonKey(name: 'subCategory')
  String? get subCategory;
  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) {
  return _CategoryId.fromJson(json);
}

/// @nodoc
mixin _$CategoryId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryIdCopyWith<CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryIdCopyWith<$Res> {
  factory $CategoryIdCopyWith(
          CategoryId value, $Res Function(CategoryId) then) =
      _$CategoryIdCopyWithImpl<$Res, CategoryId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$CategoryIdCopyWithImpl<$Res, $Val extends CategoryId>
    implements $CategoryIdCopyWith<$Res> {
  _$CategoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_CategoryIdCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$_CategoryIdCopyWith(
          _$_CategoryId value, $Res Function(_$_CategoryId) then) =
      __$$_CategoryIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$_CategoryIdCopyWithImpl<$Res>
    extends _$CategoryIdCopyWithImpl<$Res, _$_CategoryId>
    implements _$$_CategoryIdCopyWith<$Res> {
  __$$_CategoryIdCopyWithImpl(
      _$_CategoryId _value, $Res Function(_$_CategoryId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CategoryId(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryId implements _CategoryId {
  _$_CategoryId(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$_CategoryId.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryIdFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'CategoryId(id: $id, category: $category, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, image, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryIdCopyWith<_$_CategoryId> get copyWith =>
      __$$_CategoryIdCopyWithImpl<_$_CategoryId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryIdToJson(
      this,
    );
  }
}

abstract class _CategoryId implements CategoryId {
  factory _CategoryId(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$_CategoryId;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$_CategoryId.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryIdCopyWith<_$_CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

Translate _$TranslateFromJson(Map<String, dynamic> json) {
  return _Translate.fromJson(json);
}

/// @nodoc
mixin _$Translate {
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslateCopyWith<Translate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateCopyWith<$Res> {
  factory $TranslateCopyWith(Translate value, $Res Function(Translate) then) =
      _$TranslateCopyWithImpl<$Res, Translate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$TranslateCopyWithImpl<$Res, $Val extends Translate>
    implements $TranslateCopyWith<$Res> {
  _$TranslateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslateCopyWith<$Res> implements $TranslateCopyWith<$Res> {
  factory _$$_TranslateCopyWith(
          _$_Translate value, $Res Function(_$_Translate) then) =
      __$$_TranslateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_TranslateCopyWithImpl<$Res>
    extends _$TranslateCopyWithImpl<$Res, _$_Translate>
    implements _$$_TranslateCopyWith<$Res> {
  __$$_TranslateCopyWithImpl(
      _$_Translate _value, $Res Function(_$_Translate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Translate(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Translate implements _Translate {
  _$_Translate(
      {@JsonKey(name: 'language') this.language,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: '_id') this.id});

  factory _$_Translate.fromJson(Map<String, dynamic> json) =>
      _$$_TranslateFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Translate(language: $language, content: $content, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Translate &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, content, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslateCopyWith<_$_Translate> get copyWith =>
      __$$_TranslateCopyWithImpl<_$_Translate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslateToJson(
      this,
    );
  }
}

abstract class _Translate implements Translate {
  factory _Translate(
      {@JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: '_id') final String? id}) = _$_Translate;

  factory _Translate.fromJson(Map<String, dynamic> json) =
      _$_Translate.fromJson;

  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_TranslateCopyWith<_$_Translate> get copyWith =>
      throw _privateConstructorUsedError;
}
