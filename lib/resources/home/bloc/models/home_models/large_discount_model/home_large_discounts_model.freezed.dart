// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_large_discounts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LargeDiscountModel _$LargeDiscountModelFromJson(Map<String, dynamic> json) {
  return _LargeDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$LargeDiscountModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LargeDiscountModelCopyWith<LargeDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeDiscountModelCopyWith<$Res> {
  factory $LargeDiscountModelCopyWith(
          LargeDiscountModel value, $Res Function(LargeDiscountModel) then) =
      _$LargeDiscountModelCopyWithImpl<$Res, LargeDiscountModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$LargeDiscountModelCopyWithImpl<$Res, $Val extends LargeDiscountModel>
    implements $LargeDiscountModelCopyWith<$Res> {
  _$LargeDiscountModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LargeDiscountModelImplCopyWith<$Res>
    implements $LargeDiscountModelCopyWith<$Res> {
  factory _$$LargeDiscountModelImplCopyWith(_$LargeDiscountModelImpl value,
          $Res Function(_$LargeDiscountModelImpl) then) =
      __$$LargeDiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$LargeDiscountModelImplCopyWithImpl<$Res>
    extends _$LargeDiscountModelCopyWithImpl<$Res, _$LargeDiscountModelImpl>
    implements _$$LargeDiscountModelImplCopyWith<$Res> {
  __$$LargeDiscountModelImplCopyWithImpl(_$LargeDiscountModelImpl _value,
      $Res Function(_$LargeDiscountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$LargeDiscountModelImpl(
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
class _$LargeDiscountModelImpl implements _LargeDiscountModel {
  const _$LargeDiscountModelImpl(
      {this.status, this.message, this.error, this.result});

  factory _$LargeDiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeDiscountModelImplFromJson(json);

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
    return 'LargeDiscountModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeDiscountModelImpl &&
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
  _$$LargeDiscountModelImplCopyWith<_$LargeDiscountModelImpl> get copyWith =>
      __$$LargeDiscountModelImplCopyWithImpl<_$LargeDiscountModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeDiscountModelImplToJson(
      this,
    );
  }
}

abstract class _LargeDiscountModel implements LargeDiscountModel {
  const factory _LargeDiscountModel(
      {final int? status,
      final String? message,
      final String? error,
      final Result? result}) = _$LargeDiscountModelImpl;

  factory _LargeDiscountModel.fromJson(Map<String, dynamic> json) =
      _$LargeDiscountModelImpl.fromJson;

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
  _$$LargeDiscountModelImplCopyWith<_$LargeDiscountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<BannerItem> get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<BannerItem> banners});
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
    Object? banners = null,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>,
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
  $Res call({List<BannerItem> banners});
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
    Object? banners = null,
  }) {
    return _then(_$ResultImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required final List<BannerItem> banners})
      : _banners = banners;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<BannerItem> _banners;
  @override
  List<BannerItem> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'Result(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

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
  const factory _Result({required final List<BannerItem> banners}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<BannerItem> get banners;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerItem _$BannerItemFromJson(Map<String, dynamic> json) {
  return _BannerItem.fromJson(json);
}

/// @nodoc
mixin _$BannerItem {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  SubCategory? get subCategoryId => throw _privateConstructorUsedError;
  String? get subCategoryName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerItemCopyWith<BannerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerItemCopyWith<$Res> {
  factory $BannerItemCopyWith(
          BannerItem value, $Res Function(BannerItem) then) =
      _$BannerItemCopyWithImpl<$Res, BannerItem>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      SubCategory? subCategoryId,
      String? subCategoryName,
      String? image,
      String? url,
      String? createdAt,
      String? updatedAt});

  $SubCategoryCopyWith<$Res>? get subCategoryId;
}

/// @nodoc
class _$BannerItemCopyWithImpl<$Res, $Val extends BannerItem>
    implements $BannerItemCopyWith<$Res> {
  _$BannerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subCategoryId = freezed,
    Object? subCategoryName = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      subCategoryName: freezed == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
  $SubCategoryCopyWith<$Res>? get subCategoryId {
    if (_value.subCategoryId == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.subCategoryId!, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BannerItemImplCopyWith<$Res>
    implements $BannerItemCopyWith<$Res> {
  factory _$$BannerItemImplCopyWith(
          _$BannerItemImpl value, $Res Function(_$BannerItemImpl) then) =
      __$$BannerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      SubCategory? subCategoryId,
      String? subCategoryName,
      String? image,
      String? url,
      String? createdAt,
      String? updatedAt});

  @override
  $SubCategoryCopyWith<$Res>? get subCategoryId;
}

/// @nodoc
class __$$BannerItemImplCopyWithImpl<$Res>
    extends _$BannerItemCopyWithImpl<$Res, _$BannerItemImpl>
    implements _$$BannerItemImplCopyWith<$Res> {
  __$$BannerItemImplCopyWithImpl(
      _$BannerItemImpl _value, $Res Function(_$BannerItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subCategoryId = freezed,
    Object? subCategoryName = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BannerItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      subCategoryName: freezed == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$BannerItemImpl implements _BannerItem {
  const _$BannerItemImpl(
      {@JsonKey(name: '_id') required this.id,
      this.subCategoryId,
      this.subCategoryName,
      this.image,
      this.url,
      this.createdAt,
      this.updatedAt});

  factory _$BannerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerItemImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final SubCategory? subCategoryId;
  @override
  final String? subCategoryName;
  @override
  final String? image;
  @override
  final String? url;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BannerItem(id: $id, subCategoryId: $subCategoryId, subCategoryName: $subCategoryName, image: $image, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.subCategoryName, subCategoryName) ||
                other.subCategoryName == subCategoryName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subCategoryId,
      subCategoryName, image, url, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerItemImplCopyWith<_$BannerItemImpl> get copyWith =>
      __$$BannerItemImplCopyWithImpl<_$BannerItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerItemImplToJson(
      this,
    );
  }
}

abstract class _BannerItem implements BannerItem {
  const factory _BannerItem(
      {@JsonKey(name: '_id') required final String id,
      final SubCategory? subCategoryId,
      final String? subCategoryName,
      final String? image,
      final String? url,
      final String? createdAt,
      final String? updatedAt}) = _$BannerItemImpl;

  factory _BannerItem.fromJson(Map<String, dynamic> json) =
      _$BannerItemImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  SubCategory? get subCategoryId;
  @override
  String? get subCategoryName;
  @override
  String? get image;
  @override
  String? get url;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BannerItemImplCopyWith<_$BannerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  Category? get categoryId => throw _privateConstructorUsedError;
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
      {@JsonKey(name: '_id') String id,
      Category? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});

  $CategoryCopyWith<$Res>? get categoryId;
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
    Object? id = null,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as Category?,
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

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get categoryId {
    if (_value.categoryId == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.categoryId!, (value) {
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
      {@JsonKey(name: '_id') String id,
      Category? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});

  @override
  $CategoryCopyWith<$Res>? get categoryId;
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
    Object? id = null,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as Category?,
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
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {@JsonKey(name: '_id') required this.id,
      this.categoryId,
      this.title,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final Category? categoryId;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
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
  const factory _SubCategory(
      {@JsonKey(name: '_id') required final String id,
      final Category? categoryId,
      final String? title,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  Category? get categoryId;
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
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
    return 'Category(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
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
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
