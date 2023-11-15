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
abstract class _$$DuaCategoryModelImplCopyWith<$Res>
    implements $DuaCategoryModelCopyWith<$Res> {
  factory _$$DuaCategoryModelImplCopyWith(_$DuaCategoryModelImpl value,
          $Res Function(_$DuaCategoryModelImpl) then) =
      __$$DuaCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$DuaCategoryModelImplCopyWithImpl<$Res>
    extends _$DuaCategoryModelCopyWithImpl<$Res, _$DuaCategoryModelImpl>
    implements _$$DuaCategoryModelImplCopyWith<$Res> {
  __$$DuaCategoryModelImplCopyWithImpl(_$DuaCategoryModelImpl _value,
      $Res Function(_$DuaCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$DuaCategoryModelImpl(
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
class _$DuaCategoryModelImpl implements _DuaCategoryModel {
  const _$DuaCategoryModelImpl(
      {this.status, this.message, this.error, required this.result});

  factory _$DuaCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaCategoryModelImplFromJson(json);

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
            other is _$DuaCategoryModelImpl &&
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
  _$$DuaCategoryModelImplCopyWith<_$DuaCategoryModelImpl> get copyWith =>
      __$$DuaCategoryModelImplCopyWithImpl<_$DuaCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _DuaCategoryModel implements DuaCategoryModel {
  const factory _DuaCategoryModel(
      {final int? status,
      final String? message,
      final String? error,
      required final Result result}) = _$DuaCategoryModelImpl;

  factory _DuaCategoryModel.fromJson(Map<String, dynamic> json) =
      _$DuaCategoryModelImpl.fromJson;

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
  _$$DuaCategoryModelImplCopyWith<_$DuaCategoryModelImpl> get copyWith =>
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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DuaCategory> duaCategory});
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
    Object? duaCategory = null,
  }) {
    return _then(_$ResultImpl(
      duaCategory: null == duaCategory
          ? _value._duaCategory
          : duaCategory // ignore: cast_nullable_to_non_nullable
              as List<DuaCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required final List<DuaCategory> duaCategory})
      : _duaCategory = duaCategory;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

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
            other is _$ResultImpl &&
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
  const factory _Result({required final List<DuaCategory> duaCategory}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<DuaCategory> get duaCategory;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DuaCategory _$DuaCategoryFromJson(Map<String, dynamic> json) {
  return _DuaCategory.fromJson(json);
}

/// @nodoc
mixin _$DuaCategory {
  @JsonKey(name: "_id")
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
      {@JsonKey(name: "_id") String? id,
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
abstract class _$$DuaCategoryImplCopyWith<$Res>
    implements $DuaCategoryCopyWith<$Res> {
  factory _$$DuaCategoryImplCopyWith(
          _$DuaCategoryImpl value, $Res Function(_$DuaCategoryImpl) then) =
      __$$DuaCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? category,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$DuaCategoryImplCopyWithImpl<$Res>
    extends _$DuaCategoryCopyWithImpl<$Res, _$DuaCategoryImpl>
    implements _$$DuaCategoryImplCopyWith<$Res> {
  __$$DuaCategoryImplCopyWithImpl(
      _$DuaCategoryImpl _value, $Res Function(_$DuaCategoryImpl) _then)
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
    return _then(_$DuaCategoryImpl(
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
class _$DuaCategoryImpl implements _DuaCategory {
  const _$DuaCategoryImpl(
      {@JsonKey(name: "_id") this.id,
      this.category,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$DuaCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaCategoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
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
            other is _$DuaCategoryImpl &&
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
  _$$DuaCategoryImplCopyWith<_$DuaCategoryImpl> get copyWith =>
      __$$DuaCategoryImplCopyWithImpl<_$DuaCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaCategoryImplToJson(
      this,
    );
  }
}

abstract class _DuaCategory implements DuaCategory {
  const factory _DuaCategory(
      {@JsonKey(name: "_id") final String? id,
      final String? category,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$DuaCategoryImpl;

  factory _DuaCategory.fromJson(Map<String, dynamic> json) =
      _$DuaCategoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
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
  _$$DuaCategoryImplCopyWith<_$DuaCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
