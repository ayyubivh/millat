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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_TopOffersModelCopyWith<$Res>
    implements $TopOffersModelCopyWith<$Res> {
  factory _$$_TopOffersModelCopyWith(
          _$_TopOffersModel value, $Res Function(_$_TopOffersModel) then) =
      __$$_TopOffersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, TopOffersResult result});

  @override
  $TopOffersResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_TopOffersModelCopyWithImpl<$Res>
    extends _$TopOffersModelCopyWithImpl<$Res, _$_TopOffersModel>
    implements _$$_TopOffersModelCopyWith<$Res> {
  __$$_TopOffersModelCopyWithImpl(
      _$_TopOffersModel _value, $Res Function(_$_TopOffersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$_TopOffersModel(
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
class _$_TopOffersModel implements _TopOffersModel {
  const _$_TopOffersModel(
      {this.status, this.message, this.error, required this.result});

  factory _$_TopOffersModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopOffersModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopOffersModel &&
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
  _$$_TopOffersModelCopyWith<_$_TopOffersModel> get copyWith =>
      __$$_TopOffersModelCopyWithImpl<_$_TopOffersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopOffersModelToJson(
      this,
    );
  }
}

abstract class _TopOffersModel implements TopOffersModel {
  const factory _TopOffersModel(
      {final int? status,
      final String? message,
      final String? error,
      required final TopOffersResult result}) = _$_TopOffersModel;

  factory _TopOffersModel.fromJson(Map<String, dynamic> json) =
      _$_TopOffersModel.fromJson;

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
  _$$_TopOffersModelCopyWith<_$_TopOffersModel> get copyWith =>
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
abstract class _$$_TopOffersResultCopyWith<$Res>
    implements $TopOffersResultCopyWith<$Res> {
  factory _$$_TopOffersResultCopyWith(
          _$_TopOffersResult value, $Res Function(_$_TopOffersResult) then) =
      __$$_TopOffersResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerItem> banners});
}

/// @nodoc
class __$$_TopOffersResultCopyWithImpl<$Res>
    extends _$TopOffersResultCopyWithImpl<$Res, _$_TopOffersResult>
    implements _$$_TopOffersResultCopyWith<$Res> {
  __$$_TopOffersResultCopyWithImpl(
      _$_TopOffersResult _value, $Res Function(_$_TopOffersResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$_TopOffersResult(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopOffersResult implements _TopOffersResult {
  const _$_TopOffersResult({required final List<BannerItem> banners})
      : _banners = banners;

  factory _$_TopOffersResult.fromJson(Map<String, dynamic> json) =>
      _$$_TopOffersResultFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopOffersResult &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopOffersResultCopyWith<_$_TopOffersResult> get copyWith =>
      __$$_TopOffersResultCopyWithImpl<_$_TopOffersResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopOffersResultToJson(
      this,
    );
  }
}

abstract class _TopOffersResult implements TopOffersResult {
  const factory _TopOffersResult({required final List<BannerItem> banners}) =
      _$_TopOffersResult;

  factory _TopOffersResult.fromJson(Map<String, dynamic> json) =
      _$_TopOffersResult.fromJson;

  @override
  List<BannerItem> get banners;
  @override
  @JsonKey(ignore: true)
  _$$_TopOffersResultCopyWith<_$_TopOffersResult> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerItem _$BannerItemFromJson(Map<String, dynamic> json) {
  return _BannerItem.fromJson(json);
}

/// @nodoc
mixin _$BannerItem {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  SubCategoryId get subCategoryId => throw _privateConstructorUsedError;
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
      SubCategoryId subCategoryId,
      String subCategoryName,
      String image,
      int? discount,
      String? url,
      String createdAt,
      String updatedAt});

  $SubCategoryIdCopyWith<$Res> get subCategoryId;
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
    Object? subCategoryId = null,
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
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId,
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
  $SubCategoryIdCopyWith<$Res> get subCategoryId {
    return $SubCategoryIdCopyWith<$Res>(_value.subCategoryId, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BannerItemCopyWith<$Res>
    implements $BannerItemCopyWith<$Res> {
  factory _$$_BannerItemCopyWith(
          _$_BannerItem value, $Res Function(_$_BannerItem) then) =
      __$$_BannerItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      SubCategoryId subCategoryId,
      String subCategoryName,
      String image,
      int? discount,
      String? url,
      String createdAt,
      String updatedAt});

  @override
  $SubCategoryIdCopyWith<$Res> get subCategoryId;
}

/// @nodoc
class __$$_BannerItemCopyWithImpl<$Res>
    extends _$BannerItemCopyWithImpl<$Res, _$_BannerItem>
    implements _$$_BannerItemCopyWith<$Res> {
  __$$_BannerItemCopyWithImpl(
      _$_BannerItem _value, $Res Function(_$_BannerItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subCategoryId = null,
    Object? subCategoryName = null,
    Object? image = null,
    Object? discount = freezed,
    Object? url = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_BannerItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId,
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
class _$_BannerItem implements _BannerItem {
  const _$_BannerItem(
      {@JsonKey(name: "_id") required this.id,
      required this.subCategoryId,
      required this.subCategoryName,
      required this.image,
      this.discount,
      this.url,
      required this.createdAt,
      required this.updatedAt});

  factory _$_BannerItem.fromJson(Map<String, dynamic> json) =>
      _$$_BannerItemFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final SubCategoryId subCategoryId;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerItem &&
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
  _$$_BannerItemCopyWith<_$_BannerItem> get copyWith =>
      __$$_BannerItemCopyWithImpl<_$_BannerItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerItemToJson(
      this,
    );
  }
}

abstract class _BannerItem implements BannerItem {
  const factory _BannerItem(
      {@JsonKey(name: "_id") required final String id,
      required final SubCategoryId subCategoryId,
      required final String subCategoryName,
      required final String image,
      final int? discount,
      final String? url,
      required final String createdAt,
      required final String updatedAt}) = _$_BannerItem;

  factory _BannerItem.fromJson(Map<String, dynamic> json) =
      _$_BannerItem.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  SubCategoryId get subCategoryId;
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
  _$$_BannerItemCopyWith<_$_BannerItem> get copyWith =>
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
abstract class _$$_SubCategoryIdCopyWith<$Res>
    implements $SubCategoryIdCopyWith<$Res> {
  factory _$$_SubCategoryIdCopyWith(
          _$_SubCategoryId value, $Res Function(_$_SubCategoryId) then) =
      __$$_SubCategoryIdCopyWithImpl<$Res>;
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
    Object? categoryId = freezed,
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_SubCategoryId(
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
class _$_SubCategoryId implements _SubCategoryId {
  const _$_SubCategoryId(
      {@JsonKey(name: '_id') required this.id,
      required this.categoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$_SubCategoryId.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryIdFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryId &&
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
  const factory _SubCategoryId(
      {@JsonKey(name: '_id') required final String id,
      required final CategoryId? categoryId,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$_SubCategoryId;

  factory _SubCategoryId.fromJson(Map<String, dynamic> json) =
      _$_SubCategoryId.fromJson;

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
abstract class _$$_CategoryIdCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$_CategoryIdCopyWith(
          _$_CategoryId value, $Res Function(_$_CategoryId) then) =
      __$$_CategoryIdCopyWithImpl<$Res>;
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
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_CategoryId(
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
class _$_CategoryId implements _CategoryId {
  const _$_CategoryId(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$_CategoryId.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryIdFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryId &&
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
  const factory _CategoryId(
      {@JsonKey(name: '_id') required final String id,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$_CategoryId;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$_CategoryId.fromJson;

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
  _$$_CategoryIdCopyWith<_$_CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}
