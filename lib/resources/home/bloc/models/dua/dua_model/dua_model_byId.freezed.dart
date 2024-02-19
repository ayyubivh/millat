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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$DuaModelByIdImplCopyWith<$Res>
    implements $DuaModelByIdCopyWith<$Res> {
  factory _$$DuaModelByIdImplCopyWith(
          _$DuaModelByIdImpl value, $Res Function(_$DuaModelByIdImpl) then) =
      __$$DuaModelByIdImplCopyWithImpl<$Res>;
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
class __$$DuaModelByIdImplCopyWithImpl<$Res>
    extends _$DuaModelByIdCopyWithImpl<$Res, _$DuaModelByIdImpl>
    implements _$$DuaModelByIdImplCopyWith<$Res> {
  __$$DuaModelByIdImplCopyWithImpl(
      _$DuaModelByIdImpl _value, $Res Function(_$DuaModelByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DuaModelByIdImpl(
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
class _$DuaModelByIdImpl implements _DuaModelById {
  _$DuaModelByIdImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$DuaModelByIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaModelByIdImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaModelByIdImpl &&
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
  _$$DuaModelByIdImplCopyWith<_$DuaModelByIdImpl> get copyWith =>
      __$$DuaModelByIdImplCopyWithImpl<_$DuaModelByIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaModelByIdImplToJson(
      this,
    );
  }
}

abstract class _DuaModelById implements DuaModelById {
  factory _DuaModelById(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'result') final Result? result}) = _$DuaModelByIdImpl;

  factory _DuaModelById.fromJson(Map<String, dynamic> json) =
      _$DuaModelByIdImpl.fromJson;

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
  _$$DuaModelByIdImplCopyWith<_$DuaModelByIdImpl> get copyWith =>
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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dua? dua});

  @override
  $DuaCopyWith<$Res>? get dua;
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
    Object? dua = freezed,
  }) {
    return _then(_$ResultImpl(
      dua: freezed == dua
          ? _value.dua
          : dua // ignore: cast_nullable_to_non_nullable
              as Dua?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required this.dua});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final Dua? dua;

  @override
  String toString() {
    return 'Result(dua: $dua)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.dua, dua) || other.dua == dua));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dua);

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
  const factory _Result({required final Dua? dua}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Dua? get dua;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
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
abstract class _$$DuaImplCopyWith<$Res> implements $DuaCopyWith<$Res> {
  factory _$$DuaImplCopyWith(_$DuaImpl value, $Res Function(_$DuaImpl) then) =
      __$$DuaImplCopyWithImpl<$Res>;
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
class __$$DuaImplCopyWithImpl<$Res> extends _$DuaCopyWithImpl<$Res, _$DuaImpl>
    implements _$$DuaImplCopyWith<$Res> {
  __$$DuaImplCopyWithImpl(_$DuaImpl _value, $Res Function(_$DuaImpl) _then)
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
    return _then(_$DuaImpl(
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
class _$DuaImpl implements _Dua {
  _$DuaImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'categoryId') required this.categoryId,
      @JsonKey(name: 'subCategoryId') required this.subCategoryId,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'resource') required this.resource,
      @JsonKey(name: 'translate') required final List<Translation> translations,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _translations = translations;

  factory _$DuaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaImpl &&
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
  _$$DuaImplCopyWith<_$DuaImpl> get copyWith =>
      __$$DuaImplCopyWithImpl<_$DuaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaImplToJson(
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
      @JsonKey(name: 'updatedAt') required final String updatedAt}) = _$DuaImpl;

  factory _Dua.fromJson(Map<String, dynamic> json) = _$DuaImpl.fromJson;

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
  _$$DuaImplCopyWith<_$DuaImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$SubCategoryIdImplCopyWith<$Res>
    implements $SubCategoryIdCopyWith<$Res> {
  factory _$$SubCategoryIdImplCopyWith(
          _$SubCategoryIdImpl value, $Res Function(_$SubCategoryIdImpl) then) =
      __$$SubCategoryIdImplCopyWithImpl<$Res>;
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
class __$$SubCategoryIdImplCopyWithImpl<$Res>
    extends _$SubCategoryIdCopyWithImpl<$Res, _$SubCategoryIdImpl>
    implements _$$SubCategoryIdImplCopyWith<$Res> {
  __$$SubCategoryIdImplCopyWithImpl(
      _$SubCategoryIdImpl _value, $Res Function(_$SubCategoryIdImpl) _then)
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
    return _then(_$SubCategoryIdImpl(
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
class _$SubCategoryIdImpl implements _SubCategoryId {
  _$SubCategoryIdImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'categoryId') required this.category,
      @JsonKey(name: 'subCategory') required this.subCategoryName,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$SubCategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryIdImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryIdImpl &&
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
  _$$SubCategoryIdImplCopyWith<_$SubCategoryIdImpl> get copyWith =>
      __$$SubCategoryIdImplCopyWithImpl<_$SubCategoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryIdImplToJson(
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
      _$SubCategoryIdImpl;

  factory _SubCategoryId.fromJson(Map<String, dynamic> json) =
      _$SubCategoryIdImpl.fromJson;

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
  _$$SubCategoryIdImplCopyWith<_$SubCategoryIdImpl> get copyWith =>
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
abstract class _$$CategoryIdImplCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$CategoryIdImplCopyWith(
          _$CategoryIdImpl value, $Res Function(_$CategoryIdImpl) then) =
      __$$CategoryIdImplCopyWithImpl<$Res>;
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
class __$$CategoryIdImplCopyWithImpl<$Res>
    extends _$CategoryIdCopyWithImpl<$Res, _$CategoryIdImpl>
    implements _$$CategoryIdImplCopyWith<$Res> {
  __$$CategoryIdImplCopyWithImpl(
      _$CategoryIdImpl _value, $Res Function(_$CategoryIdImpl) _then)
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
    return _then(_$CategoryIdImpl(
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
class _$CategoryIdImpl implements _CategoryId {
  _$CategoryIdImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
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
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      __$$CategoryIdImplCopyWithImpl<_$CategoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryIdImplToJson(
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
      _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

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
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
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
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
          _$TranslationImpl value, $Res Function(_$TranslationImpl) then) =
      __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
      _$TranslationImpl _value, $Res Function(_$TranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? content = null,
    Object? id = null,
  }) {
    return _then(_$TranslationImpl(
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
class _$TranslationImpl implements _Translation {
  _$TranslationImpl(
      {@JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: '_id') required this.id});

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
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
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  factory _Translation(
      {@JsonKey(name: 'language') required final String language,
      @JsonKey(name: 'content') required final String content,
      @JsonKey(name: '_id') required final String id}) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

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
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
