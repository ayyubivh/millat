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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$DuaModelImplCopyWith<$Res>
    implements $DuaModelCopyWith<$Res> {
  factory _$$DuaModelImplCopyWith(
          _$DuaModelImpl value, $Res Function(_$DuaModelImpl) then) =
      __$$DuaModelImplCopyWithImpl<$Res>;
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
class __$$DuaModelImplCopyWithImpl<$Res>
    extends _$DuaModelCopyWithImpl<$Res, _$DuaModelImpl>
    implements _$$DuaModelImplCopyWith<$Res> {
  __$$DuaModelImplCopyWithImpl(
      _$DuaModelImpl _value, $Res Function(_$DuaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DuaModelImpl(
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
class _$DuaModelImpl implements _DuaModel {
  _$DuaModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$DuaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaModelImpl &&
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
  _$$DuaModelImplCopyWith<_$DuaModelImpl> get copyWith =>
      __$$DuaModelImplCopyWithImpl<_$DuaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaModelImplToJson(
      this,
    );
  }
}

abstract class _DuaModel implements DuaModel {
  factory _DuaModel(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'result') final Result? result}) = _$DuaModelImpl;

  factory _DuaModel.fromJson(Map<String, dynamic> json) =
      _$DuaModelImpl.fromJson;

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
  _$$DuaModelImplCopyWith<_$DuaModelImpl> get copyWith =>
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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'duaes') List<Duae>? duas});
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
    Object? duas = freezed,
  }) {
    return _then(_$ResultImpl(
      duas: freezed == duas
          ? _value._duas
          : duas // ignore: cast_nullable_to_non_nullable
              as List<Duae>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  _$ResultImpl({@JsonKey(name: 'duaes') final List<Duae>? duas}) : _duas = duas;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._duas, _duas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_duas));

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
  factory _Result({@JsonKey(name: 'duaes') final List<Duae>? duas}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'duaes')
  List<Duae>? get duas;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
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
abstract class _$$DuaeImplCopyWith<$Res> implements $DuaeCopyWith<$Res> {
  factory _$$DuaeImplCopyWith(
          _$DuaeImpl value, $Res Function(_$DuaeImpl) then) =
      __$$DuaeImplCopyWithImpl<$Res>;
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
class __$$DuaeImplCopyWithImpl<$Res>
    extends _$DuaeCopyWithImpl<$Res, _$DuaeImpl>
    implements _$$DuaeImplCopyWith<$Res> {
  __$$DuaeImplCopyWithImpl(_$DuaeImpl _value, $Res Function(_$DuaeImpl) _then)
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
    return _then(_$DuaeImpl(
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
class _$DuaeImpl implements _Duae {
  _$DuaeImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'subCategoryId') this.subCategory,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'audio') this.audio,
      @JsonKey(name: 'resource') this.resource,
      @JsonKey(name: 'translate') final List<Translate>? translate,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt})
      : _translate = translate;

  factory _$DuaeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaeImpl &&
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
  _$$DuaeImplCopyWith<_$DuaeImpl> get copyWith =>
      __$$DuaeImplCopyWithImpl<_$DuaeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaeImplToJson(
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
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$DuaeImpl;

  factory _Duae.fromJson(Map<String, dynamic> json) = _$DuaeImpl.fromJson;

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
  _$$DuaeImplCopyWith<_$DuaeImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
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
class __$$SubCategoryImplCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$SubCategoryImpl>
    implements _$$SubCategoryImplCopyWith<$Res> {
  __$$SubCategoryImplCopyWithImpl(
      _$SubCategoryImpl _value, $Res Function(_$SubCategoryImpl) _then)
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
    return _then(_$SubCategoryImpl(
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
class _$SubCategoryImpl implements _SubCategory {
  _$SubCategoryImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'categoryId') this.categoryId,
      @JsonKey(name: 'subCategory') this.subCategory,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
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
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      __$$SubCategoryImplCopyWithImpl<_$SubCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryImplToJson(
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
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

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
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
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
abstract class _$$CategoryIdImplCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$CategoryIdImplCopyWith(
          _$CategoryIdImpl value, $Res Function(_$CategoryIdImpl) then) =
      __$$CategoryIdImplCopyWithImpl<$Res>;
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
class __$$CategoryIdImplCopyWithImpl<$Res>
    extends _$CategoryIdCopyWithImpl<$Res, _$CategoryIdImpl>
    implements _$$CategoryIdImplCopyWith<$Res> {
  __$$CategoryIdImplCopyWithImpl(
      _$CategoryIdImpl _value, $Res Function(_$CategoryIdImpl) _then)
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
    return _then(_$CategoryIdImpl(
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
class _$CategoryIdImpl implements _CategoryId {
  _$CategoryIdImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

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
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

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
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
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
abstract class _$$TranslateImplCopyWith<$Res>
    implements $TranslateCopyWith<$Res> {
  factory _$$TranslateImplCopyWith(
          _$TranslateImpl value, $Res Function(_$TranslateImpl) then) =
      __$$TranslateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$TranslateImplCopyWithImpl<$Res>
    extends _$TranslateCopyWithImpl<$Res, _$TranslateImpl>
    implements _$$TranslateImplCopyWith<$Res> {
  __$$TranslateImplCopyWithImpl(
      _$TranslateImpl _value, $Res Function(_$TranslateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TranslateImpl(
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
class _$TranslateImpl implements _Translate {
  _$TranslateImpl(
      {@JsonKey(name: 'language') this.language,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: '_id') this.id});

  factory _$TranslateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateImpl &&
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
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      __$$TranslateImplCopyWithImpl<_$TranslateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateImplToJson(
      this,
    );
  }
}

abstract class _Translate implements Translate {
  factory _Translate(
      {@JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: '_id') final String? id}) = _$TranslateImpl;

  factory _Translate.fromJson(Map<String, dynamic> json) =
      _$TranslateImpl.fromJson;

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
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
