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
  BannersResult? get result => throw _privateConstructorUsedError;

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
  $Res call(
      {int? status, String? message, String? error, BannersResult? result});

  $BannersResultCopyWith<$Res>? get result;
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
              as BannersResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannersResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $BannersResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LargeDiscountModelCopyWith<$Res>
    implements $LargeDiscountModelCopyWith<$Res> {
  factory _$$_LargeDiscountModelCopyWith(_$_LargeDiscountModel value,
          $Res Function(_$_LargeDiscountModel) then) =
      __$$_LargeDiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, BannersResult? result});

  @override
  $BannersResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_LargeDiscountModelCopyWithImpl<$Res>
    extends _$LargeDiscountModelCopyWithImpl<$Res, _$_LargeDiscountModel>
    implements _$$_LargeDiscountModelCopyWith<$Res> {
  __$$_LargeDiscountModelCopyWithImpl(
      _$_LargeDiscountModel _value, $Res Function(_$_LargeDiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_LargeDiscountModel(
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
              as BannersResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LargeDiscountModel implements _LargeDiscountModel {
  const _$_LargeDiscountModel(
      {this.status, this.message, this.error, this.result});

  factory _$_LargeDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_LargeDiscountModelFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final BannersResult? result;

  @override
  String toString() {
    return 'LargeDiscountModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LargeDiscountModel &&
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
  _$$_LargeDiscountModelCopyWith<_$_LargeDiscountModel> get copyWith =>
      __$$_LargeDiscountModelCopyWithImpl<_$_LargeDiscountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LargeDiscountModelToJson(
      this,
    );
  }
}

abstract class _LargeDiscountModel implements LargeDiscountModel {
  const factory _LargeDiscountModel(
      {final int? status,
      final String? message,
      final String? error,
      final BannersResult? result}) = _$_LargeDiscountModel;

  factory _LargeDiscountModel.fromJson(Map<String, dynamic> json) =
      _$_LargeDiscountModel.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  BannersResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_LargeDiscountModelCopyWith<_$_LargeDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BannersResult _$BannersResultFromJson(Map<String, dynamic> json) {
  return _BannersResult.fromJson(json);
}

/// @nodoc
mixin _$BannersResult {
  List<BannerItem>? get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersResultCopyWith<BannersResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersResultCopyWith<$Res> {
  factory $BannersResultCopyWith(
          BannersResult value, $Res Function(BannersResult) then) =
      _$BannersResultCopyWithImpl<$Res, BannersResult>;
  @useResult
  $Res call({List<BannerItem>? banners});
}

/// @nodoc
class _$BannersResultCopyWithImpl<$Res, $Val extends BannersResult>
    implements $BannersResultCopyWith<$Res> {
  _$BannersResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_value.copyWith(
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannersResultCopyWith<$Res>
    implements $BannersResultCopyWith<$Res> {
  factory _$$_BannersResultCopyWith(
          _$_BannersResult value, $Res Function(_$_BannersResult) then) =
      __$$_BannersResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerItem>? banners});
}

/// @nodoc
class __$$_BannersResultCopyWithImpl<$Res>
    extends _$BannersResultCopyWithImpl<$Res, _$_BannersResult>
    implements _$$_BannersResultCopyWith<$Res> {
  __$$_BannersResultCopyWithImpl(
      _$_BannersResult _value, $Res Function(_$_BannersResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_$_BannersResult(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannersResult implements _BannersResult {
  const _$_BannersResult({final List<BannerItem>? banners})
      : _banners = banners;

  factory _$_BannersResult.fromJson(Map<String, dynamic> json) =>
      _$$_BannersResultFromJson(json);

  final List<BannerItem>? _banners;
  @override
  List<BannerItem>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BannersResult(banners: $banners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannersResult &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannersResultCopyWith<_$_BannersResult> get copyWith =>
      __$$_BannersResultCopyWithImpl<_$_BannersResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannersResultToJson(
      this,
    );
  }
}

abstract class _BannersResult implements BannersResult {
  const factory _BannersResult({final List<BannerItem>? banners}) =
      _$_BannersResult;

  factory _BannersResult.fromJson(Map<String, dynamic> json) =
      _$_BannersResult.fromJson;

  @override
  List<BannerItem>? get banners;
  @override
  @JsonKey(ignore: true)
  _$$_BannersResultCopyWith<_$_BannersResult> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerItem _$BannerItemFromJson(Map<String, dynamic> json) {
  return _BannerItem.fromJson(json);
}

/// @nodoc
mixin _$BannerItem {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get subCategoryId => throw _privateConstructorUsedError;
  String? get subCategoryName => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "_id") String? id,
      String? subCategoryId,
      String? subCategoryName,
      String? url,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? id = freezed,
    Object? subCategoryId = freezed,
    Object? subCategoryName = freezed,
    Object? url = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryName: freezed == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_BannerItemCopyWith<$Res>
    implements $BannerItemCopyWith<$Res> {
  factory _$$_BannerItemCopyWith(
          _$_BannerItem value, $Res Function(_$_BannerItem) then) =
      __$$_BannerItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? subCategoryId,
      String? subCategoryName,
      String? url,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? id = freezed,
    Object? subCategoryId = freezed,
    Object? subCategoryName = freezed,
    Object? url = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BannerItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryName: freezed == subCategoryName
          ? _value.subCategoryName
          : subCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$_BannerItem implements _BannerItem {
  const _$_BannerItem(
      {@JsonKey(name: "_id") this.id,
      this.subCategoryId,
      this.subCategoryName,
      this.url,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$_BannerItem.fromJson(Map<String, dynamic> json) =>
      _$$_BannerItemFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? subCategoryId;
  @override
  final String? subCategoryName;
  @override
  final String? url;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BannerItem(id: $id, subCategoryId: $subCategoryId, subCategoryName: $subCategoryName, url: $url, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subCategoryId,
      subCategoryName, url, image, createdAt, updatedAt);

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
      {@JsonKey(name: "_id") final String? id,
      final String? subCategoryId,
      final String? subCategoryName,
      final String? url,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$_BannerItem;

  factory _BannerItem.fromJson(Map<String, dynamic> json) =
      _$_BannerItem.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get subCategoryId;
  @override
  String? get subCategoryName;
  @override
  String? get url;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BannerItemCopyWith<_$_BannerItem> get copyWith =>
      throw _privateConstructorUsedError;
}
