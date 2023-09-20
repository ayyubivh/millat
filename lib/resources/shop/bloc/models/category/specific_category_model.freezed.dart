// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecificCategoryModel _$SpecificCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _SpecificCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SpecificCategoryModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecificCategoryModelCopyWith<SpecificCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificCategoryModelCopyWith<$Res> {
  factory $SpecificCategoryModelCopyWith(SpecificCategoryModel value,
          $Res Function(SpecificCategoryModel) then) =
      _$SpecificCategoryModelCopyWithImpl<$Res, SpecificCategoryModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SpecificCategoryModelCopyWithImpl<$Res,
        $Val extends SpecificCategoryModel>
    implements $SpecificCategoryModelCopyWith<$Res> {
  _$SpecificCategoryModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SpecificCategoryModelCopyWith<$Res>
    implements $SpecificCategoryModelCopyWith<$Res> {
  factory _$$_SpecificCategoryModelCopyWith(_$_SpecificCategoryModel value,
          $Res Function(_$_SpecificCategoryModel) then) =
      __$$_SpecificCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_SpecificCategoryModelCopyWithImpl<$Res>
    extends _$SpecificCategoryModelCopyWithImpl<$Res, _$_SpecificCategoryModel>
    implements _$$_SpecificCategoryModelCopyWith<$Res> {
  __$$_SpecificCategoryModelCopyWithImpl(_$_SpecificCategoryModel _value,
      $Res Function(_$_SpecificCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_SpecificCategoryModel(
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
class _$_SpecificCategoryModel implements _SpecificCategoryModel {
  const _$_SpecificCategoryModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_SpecificCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpecificCategoryModelFromJson(json);

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
    return 'SpecificCategoryModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecificCategoryModel &&
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
  _$$_SpecificCategoryModelCopyWith<_$_SpecificCategoryModel> get copyWith =>
      __$$_SpecificCategoryModelCopyWithImpl<_$_SpecificCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecificCategoryModelToJson(
      this,
    );
  }
}

abstract class _SpecificCategoryModel implements SpecificCategoryModel {
  const factory _SpecificCategoryModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$_SpecificCategoryModel;

  factory _SpecificCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_SpecificCategoryModel.fromJson;

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
  _$$_SpecificCategoryModelCopyWith<_$_SpecificCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
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
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
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
    Object? data = freezed,
  }) {
    return _then(_$_Result(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required this.data});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

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
  const factory _Result({required final Data? data}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  BigBannerImage? get bigBannerImage => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<String>? get sliderImage => throw _privateConstructorUsedError;
  List<SmallBannerImage>? get smallBannerImage =>
      throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {BigBannerImage? bigBannerImage,
      String? id,
      String? slug,
      List<String>? sliderImage,
      List<SmallBannerImage>? smallBannerImage,
      String? createdAt,
      String? updatedAt});

  $BigBannerImageCopyWith<$Res>? get bigBannerImage;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bigBannerImage = freezed,
    Object? id = freezed,
    Object? slug = freezed,
    Object? sliderImage = freezed,
    Object? smallBannerImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      bigBannerImage: freezed == bigBannerImage
          ? _value.bigBannerImage
          : bigBannerImage // ignore: cast_nullable_to_non_nullable
              as BigBannerImage?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderImage: freezed == sliderImage
          ? _value.sliderImage
          : sliderImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      smallBannerImage: freezed == smallBannerImage
          ? _value.smallBannerImage
          : smallBannerImage // ignore: cast_nullable_to_non_nullable
              as List<SmallBannerImage>?,
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
  $BigBannerImageCopyWith<$Res>? get bigBannerImage {
    if (_value.bigBannerImage == null) {
      return null;
    }

    return $BigBannerImageCopyWith<$Res>(_value.bigBannerImage!, (value) {
      return _then(_value.copyWith(bigBannerImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigBannerImage? bigBannerImage,
      String? id,
      String? slug,
      List<String>? sliderImage,
      List<SmallBannerImage>? smallBannerImage,
      String? createdAt,
      String? updatedAt});

  @override
  $BigBannerImageCopyWith<$Res>? get bigBannerImage;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bigBannerImage = freezed,
    Object? id = freezed,
    Object? slug = freezed,
    Object? sliderImage = freezed,
    Object? smallBannerImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Data(
      bigBannerImage: freezed == bigBannerImage
          ? _value.bigBannerImage
          : bigBannerImage // ignore: cast_nullable_to_non_nullable
              as BigBannerImage?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderImage: freezed == sliderImage
          ? _value._sliderImage
          : sliderImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      smallBannerImage: freezed == smallBannerImage
          ? _value._smallBannerImage
          : smallBannerImage // ignore: cast_nullable_to_non_nullable
              as List<SmallBannerImage>?,
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
class _$_Data implements _Data {
  const _$_Data(
      {required this.bigBannerImage,
      required this.id,
      required this.slug,
      required final List<String>? sliderImage,
      required final List<SmallBannerImage>? smallBannerImage,
      required this.createdAt,
      required this.updatedAt})
      : _sliderImage = sliderImage,
        _smallBannerImage = smallBannerImage;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final BigBannerImage? bigBannerImage;
  @override
  final String? id;
  @override
  final String? slug;
  final List<String>? _sliderImage;
  @override
  List<String>? get sliderImage {
    final value = _sliderImage;
    if (value == null) return null;
    if (_sliderImage is EqualUnmodifiableListView) return _sliderImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SmallBannerImage>? _smallBannerImage;
  @override
  List<SmallBannerImage>? get smallBannerImage {
    final value = _smallBannerImage;
    if (value == null) return null;
    if (_smallBannerImage is EqualUnmodifiableListView)
      return _smallBannerImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Data(bigBannerImage: $bigBannerImage, id: $id, slug: $slug, sliderImage: $sliderImage, smallBannerImage: $smallBannerImage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.bigBannerImage, bigBannerImage) ||
                other.bigBannerImage == bigBannerImage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._sliderImage, _sliderImage) &&
            const DeepCollectionEquality()
                .equals(other._smallBannerImage, _smallBannerImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bigBannerImage,
      id,
      slug,
      const DeepCollectionEquality().hash(_sliderImage),
      const DeepCollectionEquality().hash(_smallBannerImage),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final BigBannerImage? bigBannerImage,
      required final String? id,
      required final String? slug,
      required final List<String>? sliderImage,
      required final List<SmallBannerImage>? smallBannerImage,
      required final String? createdAt,
      required final String? updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  BigBannerImage? get bigBannerImage;
  @override
  String? get id;
  @override
  String? get slug;
  @override
  List<String>? get sliderImage;
  @override
  List<SmallBannerImage>? get smallBannerImage;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

BigBannerImage _$BigBannerImageFromJson(Map<String, dynamic> json) {
  return _BigBannerImage.fromJson(json);
}

/// @nodoc
mixin _$BigBannerImage {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BigBannerImageCopyWith<BigBannerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BigBannerImageCopyWith<$Res> {
  factory $BigBannerImageCopyWith(
          BigBannerImage value, $Res Function(BigBannerImage) then) =
      _$BigBannerImageCopyWithImpl<$Res, BigBannerImage>;
  @useResult
  $Res call({String? imageUrl, String? url, String? discount});
}

/// @nodoc
class _$BigBannerImageCopyWithImpl<$Res, $Val extends BigBannerImage>
    implements $BigBannerImageCopyWith<$Res> {
  _$BigBannerImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BigBannerImageCopyWith<$Res>
    implements $BigBannerImageCopyWith<$Res> {
  factory _$$_BigBannerImageCopyWith(
          _$_BigBannerImage value, $Res Function(_$_BigBannerImage) then) =
      __$$_BigBannerImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, String? url, String? discount});
}

/// @nodoc
class __$$_BigBannerImageCopyWithImpl<$Res>
    extends _$BigBannerImageCopyWithImpl<$Res, _$_BigBannerImage>
    implements _$$_BigBannerImageCopyWith<$Res> {
  __$$_BigBannerImageCopyWithImpl(
      _$_BigBannerImage _value, $Res Function(_$_BigBannerImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$_BigBannerImage(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BigBannerImage implements _BigBannerImage {
  const _$_BigBannerImage(
      {required this.imageUrl, required this.url, required this.discount});

  factory _$_BigBannerImage.fromJson(Map<String, dynamic> json) =>
      _$$_BigBannerImageFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? url;
  @override
  final String? discount;

  @override
  String toString() {
    return 'BigBannerImage(imageUrl: $imageUrl, url: $url, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BigBannerImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, url, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BigBannerImageCopyWith<_$_BigBannerImage> get copyWith =>
      __$$_BigBannerImageCopyWithImpl<_$_BigBannerImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BigBannerImageToJson(
      this,
    );
  }
}

abstract class _BigBannerImage implements BigBannerImage {
  const factory _BigBannerImage(
      {required final String? imageUrl,
      required final String? url,
      required final String? discount}) = _$_BigBannerImage;

  factory _BigBannerImage.fromJson(Map<String, dynamic> json) =
      _$_BigBannerImage.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get url;
  @override
  String? get discount;
  @override
  @JsonKey(ignore: true)
  _$$_BigBannerImageCopyWith<_$_BigBannerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

SmallBannerImage _$SmallBannerImageFromJson(Map<String, dynamic> json) {
  return _SmallBannerImage.fromJson(json);
}

/// @nodoc
mixin _$SmallBannerImage {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmallBannerImageCopyWith<SmallBannerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmallBannerImageCopyWith<$Res> {
  factory $SmallBannerImageCopyWith(
          SmallBannerImage value, $Res Function(SmallBannerImage) then) =
      _$SmallBannerImageCopyWithImpl<$Res, SmallBannerImage>;
  @useResult
  $Res call({String? imageUrl, String? url, String? discount, String? id});
}

/// @nodoc
class _$SmallBannerImageCopyWithImpl<$Res, $Val extends SmallBannerImage>
    implements $SmallBannerImageCopyWith<$Res> {
  _$SmallBannerImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? discount = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmallBannerImageCopyWith<$Res>
    implements $SmallBannerImageCopyWith<$Res> {
  factory _$$_SmallBannerImageCopyWith(
          _$_SmallBannerImage value, $Res Function(_$_SmallBannerImage) then) =
      __$$_SmallBannerImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, String? url, String? discount, String? id});
}

/// @nodoc
class __$$_SmallBannerImageCopyWithImpl<$Res>
    extends _$SmallBannerImageCopyWithImpl<$Res, _$_SmallBannerImage>
    implements _$$_SmallBannerImageCopyWith<$Res> {
  __$$_SmallBannerImageCopyWithImpl(
      _$_SmallBannerImage _value, $Res Function(_$_SmallBannerImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? discount = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_SmallBannerImage(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SmallBannerImage implements _SmallBannerImage {
  const _$_SmallBannerImage(
      {required this.imageUrl,
      required this.url,
      required this.discount,
      required this.id});

  factory _$_SmallBannerImage.fromJson(Map<String, dynamic> json) =>
      _$$_SmallBannerImageFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? url;
  @override
  final String? discount;
  @override
  final String? id;

  @override
  String toString() {
    return 'SmallBannerImage(imageUrl: $imageUrl, url: $url, discount: $discount, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmallBannerImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, url, discount, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmallBannerImageCopyWith<_$_SmallBannerImage> get copyWith =>
      __$$_SmallBannerImageCopyWithImpl<_$_SmallBannerImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmallBannerImageToJson(
      this,
    );
  }
}

abstract class _SmallBannerImage implements SmallBannerImage {
  const factory _SmallBannerImage(
      {required final String? imageUrl,
      required final String? url,
      required final String? discount,
      required final String? id}) = _$_SmallBannerImage;

  factory _SmallBannerImage.fromJson(Map<String, dynamic> json) =
      _$_SmallBannerImage.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get url;
  @override
  String? get discount;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_SmallBannerImageCopyWith<_$_SmallBannerImage> get copyWith =>
      throw _privateConstructorUsedError;
}
