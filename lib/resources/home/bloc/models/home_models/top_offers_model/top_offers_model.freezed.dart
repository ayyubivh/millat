// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_offers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopOffersModel _$TopOffersModelFromJson(Map<String, dynamic> json) {
  return _TopOffersModel.fromJson(json);
}

/// @nodoc
mixin _$TopOffersModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  TopOffersResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopOffersModelCopyWith<TopOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopOffersModelCopyWith<$Res> {
  factory $TopOffersModelCopyWith(
          TopOffersModel value, $Res Function(TopOffersModel) then) =
      _$TopOffersModelCopyWithImpl<$Res, TopOffersModel>;
  @useResult
  $Res call(
      {int? status, String? message, String? error, TopOffersResult result});

  $TopOffersResultCopyWith<$Res> get result;
}

/// @nodoc
class _$TopOffersModelCopyWithImpl<$Res, $Val extends TopOffersModel>
    implements $TopOffersModelCopyWith<$Res> {
  _$TopOffersModelCopyWithImpl(this._value, this._then);

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
              as TopOffersResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopOffersResultCopyWith<$Res> get result {
    return $TopOffersResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopOffersModelImplCopyWith<$Res>
    implements $TopOffersModelCopyWith<$Res> {
  factory _$$TopOffersModelImplCopyWith(_$TopOffersModelImpl value,
          $Res Function(_$TopOffersModelImpl) then) =
      __$$TopOffersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, TopOffersResult result});

  @override
  $TopOffersResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$TopOffersModelImplCopyWithImpl<$Res>
    extends _$TopOffersModelCopyWithImpl<$Res, _$TopOffersModelImpl>
    implements _$$TopOffersModelImplCopyWith<$Res> {
  __$$TopOffersModelImplCopyWithImpl(
      _$TopOffersModelImpl _value, $Res Function(_$TopOffersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$TopOffersModelImpl(
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
              as TopOffersResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopOffersModelImpl implements _TopOffersModel {
  const _$TopOffersModelImpl(
      {this.status, this.message, this.error, required this.result});

  factory _$TopOffersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopOffersModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final TopOffersResult result;

  @override
  String toString() {
    return 'TopOffersModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopOffersModelImpl &&
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
  _$$TopOffersModelImplCopyWith<_$TopOffersModelImpl> get copyWith =>
      __$$TopOffersModelImplCopyWithImpl<_$TopOffersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopOffersModelImplToJson(
      this,
    );
  }
}

abstract class _TopOffersModel implements TopOffersModel {
  const factory _TopOffersModel(
      {final int? status,
      final String? message,
      final String? error,
      required final TopOffersResult result}) = _$TopOffersModelImpl;

  factory _TopOffersModel.fromJson(Map<String, dynamic> json) =
      _$TopOffersModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  TopOffersResult get result;
  @override
  @JsonKey(ignore: true)
  _$$TopOffersModelImplCopyWith<_$TopOffersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopOffersResult _$TopOffersResultFromJson(Map<String, dynamic> json) {
  return _TopOffersResult.fromJson(json);
}

/// @nodoc
mixin _$TopOffersResult {
  List<BannerItem> get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopOffersResultCopyWith<TopOffersResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopOffersResultCopyWith<$Res> {
  factory $TopOffersResultCopyWith(
          TopOffersResult value, $Res Function(TopOffersResult) then) =
      _$TopOffersResultCopyWithImpl<$Res, TopOffersResult>;
  @useResult
  $Res call({List<BannerItem> banners});
}

/// @nodoc
class _$TopOffersResultCopyWithImpl<$Res, $Val extends TopOffersResult>
    implements $TopOffersResultCopyWith<$Res> {
  _$TopOffersResultCopyWithImpl(this._value, this._then);

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
abstract class _$$TopOffersResultImplCopyWith<$Res>
    implements $TopOffersResultCopyWith<$Res> {
  factory _$$TopOffersResultImplCopyWith(_$TopOffersResultImpl value,
          $Res Function(_$TopOffersResultImpl) then) =
      __$$TopOffersResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerItem> banners});
}

/// @nodoc
class __$$TopOffersResultImplCopyWithImpl<$Res>
    extends _$TopOffersResultCopyWithImpl<$Res, _$TopOffersResultImpl>
    implements _$$TopOffersResultImplCopyWith<$Res> {
  __$$TopOffersResultImplCopyWithImpl(
      _$TopOffersResultImpl _value, $Res Function(_$TopOffersResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$TopOffersResultImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopOffersResultImpl implements _TopOffersResult {
  const _$TopOffersResultImpl({required final List<BannerItem> banners})
      : _banners = banners;

  factory _$TopOffersResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopOffersResultImplFromJson(json);

  final List<BannerItem> _banners;
  @override
  List<BannerItem> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'TopOffersResult(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopOffersResultImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopOffersResultImplCopyWith<_$TopOffersResultImpl> get copyWith =>
      __$$TopOffersResultImplCopyWithImpl<_$TopOffersResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopOffersResultImplToJson(
      this,
    );
  }
}

abstract class _TopOffersResult implements TopOffersResult {
  const factory _TopOffersResult({required final List<BannerItem> banners}) =
      _$TopOffersResultImpl;

  factory _TopOffersResult.fromJson(Map<String, dynamic> json) =
      _$TopOffersResultImpl.fromJson;

  @override
  List<BannerItem> get banners;
  @override
  @JsonKey(ignore: true)
  _$$TopOffersResultImplCopyWith<_$TopOffersResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerItem _$BannerItemFromJson(Map<String, dynamic> json) {
  return _BannerItem.fromJson(json);
}

/// @nodoc
mixin _$BannerItem {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  SubCategoryId? get subCategoryId => throw _privateConstructorUsedError;
  String get subCategoryName => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String id,
      SubCategoryId? subCategoryId,
      String subCategoryName,
      String image,
      int? discount,
      String? url,
      String createdAt,
      String updatedAt});

  $SubCategoryIdCopyWith<$Res>? get subCategoryId;
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
    Object? subCategoryName = null,
    Object? image = null,
    Object? discount = freezed,
    Object? url = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId?,
      subCategoryName: null == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $SubCategoryIdCopyWith<$Res>? get subCategoryId {
    if (_value.subCategoryId == null) {
      return null;
    }

    return $SubCategoryIdCopyWith<$Res>(_value.subCategoryId!, (value) {
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
      {@JsonKey(name: "_id") String id,
      SubCategoryId? subCategoryId,
      String subCategoryName,
      String image,
      int? discount,
      String? url,
      String createdAt,
      String updatedAt});

  @override
  $SubCategoryIdCopyWith<$Res>? get subCategoryId;
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
    Object? subCategoryName = null,
    Object? image = null,
    Object? discount = freezed,
    Object? url = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BannerItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId?,
      subCategoryName: null == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$BannerItemImpl implements _BannerItem {
  const _$BannerItemImpl(
      {@JsonKey(name: "_id") required this.id,
      this.subCategoryId,
      required this.subCategoryName,
      required this.image,
      this.discount,
      this.url,
      required this.createdAt,
      required this.updatedAt});

  factory _$BannerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerItemImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final SubCategoryId? subCategoryId;
  @override
  final String subCategoryName;
  @override
  final String image;
  @override
  final int? discount;
  @override
  final String? url;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'BannerItem(id: $id, subCategoryId: $subCategoryId, subCategoryName: $subCategoryName, image: $image, discount: $discount, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subCategoryId,
      subCategoryName, image, discount, url, createdAt, updatedAt);

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
      {@JsonKey(name: "_id") required final String id,
      final SubCategoryId? subCategoryId,
      required final String subCategoryName,
      required final String image,
      final int? discount,
      final String? url,
      required final String createdAt,
      required final String updatedAt}) = _$BannerItemImpl;

  factory _BannerItem.fromJson(Map<String, dynamic> json) =
      _$BannerItemImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  SubCategoryId? get subCategoryId;
  @override
  String get subCategoryName;
  @override
  String get image;
  @override
  int? get discount;
  @override
  String? get url;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BannerItemImplCopyWith<_$BannerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategoryId _$SubCategoryIdFromJson(Map<String, dynamic> json) {
  return _SubCategoryId.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryId {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  CategoryId? get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
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
      CategoryId? categoryId,
      String title,
      String image,
      String createdAt,
      String updatedAt});

  $CategoryIdCopyWith<$Res>? get categoryId;
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
    Object? categoryId = freezed,
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubCategoryIdImplCopyWith<$Res>
    implements $SubCategoryIdCopyWith<$Res> {
  factory _$$SubCategoryIdImplCopyWith(
          _$SubCategoryIdImpl value, $Res Function(_$SubCategoryIdImpl) then) =
      __$$SubCategoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      CategoryId? categoryId,
      String title,
      String image,
      String createdAt,
      String updatedAt});

  @override
  $CategoryIdCopyWith<$Res>? get categoryId;
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
    Object? categoryId = freezed,
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubCategoryIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$SubCategoryIdImpl implements _SubCategoryId {
  const _$SubCategoryIdImpl(
      {@JsonKey(name: '_id') required this.id,
      this.categoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$SubCategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final CategoryId? categoryId;
  @override
  final String title;
  @override
  final String image;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'SubCategoryId(id: $id, categoryId: $categoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryIdImpl &&
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
  const factory _SubCategoryId(
      {@JsonKey(name: '_id') required final String id,
      final CategoryId? categoryId,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$SubCategoryIdImpl;

  factory _SubCategoryId.fromJson(Map<String, dynamic> json) =
      _$SubCategoryIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  CategoryId? get categoryId;
  @override
  String get title;
  @override
  String get image;
  @override
  String get createdAt;
  @override
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
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
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
      String title,
      String image,
      String createdAt,
      String updatedAt});
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
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      String title,
      String image,
      String createdAt,
      String updatedAt});
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
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CategoryIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
  const _$CategoryIdImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'CategoryId(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
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
  const factory _CategoryId(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
