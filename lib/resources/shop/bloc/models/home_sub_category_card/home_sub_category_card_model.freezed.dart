// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_sub_category_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopHomeBackgroundCardModel _$ShopHomeBackgroundCardModelFromJson(
    Map<String, dynamic> json) {
  return _ShopHomeBackgroundCardModel.fromJson(json);
}

/// @nodoc
mixin _$ShopHomeBackgroundCardModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopHomeBackgroundCardModelCopyWith<ShopHomeBackgroundCardModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopHomeBackgroundCardModelCopyWith<$Res> {
  factory $ShopHomeBackgroundCardModelCopyWith(
          ShopHomeBackgroundCardModel value,
          $Res Function(ShopHomeBackgroundCardModel) then) =
      _$ShopHomeBackgroundCardModelCopyWithImpl<$Res,
          ShopHomeBackgroundCardModel>;
  @useResult
  $Res call({int status, String message, String error, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ShopHomeBackgroundCardModelCopyWithImpl<$Res,
        $Val extends ShopHomeBackgroundCardModel>
    implements $ShopHomeBackgroundCardModelCopyWith<$Res> {
  _$ShopHomeBackgroundCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ShopHomeBackgroundCardModelImplCopyWith<$Res>
    implements $ShopHomeBackgroundCardModelCopyWith<$Res> {
  factory _$$ShopHomeBackgroundCardModelImplCopyWith(
          _$ShopHomeBackgroundCardModelImpl value,
          $Res Function(_$ShopHomeBackgroundCardModelImpl) then) =
      __$$ShopHomeBackgroundCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String error, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ShopHomeBackgroundCardModelImplCopyWithImpl<$Res>
    extends _$ShopHomeBackgroundCardModelCopyWithImpl<$Res,
        _$ShopHomeBackgroundCardModelImpl>
    implements _$$ShopHomeBackgroundCardModelImplCopyWith<$Res> {
  __$$ShopHomeBackgroundCardModelImplCopyWithImpl(
      _$ShopHomeBackgroundCardModelImpl _value,
      $Res Function(_$ShopHomeBackgroundCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$ShopHomeBackgroundCardModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopHomeBackgroundCardModelImpl
    implements _ShopHomeBackgroundCardModel {
  const _$ShopHomeBackgroundCardModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$ShopHomeBackgroundCardModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ShopHomeBackgroundCardModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String error;
  @override
  final Result result;

  @override
  String toString() {
    return 'ShopHomeBackgroundCardModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopHomeBackgroundCardModelImpl &&
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
  _$$ShopHomeBackgroundCardModelImplCopyWith<_$ShopHomeBackgroundCardModelImpl>
      get copyWith => __$$ShopHomeBackgroundCardModelImplCopyWithImpl<
          _$ShopHomeBackgroundCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopHomeBackgroundCardModelImplToJson(
      this,
    );
  }
}

abstract class _ShopHomeBackgroundCardModel
    implements ShopHomeBackgroundCardModel {
  const factory _ShopHomeBackgroundCardModel(
      {required final int status,
      required final String message,
      required final String error,
      required final Result result}) = _$ShopHomeBackgroundCardModelImpl;

  factory _ShopHomeBackgroundCardModel.fromJson(Map<String, dynamic> json) =
      _$ShopHomeBackgroundCardModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get error;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$ShopHomeBackgroundCardModelImplCopyWith<_$ShopHomeBackgroundCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
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
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
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
    Object? data = null,
  }) {
    return _then(_$ResultImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required this.data});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

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
  const factory _Result({required final Data data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Design get design => throw _privateConstructorUsedError;
  BigBannerImage get bigBannerImage => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  List<String> get sliderImage => throw _privateConstructorUsedError;
  List<SmallBannerImage> get smallBannerImage =>
      throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  SubCategory? get subCategoryId => throw _privateConstructorUsedError;

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
      {Design design,
      BigBannerImage bigBannerImage,
      @JsonKey(name: "_id") String id,
      List<String> sliderImage,
      List<SmallBannerImage> smallBannerImage,
      String createdAt,
      String updatedAt,
      String slug,
      SubCategory? subCategoryId});

  $DesignCopyWith<$Res> get design;
  $BigBannerImageCopyWith<$Res> get bigBannerImage;
  $SubCategoryCopyWith<$Res>? get subCategoryId;
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
    Object? design = null,
    Object? bigBannerImage = null,
    Object? id = null,
    Object? sliderImage = null,
    Object? smallBannerImage = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? slug = null,
    Object? subCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      design: null == design
          ? _value.design
          : design // ignore: cast_nullable_to_non_nullable
              as Design,
      bigBannerImage: null == bigBannerImage
          ? _value.bigBannerImage
          : bigBannerImage // ignore: cast_nullable_to_non_nullable
              as BigBannerImage,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sliderImage: null == sliderImage
          ? _value.sliderImage
          : sliderImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      smallBannerImage: null == smallBannerImage
          ? _value.smallBannerImage
          : smallBannerImage // ignore: cast_nullable_to_non_nullable
              as List<SmallBannerImage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignCopyWith<$Res> get design {
    return $DesignCopyWith<$Res>(_value.design, (value) {
      return _then(_value.copyWith(design: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BigBannerImageCopyWith<$Res> get bigBannerImage {
    return $BigBannerImageCopyWith<$Res>(_value.bigBannerImage, (value) {
      return _then(_value.copyWith(bigBannerImage: value) as $Val);
    });
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Design design,
      BigBannerImage bigBannerImage,
      @JsonKey(name: "_id") String id,
      List<String> sliderImage,
      List<SmallBannerImage> smallBannerImage,
      String createdAt,
      String updatedAt,
      String slug,
      SubCategory? subCategoryId});

  @override
  $DesignCopyWith<$Res> get design;
  @override
  $BigBannerImageCopyWith<$Res> get bigBannerImage;
  @override
  $SubCategoryCopyWith<$Res>? get subCategoryId;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? design = null,
    Object? bigBannerImage = null,
    Object? id = null,
    Object? sliderImage = null,
    Object? smallBannerImage = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? slug = null,
    Object? subCategoryId = freezed,
  }) {
    return _then(_$DataImpl(
      design: null == design
          ? _value.design
          : design // ignore: cast_nullable_to_non_nullable
              as Design,
      bigBannerImage: null == bigBannerImage
          ? _value.bigBannerImage
          : bigBannerImage // ignore: cast_nullable_to_non_nullable
              as BigBannerImage,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sliderImage: null == sliderImage
          ? _value._sliderImage
          : sliderImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      smallBannerImage: null == smallBannerImage
          ? _value._smallBannerImage
          : smallBannerImage // ignore: cast_nullable_to_non_nullable
              as List<SmallBannerImage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.design,
      required this.bigBannerImage,
      @JsonKey(name: "_id") required this.id,
      required final List<String> sliderImage,
      required final List<SmallBannerImage> smallBannerImage,
      required this.createdAt,
      required this.updatedAt,
      required this.slug,
      this.subCategoryId})
      : _sliderImage = sliderImage,
        _smallBannerImage = smallBannerImage;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Design design;
  @override
  final BigBannerImage bigBannerImage;
  @override
  @JsonKey(name: "_id")
  final String id;
  final List<String> _sliderImage;
  @override
  List<String> get sliderImage {
    if (_sliderImage is EqualUnmodifiableListView) return _sliderImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliderImage);
  }

  final List<SmallBannerImage> _smallBannerImage;
  @override
  List<SmallBannerImage> get smallBannerImage {
    if (_smallBannerImage is EqualUnmodifiableListView)
      return _smallBannerImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smallBannerImage);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String slug;
  @override
  final SubCategory? subCategoryId;

  @override
  String toString() {
    return 'Data(design: $design, bigBannerImage: $bigBannerImage, id: $id, sliderImage: $sliderImage, smallBannerImage: $smallBannerImage, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.design, design) || other.design == design) &&
            (identical(other.bigBannerImage, bigBannerImage) ||
                other.bigBannerImage == bigBannerImage) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._sliderImage, _sliderImage) &&
            const DeepCollectionEquality()
                .equals(other._smallBannerImage, _smallBannerImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      design,
      bigBannerImage,
      id,
      const DeepCollectionEquality().hash(_sliderImage),
      const DeepCollectionEquality().hash(_smallBannerImage),
      createdAt,
      updatedAt,
      slug,
      subCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final Design design,
      required final BigBannerImage bigBannerImage,
      @JsonKey(name: "_id") required final String id,
      required final List<String> sliderImage,
      required final List<SmallBannerImage> smallBannerImage,
      required final String createdAt,
      required final String updatedAt,
      required final String slug,
      final SubCategory? subCategoryId}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Design get design;
  @override
  BigBannerImage get bigBannerImage;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  List<String> get sliderImage;
  @override
  List<SmallBannerImage> get smallBannerImage;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get slug;
  @override
  SubCategory? get subCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Design _$DesignFromJson(Map<String, dynamic> json) {
  return _Design.fromJson(json);
}

/// @nodoc
mixin _$Design {
  String get image => throw _privateConstructorUsedError;
  String get bgcolor => throw _privateConstructorUsedError;
  String? get subText =>
      throw _privateConstructorUsedError; // Make subText nullable
  String get text => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignCopyWith<Design> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignCopyWith<$Res> {
  factory $DesignCopyWith(Design value, $Res Function(Design) then) =
      _$DesignCopyWithImpl<$Res, Design>;
  @useResult
  $Res call(
      {String image,
      String bgcolor,
      String? subText,
      String text,
      String color});
}

/// @nodoc
class _$DesignCopyWithImpl<$Res, $Val extends Design>
    implements $DesignCopyWith<$Res> {
  _$DesignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? bgcolor = null,
    Object? subText = freezed,
    Object? text = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      bgcolor: null == bgcolor
          ? _value.bgcolor
          : bgcolor // ignore: cast_nullable_to_non_nullable
              as String,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignImplCopyWith<$Res> implements $DesignCopyWith<$Res> {
  factory _$$DesignImplCopyWith(
          _$DesignImpl value, $Res Function(_$DesignImpl) then) =
      __$$DesignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String bgcolor,
      String? subText,
      String text,
      String color});
}

/// @nodoc
class __$$DesignImplCopyWithImpl<$Res>
    extends _$DesignCopyWithImpl<$Res, _$DesignImpl>
    implements _$$DesignImplCopyWith<$Res> {
  __$$DesignImplCopyWithImpl(
      _$DesignImpl _value, $Res Function(_$DesignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? bgcolor = null,
    Object? subText = freezed,
    Object? text = null,
    Object? color = null,
  }) {
    return _then(_$DesignImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      bgcolor: null == bgcolor
          ? _value.bgcolor
          : bgcolor // ignore: cast_nullable_to_non_nullable
              as String,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignImpl implements _Design {
  const _$DesignImpl(
      {required this.image,
      required this.bgcolor,
      this.subText,
      required this.text,
      required this.color});

  factory _$DesignImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignImplFromJson(json);

  @override
  final String image;
  @override
  final String bgcolor;
  @override
  final String? subText;
// Make subText nullable
  @override
  final String text;
  @override
  final String color;

  @override
  String toString() {
    return 'Design(image: $image, bgcolor: $bgcolor, subText: $subText, text: $text, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.bgcolor, bgcolor) || other.bgcolor == bgcolor) &&
            (identical(other.subText, subText) || other.subText == subText) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, bgcolor, subText, text, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignImplCopyWith<_$DesignImpl> get copyWith =>
      __$$DesignImplCopyWithImpl<_$DesignImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignImplToJson(
      this,
    );
  }
}

abstract class _Design implements Design {
  const factory _Design(
      {required final String image,
      required final String bgcolor,
      final String? subText,
      required final String text,
      required final String color}) = _$DesignImpl;

  factory _Design.fromJson(Map<String, dynamic> json) = _$DesignImpl.fromJson;

  @override
  String get image;
  @override
  String get bgcolor;
  @override
  String? get subText;
  @override // Make subText nullable
  String get text;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$DesignImplCopyWith<_$DesignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BigBannerImage _$BigBannerImageFromJson(Map<String, dynamic> json) {
  return _BigBannerImage.fromJson(json);
}

/// @nodoc
mixin _$BigBannerImage {
  String get imageUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError; // Make url nullable
  String get discount => throw _privateConstructorUsedError;

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
  $Res call({String imageUrl, String? url, String discount});
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
    Object? imageUrl = null,
    Object? url = freezed,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BigBannerImageImplCopyWith<$Res>
    implements $BigBannerImageCopyWith<$Res> {
  factory _$$BigBannerImageImplCopyWith(_$BigBannerImageImpl value,
          $Res Function(_$BigBannerImageImpl) then) =
      __$$BigBannerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String? url, String discount});
}

/// @nodoc
class __$$BigBannerImageImplCopyWithImpl<$Res>
    extends _$BigBannerImageCopyWithImpl<$Res, _$BigBannerImageImpl>
    implements _$$BigBannerImageImplCopyWith<$Res> {
  __$$BigBannerImageImplCopyWithImpl(
      _$BigBannerImageImpl _value, $Res Function(_$BigBannerImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? url = freezed,
    Object? discount = null,
  }) {
    return _then(_$BigBannerImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BigBannerImageImpl implements _BigBannerImage {
  const _$BigBannerImageImpl(
      {required this.imageUrl, this.url, required this.discount});

  factory _$BigBannerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BigBannerImageImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String? url;
// Make url nullable
  @override
  final String discount;

  @override
  String toString() {
    return 'BigBannerImage(imageUrl: $imageUrl, url: $url, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BigBannerImageImpl &&
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
  _$$BigBannerImageImplCopyWith<_$BigBannerImageImpl> get copyWith =>
      __$$BigBannerImageImplCopyWithImpl<_$BigBannerImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BigBannerImageImplToJson(
      this,
    );
  }
}

abstract class _BigBannerImage implements BigBannerImage {
  const factory _BigBannerImage(
      {required final String imageUrl,
      final String? url,
      required final String discount}) = _$BigBannerImageImpl;

  factory _BigBannerImage.fromJson(Map<String, dynamic> json) =
      _$BigBannerImageImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String? get url;
  @override // Make url nullable
  String get discount;
  @override
  @JsonKey(ignore: true)
  _$$BigBannerImageImplCopyWith<_$BigBannerImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SmallBannerImage _$SmallBannerImageFromJson(Map<String, dynamic> json) {
  return _SmallBannerImage.fromJson(json);
}

/// @nodoc
mixin _$SmallBannerImage {
  String get imageUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError; // Make url nullable
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

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
  $Res call(
      {String imageUrl,
      String? url,
      String discount,
      @JsonKey(name: "_id") String id});
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
    Object? imageUrl = null,
    Object? url = freezed,
    Object? discount = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmallBannerImageImplCopyWith<$Res>
    implements $SmallBannerImageCopyWith<$Res> {
  factory _$$SmallBannerImageImplCopyWith(_$SmallBannerImageImpl value,
          $Res Function(_$SmallBannerImageImpl) then) =
      __$$SmallBannerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      String? url,
      String discount,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$SmallBannerImageImplCopyWithImpl<$Res>
    extends _$SmallBannerImageCopyWithImpl<$Res, _$SmallBannerImageImpl>
    implements _$$SmallBannerImageImplCopyWith<$Res> {
  __$$SmallBannerImageImplCopyWithImpl(_$SmallBannerImageImpl _value,
      $Res Function(_$SmallBannerImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? url = freezed,
    Object? discount = null,
    Object? id = null,
  }) {
    return _then(_$SmallBannerImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmallBannerImageImpl implements _SmallBannerImage {
  const _$SmallBannerImageImpl(
      {required this.imageUrl,
      this.url,
      required this.discount,
      @JsonKey(name: "_id") required this.id});

  factory _$SmallBannerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmallBannerImageImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String? url;
// Make url nullable
  @override
  final String discount;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'SmallBannerImage(imageUrl: $imageUrl, url: $url, discount: $discount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmallBannerImageImpl &&
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
  _$$SmallBannerImageImplCopyWith<_$SmallBannerImageImpl> get copyWith =>
      __$$SmallBannerImageImplCopyWithImpl<_$SmallBannerImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmallBannerImageImplToJson(
      this,
    );
  }
}

abstract class _SmallBannerImage implements SmallBannerImage {
  const factory _SmallBannerImage(
      {required final String imageUrl,
      final String? url,
      required final String discount,
      @JsonKey(name: "_id") required final String id}) = _$SmallBannerImageImpl;

  factory _SmallBannerImage.fromJson(Map<String, dynamic> json) =
      _$SmallBannerImageImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String? get url;
  @override // Make url nullable
  String get discount;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SmallBannerImageImplCopyWith<_$SmallBannerImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String id,
      String categoryId,
      String title,
      String image,
      String createdAt,
      String updatedAt});
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
    Object? categoryId = null,
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String categoryId,
      String title,
      String image,
      String createdAt,
      String updatedAt});
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
    Object? categoryId = null,
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.categoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String categoryId;
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
      {@JsonKey(name: "_id") required final String id,
      required final String categoryId,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get categoryId;
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
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
