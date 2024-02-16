// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banners_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannersModel _$BannersModelFromJson(Map<String, dynamic> json) {
  return _BannersModel.fromJson(json);
}

/// @nodoc
mixin _$BannersModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  BannerResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersModelCopyWith<BannersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersModelCopyWith<$Res> {
  factory $BannersModelCopyWith(
          BannersModel value, $Res Function(BannersModel) then) =
      _$BannersModelCopyWithImpl<$Res, BannersModel>;
  @useResult
  $Res call(
      {int? status, String? message, String? error, BannerResult? result});

  $BannerResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$BannersModelCopyWithImpl<$Res, $Val extends BannersModel>
    implements $BannersModelCopyWith<$Res> {
  _$BannersModelCopyWithImpl(this._value, this._then);

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
              as BannerResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $BannerResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BannersModelImplCopyWith<$Res>
    implements $BannersModelCopyWith<$Res> {
  factory _$$BannersModelImplCopyWith(
          _$BannersModelImpl value, $Res Function(_$BannersModelImpl) then) =
      __$$BannersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, BannerResult? result});

  @override
  $BannerResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$BannersModelImplCopyWithImpl<$Res>
    extends _$BannersModelCopyWithImpl<$Res, _$BannersModelImpl>
    implements _$$BannersModelImplCopyWith<$Res> {
  __$$BannersModelImplCopyWithImpl(
      _$BannersModelImpl _value, $Res Function(_$BannersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$BannersModelImpl(
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
              as BannerResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannersModelImpl implements _BannersModel {
  const _$BannersModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$BannersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannersModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final BannerResult? result;

  @override
  String toString() {
    return 'BannersModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersModelImpl &&
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
  _$$BannersModelImplCopyWith<_$BannersModelImpl> get copyWith =>
      __$$BannersModelImplCopyWithImpl<_$BannersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannersModelImplToJson(
      this,
    );
  }
}

abstract class _BannersModel implements BannersModel {
  const factory _BannersModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final BannerResult? result}) = _$BannersModelImpl;

  factory _BannersModel.fromJson(Map<String, dynamic> json) =
      _$BannersModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  BannerResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$BannersModelImplCopyWith<_$BannersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerResult _$BannerResultFromJson(Map<String, dynamic> json) {
  return _BannerResult.fromJson(json);
}

/// @nodoc
mixin _$BannerResult {
  List<Banners>? get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerResultCopyWith<BannerResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerResultCopyWith<$Res> {
  factory $BannerResultCopyWith(
          BannerResult value, $Res Function(BannerResult) then) =
      _$BannerResultCopyWithImpl<$Res, BannerResult>;
  @useResult
  $Res call({List<Banners>? banners});
}

/// @nodoc
class _$BannerResultCopyWithImpl<$Res, $Val extends BannerResult>
    implements $BannerResultCopyWith<$Res> {
  _$BannerResultCopyWithImpl(this._value, this._then);

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
              as List<Banners>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerResultImplCopyWith<$Res>
    implements $BannerResultCopyWith<$Res> {
  factory _$$BannerResultImplCopyWith(
          _$BannerResultImpl value, $Res Function(_$BannerResultImpl) then) =
      __$$BannerResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Banners>? banners});
}

/// @nodoc
class __$$BannerResultImplCopyWithImpl<$Res>
    extends _$BannerResultCopyWithImpl<$Res, _$BannerResultImpl>
    implements _$$BannerResultImplCopyWith<$Res> {
  __$$BannerResultImplCopyWithImpl(
      _$BannerResultImpl _value, $Res Function(_$BannerResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_$BannerResultImpl(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banners>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerResultImpl implements _BannerResult {
  const _$BannerResultImpl({required final List<Banners>? banners})
      : _banners = banners;

  factory _$BannerResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerResultImplFromJson(json);

  final List<Banners>? _banners;
  @override
  List<Banners>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BannerResult(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerResultImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerResultImplCopyWith<_$BannerResultImpl> get copyWith =>
      __$$BannerResultImplCopyWithImpl<_$BannerResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerResultImplToJson(
      this,
    );
  }
}

abstract class _BannerResult implements BannerResult {
  const factory _BannerResult({required final List<Banners>? banners}) =
      _$BannerResultImpl;

  factory _BannerResult.fromJson(Map<String, dynamic> json) =
      _$BannerResultImpl.fromJson;

  @override
  List<Banners>? get banners;
  @override
  @JsonKey(ignore: true)
  _$$BannerResultImplCopyWith<_$BannerResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Banners _$BannersFromJson(Map<String, dynamic> json) {
  return _Banners.fromJson(json);
}

/// @nodoc
mixin _$Banners {
  Routing? get routing => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersCopyWith<Banners> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersCopyWith<$Res> {
  factory $BannersCopyWith(Banners value, $Res Function(Banners) then) =
      _$BannersCopyWithImpl<$Res, Banners>;
  @useResult
  $Res call(
      {Routing? routing,
      @JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      String? image,
      String? url,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: '__v') int? v,
      int? discount,
      String? startDate,
      String? endDate,
      String? status});

  $RoutingCopyWith<$Res>? get routing;
}

/// @nodoc
class _$BannersCopyWithImpl<$Res, $Val extends Banners>
    implements $BannersCopyWith<$Res> {
  _$BannersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routing = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? discount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      routing: freezed == routing
          ? _value.routing
          : routing // ignore: cast_nullable_to_non_nullable
              as Routing?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoutingCopyWith<$Res>? get routing {
    if (_value.routing == null) {
      return null;
    }

    return $RoutingCopyWith<$Res>(_value.routing!, (value) {
      return _then(_value.copyWith(routing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BannersImplCopyWith<$Res> implements $BannersCopyWith<$Res> {
  factory _$$BannersImplCopyWith(
          _$BannersImpl value, $Res Function(_$BannersImpl) then) =
      __$$BannersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Routing? routing,
      @JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      String? image,
      String? url,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: '__v') int? v,
      int? discount,
      String? startDate,
      String? endDate,
      String? status});

  @override
  $RoutingCopyWith<$Res>? get routing;
}

/// @nodoc
class __$$BannersImplCopyWithImpl<$Res>
    extends _$BannersCopyWithImpl<$Res, _$BannersImpl>
    implements _$$BannersImplCopyWith<$Res> {
  __$$BannersImplCopyWithImpl(
      _$BannersImpl _value, $Res Function(_$BannersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routing = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? discount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BannersImpl(
      routing: freezed == routing
          ? _value.routing
          : routing // ignore: cast_nullable_to_non_nullable
              as Routing?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannersImpl implements _Banners {
  const _$BannersImpl(
      {required this.routing,
      @JsonKey(name: '_id') required this.id,
      required this.title,
      required this.slug,
      required this.image,
      required this.url,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '__v') this.v,
      this.discount,
      this.startDate,
      this.endDate,
      this.status});

  factory _$BannersImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannersImplFromJson(json);

  @override
  final Routing? routing;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? image;
  @override
  final String? url;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  final int? discount;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? status;

  @override
  String toString() {
    return 'Banners(routing: $routing, id: $id, title: $title, slug: $slug, image: $image, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, discount: $discount, startDate: $startDate, endDate: $endDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersImpl &&
            (identical(other.routing, routing) || other.routing == routing) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routing, id, title, slug, image,
      url, createdAt, updatedAt, v, discount, startDate, endDate, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannersImplCopyWith<_$BannersImpl> get copyWith =>
      __$$BannersImplCopyWithImpl<_$BannersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannersImplToJson(
      this,
    );
  }
}

abstract class _Banners implements Banners {
  const factory _Banners(
      {required final Routing? routing,
      @JsonKey(name: '_id') required final String? id,
      required final String? title,
      required final String? slug,
      required final String? image,
      required final String? url,
      required final String? createdAt,
      required final String? updatedAt,
      @JsonKey(name: '__v') final int? v,
      final int? discount,
      final String? startDate,
      final String? endDate,
      final String? status}) = _$BannersImpl;

  factory _Banners.fromJson(Map<String, dynamic> json) = _$BannersImpl.fromJson;

  @override
  Routing? get routing;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  String? get image;
  @override
  String? get url;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  int? get discount;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$BannersImplCopyWith<_$BannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Routing _$RoutingFromJson(Map<String, dynamic> json) {
  return _Routing.fromJson(json);
}

/// @nodoc
mixin _$Routing {
  String? get route => throw _privateConstructorUsedError;
  CategoryId? get categoryId => throw _privateConstructorUsedError;
  CategoryId? get subCategoryId => throw _privateConstructorUsedError;
  CategoryId? get itemTypeId => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutingCopyWith<Routing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutingCopyWith<$Res> {
  factory $RoutingCopyWith(Routing value, $Res Function(Routing) then) =
      _$RoutingCopyWithImpl<$Res, Routing>;
  @useResult
  $Res call(
      {String? route,
      CategoryId? categoryId,
      CategoryId? subCategoryId,
      CategoryId? itemTypeId,
      String? city,
      String? country});

  $CategoryIdCopyWith<$Res>? get categoryId;
  $CategoryIdCopyWith<$Res>? get subCategoryId;
  $CategoryIdCopyWith<$Res>? get itemTypeId;
}

/// @nodoc
class _$RoutingCopyWithImpl<$Res, $Val extends Routing>
    implements $RoutingCopyWith<$Res> {
  _$RoutingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? itemTypeId = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      itemTypeId: freezed == itemTypeId
          ? _value.itemTypeId
          : itemTypeId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $CategoryIdCopyWith<$Res>? get subCategoryId {
    if (_value.subCategoryId == null) {
      return null;
    }

    return $CategoryIdCopyWith<$Res>(_value.subCategoryId!, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryIdCopyWith<$Res>? get itemTypeId {
    if (_value.itemTypeId == null) {
      return null;
    }

    return $CategoryIdCopyWith<$Res>(_value.itemTypeId!, (value) {
      return _then(_value.copyWith(itemTypeId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutingImplCopyWith<$Res> implements $RoutingCopyWith<$Res> {
  factory _$$RoutingImplCopyWith(
          _$RoutingImpl value, $Res Function(_$RoutingImpl) then) =
      __$$RoutingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? route,
      CategoryId? categoryId,
      CategoryId? subCategoryId,
      CategoryId? itemTypeId,
      String? city,
      String? country});

  @override
  $CategoryIdCopyWith<$Res>? get categoryId;
  @override
  $CategoryIdCopyWith<$Res>? get subCategoryId;
  @override
  $CategoryIdCopyWith<$Res>? get itemTypeId;
}

/// @nodoc
class __$$RoutingImplCopyWithImpl<$Res>
    extends _$RoutingCopyWithImpl<$Res, _$RoutingImpl>
    implements _$$RoutingImplCopyWith<$Res> {
  __$$RoutingImplCopyWithImpl(
      _$RoutingImpl _value, $Res Function(_$RoutingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? itemTypeId = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_$RoutingImpl(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      itemTypeId: freezed == itemTypeId
          ? _value.itemTypeId
          : itemTypeId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutingImpl implements _Routing {
  const _$RoutingImpl(
      {required this.route,
      required this.categoryId,
      required this.subCategoryId,
      required this.itemTypeId,
      required this.city,
      required this.country});

  factory _$RoutingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutingImplFromJson(json);

  @override
  final String? route;
  @override
  final CategoryId? categoryId;
  @override
  final CategoryId? subCategoryId;
  @override
  final CategoryId? itemTypeId;
  @override
  final String? city;
  @override
  final String? country;

  @override
  String toString() {
    return 'Routing(route: $route, categoryId: $categoryId, subCategoryId: $subCategoryId, itemTypeId: $itemTypeId, city: $city, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutingImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.itemTypeId, itemTypeId) ||
                other.itemTypeId == itemTypeId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, route, categoryId, subCategoryId, itemTypeId, city, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutingImplCopyWith<_$RoutingImpl> get copyWith =>
      __$$RoutingImplCopyWithImpl<_$RoutingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutingImplToJson(
      this,
    );
  }
}

abstract class _Routing implements Routing {
  const factory _Routing(
      {required final String? route,
      required final CategoryId? categoryId,
      required final CategoryId? subCategoryId,
      required final CategoryId? itemTypeId,
      required final String? city,
      required final String? country}) = _$RoutingImpl;

  factory _Routing.fromJson(Map<String, dynamic> json) = _$RoutingImpl.fromJson;

  @override
  String? get route;
  @override
  CategoryId? get categoryId;
  @override
  CategoryId? get subCategoryId;
  @override
  CategoryId? get itemTypeId;
  @override
  String? get city;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$RoutingImplCopyWith<_$RoutingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) {
  return _CategoryId.fromJson(json);
}

/// @nodoc
mixin _$CategoryId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: '_id') String? id, String? title});
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
    Object? title = freezed,
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
  $Res call({@JsonKey(name: '_id') String? id, String? title});
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
    Object? title = freezed,
  }) {
    return _then(_$CategoryIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryIdImpl implements _CategoryId {
  const _$CategoryIdImpl(
      {@JsonKey(name: '_id') required this.id, required this.title});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'CategoryId(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

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
      {@JsonKey(name: '_id') required final String? id,
      required final String? title}) = _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
