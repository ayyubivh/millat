// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dua_model_byId.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuaModelById _$DuaModelByIdFromJson(Map<String, dynamic> json) {
  return _DuaModelById.fromJson(json);
}

/// @nodoc
mixin _$DuaModelById {
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
  $DuaModelByIdCopyWith<DuaModelById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaModelByIdCopyWith<$Res> {
  factory $DuaModelByIdCopyWith(
          DuaModelById value, $Res Function(DuaModelById) then) =
      _$DuaModelByIdCopyWithImpl<$Res, DuaModelById>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$DuaModelByIdCopyWithImpl<$Res, $Val extends DuaModelById>
    implements $DuaModelByIdCopyWith<$Res> {
  _$DuaModelByIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_DuaModelByIdCopyWith<$Res>
    implements $DuaModelByIdCopyWith<$Res> {
  factory _$$_DuaModelByIdCopyWith(
          _$_DuaModelById value, $Res Function(_$_DuaModelById) then) =
      __$$_DuaModelByIdCopyWithImpl<$Res>;
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
class __$$_DuaModelByIdCopyWithImpl<$Res>
    extends _$DuaModelByIdCopyWithImpl<$Res, _$_DuaModelById>
    implements _$$_DuaModelByIdCopyWith<$Res> {
  __$$_DuaModelByIdCopyWithImpl(
      _$_DuaModelById _value, $Res Function(_$_DuaModelById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DuaModelById(
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
class _$_DuaModelById implements _DuaModelById {
  _$_DuaModelById(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$_DuaModelById.fromJson(Map<String, dynamic> json) =>
      _$$_DuaModelByIdFromJson(json);

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
    return 'DuaModelById(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaModelById &&
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
  _$$_DuaModelByIdCopyWith<_$_DuaModelById> get copyWith =>
      __$$_DuaModelByIdCopyWithImpl<_$_DuaModelById>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaModelByIdToJson(
      this,
    );
  }
}

abstract class _DuaModelById implements DuaModelById {
  factory _DuaModelById(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'result') final Result? result}) = _$_DuaModelById;

  factory _DuaModelById.fromJson(Map<String, dynamic> json) =
      _$_DuaModelById.fromJson;

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
  _$$_DuaModelByIdCopyWith<_$_DuaModelById> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Dua? get dua => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Dua? dua});

  $DuaCopyWith<$Res>? get dua;
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
    Object? dua = freezed,
  }) {
    return _then(_value.copyWith(
      dua: freezed == dua
          ? _value.dua
          : dua // ignore: cast_nullable_to_non_nullable
              as Dua?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DuaCopyWith<$Res>? get dua {
    if (_value.dua == null) {
      return null;
    }

    return $DuaCopyWith<$Res>(_value.dua!, (value) {
      return _then(_value.copyWith(dua: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dua? dua});

  @override
  $DuaCopyWith<$Res>? get dua;
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
    Object? dua = freezed,
  }) {
    return _then(_$_Result(
      dua: freezed == dua
          ? _value.dua
          : dua // ignore: cast_nullable_to_non_nullable
              as Dua?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required this.dua});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Dua? dua;

  @override
  String toString() {
    return 'Result(dua: $dua)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.dua, dua) || other.dua == dua));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dua);

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
  const factory _Result({required final Dua? dua}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Dua? get dua;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Dua _$DuaFromJson(Map<String, dynamic> json) {
  return _Dua.fromJson(json);
}

/// @nodoc
mixin _$Dua {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subCategoryId')
  SubCategoryId get subCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource')
  String get resource => throw _privateConstructorUsedError;
  @JsonKey(name: 'translate')
  List<Translation> get translations => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaCopyWith<Dua> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaCopyWith<$Res> {
  factory $DuaCopyWith(Dua value, $Res Function(Dua) then) =
      _$DuaCopyWithImpl<$Res, Dua>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'categoryId') String categoryId,
      @JsonKey(name: 'subCategoryId') SubCategoryId subCategoryId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'resource') String resource,
      @JsonKey(name: 'translate') List<Translation> translations,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  $SubCategoryIdCopyWith<$Res> get subCategoryId;
}

/// @nodoc
class _$DuaCopyWithImpl<$Res, $Val extends Dua> implements $DuaCopyWith<$Res> {
  _$DuaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? content = null,
    Object? resource = null,
    Object? translations = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryIdCopyWith<$Res> get subCategoryId {
    return $SubCategoryIdCopyWith<$Res>(_value.subCategoryId, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DuaCopyWith<$Res> implements $DuaCopyWith<$Res> {
  factory _$$_DuaCopyWith(_$_Dua value, $Res Function(_$_Dua) then) =
      __$$_DuaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'categoryId') String categoryId,
      @JsonKey(name: 'subCategoryId') SubCategoryId subCategoryId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'resource') String resource,
      @JsonKey(name: 'translate') List<Translation> translations,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  @override
  $SubCategoryIdCopyWith<$Res> get subCategoryId;
}

/// @nodoc
class __$$_DuaCopyWithImpl<$Res> extends _$DuaCopyWithImpl<$Res, _$_Dua>
    implements _$$_DuaCopyWith<$Res> {
  __$$_DuaCopyWithImpl(_$_Dua _value, $Res Function(_$_Dua) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? content = null,
    Object? resource = null,
    Object? translations = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Dua(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dua implements _Dua {
  _$_Dua(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'categoryId') required this.categoryId,
      @JsonKey(name: 'subCategoryId') required this.subCategoryId,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'resource') required this.resource,
      @JsonKey(name: 'translate') required final List<Translation> translations,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _translations = translations;

  factory _$_Dua.fromJson(Map<String, dynamic> json) => _$$_DuaFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @override
  @JsonKey(name: 'subCategoryId')
  final SubCategoryId subCategoryId;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'resource')
  final String resource;
  final List<Translation> _translations;
  @override
  @JsonKey(name: 'translate')
  List<Translation> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'Dua(id: $id, categoryId: $categoryId, subCategoryId: $subCategoryId, content: $content, resource: $resource, translations: $translations, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dua &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
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
      categoryId,
      subCategoryId,
      content,
      resource,
      const DeepCollectionEquality().hash(_translations),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DuaCopyWith<_$_Dua> get copyWith =>
      __$$_DuaCopyWithImpl<_$_Dua>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaToJson(
      this,
    );
  }
}

abstract class _Dua implements Dua {
  factory _Dua(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'categoryId') required final String categoryId,
      @JsonKey(name: 'subCategoryId')
      required final SubCategoryId subCategoryId,
      @JsonKey(name: 'content') required final String content,
      @JsonKey(name: 'resource') required final String resource,
      @JsonKey(name: 'translate') required final List<Translation> translations,
      @JsonKey(name: 'createdAt') required final String createdAt,
      @JsonKey(name: 'updatedAt') required final String updatedAt}) = _$_Dua;

  factory _Dua.fromJson(Map<String, dynamic> json) = _$_Dua.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'categoryId')
  String get categoryId;
  @override
  @JsonKey(name: 'subCategoryId')
  SubCategoryId get subCategoryId;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'resource')
  String get resource;
  @override
  @JsonKey(name: 'translate')
  List<Translation> get translations;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DuaCopyWith<_$_Dua> get copyWith => throw _privateConstructorUsedError;
}

SubCategoryId _$SubCategoryIdFromJson(Map<String, dynamic> json) {
  return _SubCategoryId.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryId {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  CategoryId get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'subCategory')
  String get subCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryIdCopyWith<SubCategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryIdCopyWith<$Res> {
  factory $SubCategoryIdCopyWith(
          SubCategoryId value, $Res Function(SubCategoryId) then) =
      _$SubCategoryIdCopyWithImpl<$Res, SubCategoryId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'categoryId') CategoryId category,
      @JsonKey(name: 'subCategory') String subCategoryName,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  $CategoryIdCopyWith<$Res> get category;
}

/// @nodoc
class _$SubCategoryIdCopyWithImpl<$Res, $Val extends SubCategoryId>
    implements $SubCategoryIdCopyWith<$Res> {
  _$SubCategoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subCategoryName = null,
    Object? count = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryId,
      subCategoryName: null == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryIdCopyWith<$Res> get category {
    return $CategoryIdCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubCategoryIdCopyWith<$Res>
    implements $SubCategoryIdCopyWith<$Res> {
  factory _$$_SubCategoryIdCopyWith(
          _$_SubCategoryId value, $Res Function(_$_SubCategoryId) then) =
      __$$_SubCategoryIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'categoryId') CategoryId category,
      @JsonKey(name: 'subCategory') String subCategoryName,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  @override
  $CategoryIdCopyWith<$Res> get category;
}

/// @nodoc
class __$$_SubCategoryIdCopyWithImpl<$Res>
    extends _$SubCategoryIdCopyWithImpl<$Res, _$_SubCategoryId>
    implements _$$_SubCategoryIdCopyWith<$Res> {
  __$$_SubCategoryIdCopyWithImpl(
      _$_SubCategoryId _value, $Res Function(_$_SubCategoryId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subCategoryName = null,
    Object? count = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_SubCategoryId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryId,
      subCategoryName: null == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubCategoryId implements _SubCategoryId {
  _$_SubCategoryId(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'categoryId') required this.category,
      @JsonKey(name: 'subCategory') required this.subCategoryName,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$_SubCategoryId.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryIdFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'categoryId')
  final CategoryId category;
  @override
  @JsonKey(name: 'subCategory')
  final String subCategoryName;
  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'SubCategoryId(id: $id, category: $category, subCategoryName: $subCategoryName, count: $count, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategoryName, subCategoryName) ||
                other.subCategoryName == subCategoryName) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, category, subCategoryName, count, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryIdCopyWith<_$_SubCategoryId> get copyWith =>
      __$$_SubCategoryIdCopyWithImpl<_$_SubCategoryId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryIdToJson(
      this,
    );
  }
}

abstract class _SubCategoryId implements SubCategoryId {
  factory _SubCategoryId(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'categoryId') required final CategoryId category,
          @JsonKey(name: 'subCategory') required final String subCategoryName,
          @JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$_SubCategoryId;

  factory _SubCategoryId.fromJson(Map<String, dynamic> json) =
      _$_SubCategoryId.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'categoryId')
  CategoryId get category;
  @override
  @JsonKey(name: 'subCategory')
  String get subCategoryName;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryIdCopyWith<_$_SubCategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) {
  return _CategoryId.fromJson(json);
}

/// @nodoc
mixin _$CategoryId {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
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
    Object? id = null,
    Object? category = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
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
    Object? id = null,
    Object? category = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_CategoryId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryId implements _CategoryId {
  _$_CategoryId(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$_CategoryId.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryIdFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

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
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'category') required final String category,
          @JsonKey(name: 'image') required final String image,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$_CategoryId;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$_CategoryId.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryIdCopyWith<_$_CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? content = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslationCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$_TranslationCopyWith(
          _$_Translation value, $Res Function(_$_Translation) then) =
      __$$_TranslationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$_TranslationCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$_Translation>
    implements _$$_TranslationCopyWith<$Res> {
  __$$_TranslationCopyWithImpl(
      _$_Translation _value, $Res Function(_$_Translation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? content = null,
    Object? id = null,
  }) {
    return _then(_$_Translation(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Translation implements _Translation {
  _$_Translation(
      {@JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: '_id') required this.id});

  factory _$_Translation.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String language;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'Translation(language: $language, content: $content, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Translation &&
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
  _$$_TranslationCopyWith<_$_Translation> get copyWith =>
      __$$_TranslationCopyWithImpl<_$_Translation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslationToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  factory _Translation(
      {@JsonKey(name: 'language') required final String language,
      @JsonKey(name: 'content') required final String content,
      @JsonKey(name: '_id') required final String id}) = _$_Translation;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$_Translation.fromJson;

  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationCopyWith<_$_Translation> get copyWith =>
      throw _privateConstructorUsedError;
}
