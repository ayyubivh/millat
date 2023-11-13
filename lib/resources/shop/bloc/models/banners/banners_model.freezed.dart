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
  return _BanersModel.fromJson(json);
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
abstract class _$$BanersModelImplCopyWith<$Res>
    implements $BannersModelCopyWith<$Res> {
  factory _$$BanersModelImplCopyWith(
          _$BanersModelImpl value, $Res Function(_$BanersModelImpl) then) =
      __$$BanersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, BannerResult? result});

  @override
  $BannerResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$BanersModelImplCopyWithImpl<$Res>
    extends _$BannersModelCopyWithImpl<$Res, _$BanersModelImpl>
    implements _$$BanersModelImplCopyWith<$Res> {
  __$$BanersModelImplCopyWithImpl(
      _$BanersModelImpl _value, $Res Function(_$BanersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$BanersModelImpl(
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
class _$BanersModelImpl implements _BanersModel {
  const _$BanersModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$BanersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanersModelImplFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanersModelImpl &&
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
  _$$BanersModelImplCopyWith<_$BanersModelImpl> get copyWith =>
      __$$BanersModelImplCopyWithImpl<_$BanersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BanersModelImplToJson(
      this,
    );
  }
}

abstract class _BanersModel implements BannersModel {
  const factory _BanersModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final BannerResult? result}) = _$BanersModelImpl;

  factory _BanersModel.fromJson(Map<String, dynamic> json) =
      _$BanersModelImpl.fromJson;

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
  _$$BanersModelImplCopyWith<_$BanersModelImpl> get copyWith =>
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
  bool operator ==(dynamic other) {
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
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "slug") String slug,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "updatedAt") String updatedAt});
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
    Object? id = null,
    Object? title = null,
    Object? slug = null,
    Object? image = null,
    Object? url = null,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BannersImplCopyWith<$Res> implements $BannersCopyWith<$Res> {
  factory _$$BannersImplCopyWith(
          _$BannersImpl value, $Res Function(_$BannersImpl) then) =
      __$$BannersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "slug") String slug,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "updatedAt") String updatedAt});
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
    Object? id = null,
    Object? title = null,
    Object? slug = null,
    Object? image = null,
    Object? url = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BannersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$BannersImpl implements _Banners {
  const _$BannersImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "slug") required this.slug,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt});

  factory _$BannersImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannersImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "slug")
  final String slug;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String updatedAt;

  @override
  String toString() {
    return 'Banners(id: $id, title: $title, slug: $slug, image: $image, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, slug, image, url, createdAt, updatedAt);

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
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "slug") required final String slug,
          @JsonKey(name: "image") required final String image,
          @JsonKey(name: "url") required final String url,
          @JsonKey(name: "createdAt") required final String createdAt,
          @JsonKey(name: "updatedAt") required final String updatedAt}) =
      _$BannersImpl;

  factory _Banners.fromJson(Map<String, dynamic> json) = _$BannersImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "slug")
  String get slug;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BannersImplCopyWith<_$BannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
