// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dua_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuaCategoryModel _$DuaCategoryModelFromJson(Map<String, dynamic> json) {
  return _DuaCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$DuaCategoryModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaCategoryModelCopyWith<DuaCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaCategoryModelCopyWith<$Res> {
  factory $DuaCategoryModelCopyWith(
          DuaCategoryModel value, $Res Function(DuaCategoryModel) then) =
      _$DuaCategoryModelCopyWithImpl<$Res, DuaCategoryModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$DuaCategoryModelCopyWithImpl<$Res, $Val extends DuaCategoryModel>
    implements $DuaCategoryModelCopyWith<$Res> {
  _$DuaCategoryModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DuaCategoryModelCopyWith<$Res>
    implements $DuaCategoryModelCopyWith<$Res> {
  factory _$$_DuaCategoryModelCopyWith(
          _$_DuaCategoryModel value, $Res Function(_$_DuaCategoryModel) then) =
      __$$_DuaCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_DuaCategoryModelCopyWithImpl<$Res>
    extends _$DuaCategoryModelCopyWithImpl<$Res, _$_DuaCategoryModel>
    implements _$$_DuaCategoryModelCopyWith<$Res> {
  __$$_DuaCategoryModelCopyWithImpl(
      _$_DuaCategoryModel _value, $Res Function(_$_DuaCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$_DuaCategoryModel(
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
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DuaCategoryModel implements _DuaCategoryModel {
  const _$_DuaCategoryModel(
      {this.status, this.message, this.error, required this.result});

  factory _$_DuaCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DuaCategoryModelFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final Result result;

  @override
  String toString() {
    return 'DuaCategoryModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaCategoryModel &&
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
  _$$_DuaCategoryModelCopyWith<_$_DuaCategoryModel> get copyWith =>
      __$$_DuaCategoryModelCopyWithImpl<_$_DuaCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaCategoryModelToJson(
      this,
    );
  }
}

abstract class _DuaCategoryModel implements DuaCategoryModel {
  const factory _DuaCategoryModel(
      {final int? status,
      final String? message,
      final String? error,
      required final Result result}) = _$_DuaCategoryModel;

  factory _DuaCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_DuaCategoryModel.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$_DuaCategoryModelCopyWith<_$_DuaCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<DuaCategory> get duaCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<DuaCategory> duaCategory});
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
    Object? duaCategory = null,
  }) {
    return _then(_value.copyWith(
      duaCategory: null == duaCategory
          ? _value.duaCategory
          : duaCategory // ignore: cast_nullable_to_non_nullable
              as List<DuaCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DuaCategory> duaCategory});
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
    Object? duaCategory = null,
  }) {
    return _then(_$_Result(
      duaCategory: null == duaCategory
          ? _value._duaCategory
          : duaCategory // ignore: cast_nullable_to_non_nullable
              as List<DuaCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required final List<DuaCategory> duaCategory})
      : _duaCategory = duaCategory;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<DuaCategory> _duaCategory;
  @override
  List<DuaCategory> get duaCategory {
    if (_duaCategory is EqualUnmodifiableListView) return _duaCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duaCategory);
  }

  @override
  String toString() {
    return 'Result(duaCategory: $duaCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality()
                .equals(other._duaCategory, _duaCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_duaCategory));

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
  const factory _Result({required final List<DuaCategory> duaCategory}) =
      _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<DuaCategory> get duaCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

DuaCategory _$DuaCategoryFromJson(Map<String, dynamic> json) {
  return _DuaCategory.fromJson(json);
}

/// @nodoc
mixin _$DuaCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaCategoryCopyWith<DuaCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaCategoryCopyWith<$Res> {
  factory $DuaCategoryCopyWith(
          DuaCategory value, $Res Function(DuaCategory) then) =
      _$DuaCategoryCopyWithImpl<$Res, DuaCategory>;
  @useResult
  $Res call(
      {String? id,
      String? category,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$DuaCategoryCopyWithImpl<$Res, $Val extends DuaCategory>
    implements $DuaCategoryCopyWith<$Res> {
  _$DuaCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$_DuaCategoryCopyWith<$Res>
    implements $DuaCategoryCopyWith<$Res> {
  factory _$$_DuaCategoryCopyWith(
          _$_DuaCategory value, $Res Function(_$_DuaCategory) then) =
      __$$_DuaCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? category,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_DuaCategoryCopyWithImpl<$Res>
    extends _$DuaCategoryCopyWithImpl<$Res, _$_DuaCategory>
    implements _$$_DuaCategoryCopyWith<$Res> {
  __$$_DuaCategoryCopyWithImpl(
      _$_DuaCategory _value, $Res Function(_$_DuaCategory) _then)
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
    return _then(_$_DuaCategory(
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
class _$_DuaCategory implements _DuaCategory {
  const _$_DuaCategory(
      {this.id, this.category, this.image, this.createdAt, this.updatedAt});

  factory _$_DuaCategory.fromJson(Map<String, dynamic> json) =>
      _$$_DuaCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? category;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'DuaCategory(id: $id, category: $category, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuaCategory &&
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
  _$$_DuaCategoryCopyWith<_$_DuaCategory> get copyWith =>
      __$$_DuaCategoryCopyWithImpl<_$_DuaCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DuaCategoryToJson(
      this,
    );
  }
}

abstract class _DuaCategory implements DuaCategory {
  const factory _DuaCategory(
      {final String? id,
      final String? category,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$_DuaCategory;

  factory _DuaCategory.fromJson(Map<String, dynamic> json) =
      _$_DuaCategory.fromJson;

  @override
  String? get id;
  @override
  String? get category;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DuaCategoryCopyWith<_$_DuaCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
