// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dua_subcategory_by_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuaSubcategoryModel _$DuaSubcategoryModelFromJson(Map<String, dynamic> json) {
  return _DuaSubcategoryModel.fromJson(json);
}

/// @nodoc
mixin _$DuaSubcategoryModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaSubcategoryModelCopyWith<DuaSubcategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaSubcategoryModelCopyWith<$Res> {
  factory $DuaSubcategoryModelCopyWith(
          DuaSubcategoryModel value, $Res Function(DuaSubcategoryModel) then) =
      _$DuaSubcategoryModelCopyWithImpl<$Res, DuaSubcategoryModel>;
  @useResult
  $Res call({int status, String message, String error, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$DuaSubcategoryModelCopyWithImpl<$Res, $Val extends DuaSubcategoryModel>
    implements $DuaSubcategoryModelCopyWith<$Res> {
  _$DuaSubcategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DuaSubcategoryModelCopyWith<$Res>
    implements $DuaSubcategoryModelCopyWith<$Res> {
  factory _$$_DuaSubcategoryModelCopyWith(_$_DuaSubcategoryModel value,
          $Res Function(_$_DuaSubcategoryModel) then) =
      __$$_DuaSubcategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String error, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_DuaSubcategoryModelCopyWithImpl<$Res>
    extends _$DuaSubcategoryModelCopyWithImpl<$Res, _$_DuaSubcategoryModel>
    implements _$$_DuaSubcategoryModelCopyWith<$Res> {
  __$$_DuaSubcategoryModelCopyWithImpl(_$_DuaSubcategoryModel _value,
      $Res Function(_$_DuaSubcategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_DuaSubcategoryModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DuaSubcategoryModel implements _DuaSubcategoryModel {
  const _$_DuaSubcategoryModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_DuaSubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DuaSubcategoryModelFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String error;
  @override
  final Result result;

  @override
  String toString() {
    return 'DuaSubcategoryModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaSubcategoryModel &&
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
  _$$_DuaSubcategoryModelCopyWith<_$_DuaSubcategoryModel> get copyWith =>
      __$$_DuaSubcategoryModelCopyWithImpl<_$_DuaSubcategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaSubcategoryModelToJson(
      this,
    );
  }
}

abstract class _DuaSubcategoryModel implements DuaSubcategoryModel {
  const factory _DuaSubcategoryModel(
      {required final int status,
      required final String message,
      required final String error,
      required final Result result}) = _$_DuaSubcategoryModel;

  factory _DuaSubcategoryModel.fromJson(Map<String, dynamic> json) =
      _$_DuaSubcategoryModel.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get error;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$_DuaSubcategoryModelCopyWith<_$_DuaSubcategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<DuaSubCategory>? get duaSubCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<DuaSubCategory>? duaSubCategory});
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
    Object? duaSubCategory = freezed,
  }) {
    return _then(_value.copyWith(
      duaSubCategory: freezed == duaSubCategory
          ? _value.duaSubCategory
          : duaSubCategory // ignore: cast_nullable_to_non_nullable
              as List<DuaSubCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DuaSubCategory>? duaSubCategory});
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
    Object? duaSubCategory = freezed,
  }) {
    return _then(_$_Result(
      duaSubCategory: freezed == duaSubCategory
          ? _value._duaSubCategory
          : duaSubCategory // ignore: cast_nullable_to_non_nullable
              as List<DuaSubCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required final List<DuaSubCategory>? duaSubCategory})
      : _duaSubCategory = duaSubCategory;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<DuaSubCategory>? _duaSubCategory;
  @override
  List<DuaSubCategory>? get duaSubCategory {
    final value = _duaSubCategory;
    if (value == null) return null;
    if (_duaSubCategory is EqualUnmodifiableListView) return _duaSubCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(duaSubCategory: $duaSubCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality()
                .equals(other._duaSubCategory, _duaSubCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_duaSubCategory));

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
  const factory _Result({required final List<DuaSubCategory>? duaSubCategory}) =
      _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<DuaSubCategory>? get duaSubCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

DuaSubCategory _$DuaSubCategoryFromJson(Map<String, dynamic> json) {
  return _DuaSubCategory.fromJson(json);
}

/// @nodoc
mixin _$DuaSubCategory {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  String? get categoryId => throw _privateConstructorUsedError;
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
  $DuaSubCategoryCopyWith<DuaSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaSubCategoryCopyWith<$Res> {
  factory $DuaSubCategoryCopyWith(
          DuaSubCategory value, $Res Function(DuaSubCategory) then) =
      _$DuaSubCategoryCopyWithImpl<$Res, DuaSubCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') String? categoryId,
      @JsonKey(name: 'subCategory') String? subCategory,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$DuaSubCategoryCopyWithImpl<$Res, $Val extends DuaSubCategory>
    implements $DuaSubCategoryCopyWith<$Res> {
  _$DuaSubCategoryCopyWithImpl(this._value, this._then);

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
              as String?,
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
}

/// @nodoc
abstract class _$$_DuaSubCategoryCopyWith<$Res>
    implements $DuaSubCategoryCopyWith<$Res> {
  factory _$$_DuaSubCategoryCopyWith(
          _$_DuaSubCategory value, $Res Function(_$_DuaSubCategory) then) =
      __$$_DuaSubCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') String? categoryId,
      @JsonKey(name: 'subCategory') String? subCategory,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$_DuaSubCategoryCopyWithImpl<$Res>
    extends _$DuaSubCategoryCopyWithImpl<$Res, _$_DuaSubCategory>
    implements _$$_DuaSubCategoryCopyWith<$Res> {
  __$$_DuaSubCategoryCopyWithImpl(
      _$_DuaSubCategory _value, $Res Function(_$_DuaSubCategory) _then)
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
    return _then(_$_DuaSubCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_DuaSubCategory implements _DuaSubCategory {
  const _$_DuaSubCategory(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'categoryId') this.categoryId,
      @JsonKey(name: 'subCategory') this.subCategory,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$_DuaSubCategory.fromJson(Map<String, dynamic> json) =>
      _$$_DuaSubCategoryFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'categoryId')
  final String? categoryId;
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
    return 'DuaSubCategory(id: $id, categoryId: $categoryId, subCategory: $subCategory, count: $count, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaSubCategory &&
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
  _$$_DuaSubCategoryCopyWith<_$_DuaSubCategory> get copyWith =>
      __$$_DuaSubCategoryCopyWithImpl<_$_DuaSubCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaSubCategoryToJson(
      this,
    );
  }
}

abstract class _DuaSubCategory implements DuaSubCategory {
  const factory _DuaSubCategory(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'categoryId') final String? categoryId,
      @JsonKey(name: 'subCategory') final String? subCategory,
      @JsonKey(name: 'count') final int? count,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$_DuaSubCategory;

  factory _DuaSubCategory.fromJson(Map<String, dynamic> json) =
      _$_DuaSubCategory.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'categoryId')
  String? get categoryId;
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
  _$$_DuaSubCategoryCopyWith<_$_DuaSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
