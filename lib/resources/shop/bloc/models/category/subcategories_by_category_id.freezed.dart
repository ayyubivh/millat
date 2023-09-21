// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategories_by_category_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubcategoryByCategoryIdModel _$SubcategoryByCategoryIdModelFromJson(
    Map<String, dynamic> json) {
  return _SubcategoryByCategoryIdModel.fromJson(json);
}

/// @nodoc
mixin _$SubcategoryByCategoryIdModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  ResultModel? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubcategoryByCategoryIdModelCopyWith<SubcategoryByCategoryIdModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryByCategoryIdModelCopyWith<$Res> {
  factory $SubcategoryByCategoryIdModelCopyWith(
          SubcategoryByCategoryIdModel value,
          $Res Function(SubcategoryByCategoryIdModel) then) =
      _$SubcategoryByCategoryIdModelCopyWithImpl<$Res,
          SubcategoryByCategoryIdModel>;
  @useResult
  $Res call({int? status, String? message, String? error, ResultModel? result});

  $ResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$SubcategoryByCategoryIdModelCopyWithImpl<$Res,
        $Val extends SubcategoryByCategoryIdModel>
    implements $SubcategoryByCategoryIdModelCopyWith<$Res> {
  _$SubcategoryByCategoryIdModelCopyWithImpl(this._value, this._then);

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
              as ResultModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubcategoryByCategoryIdModelCopyWith<$Res>
    implements $SubcategoryByCategoryIdModelCopyWith<$Res> {
  factory _$$_SubcategoryByCategoryIdModelCopyWith(
          _$_SubcategoryByCategoryIdModel value,
          $Res Function(_$_SubcategoryByCategoryIdModel) then) =
      __$$_SubcategoryByCategoryIdModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, ResultModel? result});

  @override
  $ResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_SubcategoryByCategoryIdModelCopyWithImpl<$Res>
    extends _$SubcategoryByCategoryIdModelCopyWithImpl<$Res,
        _$_SubcategoryByCategoryIdModel>
    implements _$$_SubcategoryByCategoryIdModelCopyWith<$Res> {
  __$$_SubcategoryByCategoryIdModelCopyWithImpl(
      _$_SubcategoryByCategoryIdModel _value,
      $Res Function(_$_SubcategoryByCategoryIdModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_SubcategoryByCategoryIdModel(
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
              as ResultModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubcategoryByCategoryIdModel implements _SubcategoryByCategoryIdModel {
  _$_SubcategoryByCategoryIdModel(
      {this.status, this.message, this.error, this.result});

  factory _$_SubcategoryByCategoryIdModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubcategoryByCategoryIdModelFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final ResultModel? result;

  @override
  String toString() {
    return 'SubcategoryByCategoryIdModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubcategoryByCategoryIdModel &&
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
  _$$_SubcategoryByCategoryIdModelCopyWith<_$_SubcategoryByCategoryIdModel>
      get copyWith => __$$_SubcategoryByCategoryIdModelCopyWithImpl<
          _$_SubcategoryByCategoryIdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubcategoryByCategoryIdModelToJson(
      this,
    );
  }
}

abstract class _SubcategoryByCategoryIdModel
    implements SubcategoryByCategoryIdModel {
  factory _SubcategoryByCategoryIdModel(
      {final int? status,
      final String? message,
      final String? error,
      final ResultModel? result}) = _$_SubcategoryByCategoryIdModel;

  factory _SubcategoryByCategoryIdModel.fromJson(Map<String, dynamic> json) =
      _$_SubcategoryByCategoryIdModel.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  ResultModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$_SubcategoryByCategoryIdModelCopyWith<_$_SubcategoryByCategoryIdModel>
      get copyWith => throw _privateConstructorUsedError;
}

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  List<SubCategory>? get subCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call({List<SubCategory>? subCategory});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = freezed,
  }) {
    return _then(_value.copyWith(
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$_ResultModelCopyWith(
          _$_ResultModel value, $Res Function(_$_ResultModel) then) =
      __$$_ResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubCategory>? subCategory});
}

/// @nodoc
class __$$_ResultModelCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$_ResultModel>
    implements _$$_ResultModelCopyWith<$Res> {
  __$$_ResultModelCopyWithImpl(
      _$_ResultModel _value, $Res Function(_$_ResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = freezed,
  }) {
    return _then(_$_ResultModel(
      subCategory: freezed == subCategory
          ? _value._subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultModel implements _ResultModel {
  _$_ResultModel({final List<SubCategory>? subCategory})
      : _subCategory = subCategory;

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultModelFromJson(json);

  final List<SubCategory>? _subCategory;
  @override
  List<SubCategory>? get subCategory {
    final value = _subCategory;
    if (value == null) return null;
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResultModel(subCategory: $subCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultModel &&
            const DeepCollectionEquality()
                .equals(other._subCategory, _subCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      __$$_ResultModelCopyWithImpl<_$_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultModelToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  factory _ResultModel({final List<SubCategory>? subCategory}) = _$_ResultModel;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

  @override
  List<SubCategory>? get subCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
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
      {String? id,
      String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? title = freezed,
    Object? image = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SubCategoryCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$_SubCategoryCopyWith(
          _$_SubCategory value, $Res Function(_$_SubCategory) then) =
      __$$_SubCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? title = freezed,
    Object? image = freezed,
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
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_SubCategory implements _SubCategory {
  _$_SubCategory(
      {this.id,
      this.categoryId,
      this.title,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$_SubCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? categoryId;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'SubCategory(id: $id, categoryId: $categoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, categoryId, title, image, createdAt, updatedAt);

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
      {final String? id,
      final String? categoryId,
      final String? title,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$_SubCategory;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$_SubCategory.fromJson;

  @override
  String? get id;
  @override
  String? get categoryId;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
