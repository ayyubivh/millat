// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_sub_category_sunnah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SunnahProductHomeCardModel _$SunnahProductHomeCardModelFromJson(
    Map<String, dynamic> json) {
  return _SunnahProductHomeCardModel.fromJson(json);
}

/// @nodoc
mixin _$SunnahProductHomeCardModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SunnahProductHomeCardModelCopyWith<SunnahProductHomeCardModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunnahProductHomeCardModelCopyWith<$Res> {
  factory $SunnahProductHomeCardModelCopyWith(SunnahProductHomeCardModel value,
          $Res Function(SunnahProductHomeCardModel) then) =
      _$SunnahProductHomeCardModelCopyWithImpl<$Res,
          SunnahProductHomeCardModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SunnahProductHomeCardModelCopyWithImpl<$Res,
        $Val extends SunnahProductHomeCardModel>
    implements $SunnahProductHomeCardModelCopyWith<$Res> {
  _$SunnahProductHomeCardModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SunnahProductHomeCardModelImplCopyWith<$Res>
    implements $SunnahProductHomeCardModelCopyWith<$Res> {
  factory _$$SunnahProductHomeCardModelImplCopyWith(
          _$SunnahProductHomeCardModelImpl value,
          $Res Function(_$SunnahProductHomeCardModelImpl) then) =
      __$$SunnahProductHomeCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SunnahProductHomeCardModelImplCopyWithImpl<$Res>
    extends _$SunnahProductHomeCardModelCopyWithImpl<$Res,
        _$SunnahProductHomeCardModelImpl>
    implements _$$SunnahProductHomeCardModelImplCopyWith<$Res> {
  __$$SunnahProductHomeCardModelImplCopyWithImpl(
      _$SunnahProductHomeCardModelImpl _value,
      $Res Function(_$SunnahProductHomeCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SunnahProductHomeCardModelImpl(
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
class _$SunnahProductHomeCardModelImpl implements _SunnahProductHomeCardModel {
  const _$SunnahProductHomeCardModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$SunnahProductHomeCardModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SunnahProductHomeCardModelImplFromJson(json);

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
    return 'SunnahProductHomeCardModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SunnahProductHomeCardModelImpl &&
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
  _$$SunnahProductHomeCardModelImplCopyWith<_$SunnahProductHomeCardModelImpl>
      get copyWith => __$$SunnahProductHomeCardModelImplCopyWithImpl<
          _$SunnahProductHomeCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SunnahProductHomeCardModelImplToJson(
      this,
    );
  }
}

abstract class _SunnahProductHomeCardModel
    implements SunnahProductHomeCardModel {
  const factory _SunnahProductHomeCardModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$SunnahProductHomeCardModelImpl;

  factory _SunnahProductHomeCardModel.fromJson(Map<String, dynamic> json) =
      _$SunnahProductHomeCardModelImpl.fromJson;

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
  _$$SunnahProductHomeCardModelImplCopyWith<_$SunnahProductHomeCardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
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
    Object? data = freezed,
  }) {
    return _then(_$ResultImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
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
  final Data? data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
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
  const factory _Result({required final Data? data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Data? get data;
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
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  Design? get design => throw _privateConstructorUsedError;
  BigBannerImage? get bigBannerImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  List<String>? get sliderImage => throw _privateConstructorUsedError;
  List<SmallBannerImage>? get smallBannerImage =>
      throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "_id") String? id,
      Design? design,
      BigBannerImage? bigBannerImage,
      @JsonKey(name: 'slug') String? slug,
      List<String>? sliderImage,
      List<SmallBannerImage>? smallBannerImage,
      String? createdAt,
      String? updatedAt,
      SubCategory? subCategoryId});

  $DesignCopyWith<$Res>? get design;
  $BigBannerImageCopyWith<$Res>? get bigBannerImage;
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
    Object? id = freezed,
    Object? design = freezed,
    Object? bigBannerImage = freezed,
    Object? slug = freezed,
    Object? sliderImage = freezed,
    Object? smallBannerImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      design: freezed == design
          ? _value.design
          : design // ignore: cast_nullable_to_non_nullable
              as Design?,
      bigBannerImage: freezed == bigBannerImage
          ? _value.bigBannerImage
          : bigBannerImage // ignore: cast_nullable_to_non_nullable
              as BigBannerImage?,
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
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignCopyWith<$Res>? get design {
    if (_value.design == null) {
      return null;
    }

    return $DesignCopyWith<$Res>(_value.design!, (value) {
      return _then(_value.copyWith(design: value) as $Val);
    });
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
      {@JsonKey(name: "_id") String? id,
      Design? design,
      BigBannerImage? bigBannerImage,
      @JsonKey(name: 'slug') String? slug,
      List<String>? sliderImage,
      List<SmallBannerImage>? smallBannerImage,
      String? createdAt,
      String? updatedAt,
      SubCategory? subCategoryId});

  @override
  $DesignCopyWith<$Res>? get design;
  @override
  $BigBannerImageCopyWith<$Res>? get bigBannerImage;
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
    Object? id = freezed,
    Object? design = freezed,
    Object? bigBannerImage = freezed,
    Object? slug = freezed,
    Object? sliderImage = freezed,
    Object? smallBannerImage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subCategoryId = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      design: freezed == design
          ? _value.design
          : design // ignore: cast_nullable_to_non_nullable
              as Design?,
      bigBannerImage: freezed == bigBannerImage
          ? _value.bigBannerImage
          : bigBannerImage // ignore: cast_nullable_to_non_nullable
              as BigBannerImage?,
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
      {@JsonKey(name: "_id") required this.id,
      required this.design,
      required this.bigBannerImage,
      @JsonKey(name: 'slug') required this.slug,
      required final List<String>? sliderImage,
      required final List<SmallBannerImage>? smallBannerImage,
      required this.createdAt,
      required this.updatedAt,
      required this.subCategoryId})
      : _sliderImage = sliderImage,
        _smallBannerImage = smallBannerImage;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final Design? design;
  @override
  final BigBannerImage? bigBannerImage;
  @override
  @JsonKey(name: 'slug')
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
  final SubCategory? subCategoryId;

  @override
  String toString() {
    return 'Data(id: $id, design: $design, bigBannerImage: $bigBannerImage, slug: $slug, sliderImage: $sliderImage, smallBannerImage: $smallBannerImage, createdAt: $createdAt, updatedAt: $updatedAt, subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.design, design) || other.design == design) &&
            (identical(other.bigBannerImage, bigBannerImage) ||
                other.bigBannerImage == bigBannerImage) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._sliderImage, _sliderImage) &&
            const DeepCollectionEquality()
                .equals(other._smallBannerImage, _smallBannerImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      design,
      bigBannerImage,
      slug,
      const DeepCollectionEquality().hash(_sliderImage),
      const DeepCollectionEquality().hash(_smallBannerImage),
      createdAt,
      updatedAt,
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
      {@JsonKey(name: "_id") required final String? id,
      required final Design? design,
      required final BigBannerImage? bigBannerImage,
      @JsonKey(name: 'slug') required final String? slug,
      required final List<String>? sliderImage,
      required final List<SmallBannerImage>? smallBannerImage,
      required final String? createdAt,
      required final String? updatedAt,
      required final SubCategory? subCategoryId}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  Design? get design;
  @override
  BigBannerImage? get bigBannerImage;
  @override
  @JsonKey(name: 'slug')
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
  String? get image => throw _privateConstructorUsedError;
  String? get bgcolor => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get subText => throw _privateConstructorUsedError;

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
      {String? image,
      String? bgcolor,
      String? color,
      String? text,
      String? subText});
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
    Object? image = freezed,
    Object? bgcolor = freezed,
    Object? color = freezed,
    Object? text = freezed,
    Object? subText = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bgcolor: freezed == bgcolor
          ? _value.bgcolor
          : bgcolor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? image,
      String? bgcolor,
      String? color,
      String? text,
      String? subText});
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
    Object? image = freezed,
    Object? bgcolor = freezed,
    Object? color = freezed,
    Object? text = freezed,
    Object? subText = freezed,
  }) {
    return _then(_$DesignImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bgcolor: freezed == bgcolor
          ? _value.bgcolor
          : bgcolor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignImpl implements _Design {
  const _$DesignImpl(
      {required this.image,
      required this.bgcolor,
      required this.color,
      required this.text,
      required this.subText});

  factory _$DesignImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignImplFromJson(json);

  @override
  final String? image;
  @override
  final String? bgcolor;
  @override
  final String? color;
  @override
  final String? text;
  @override
  final String? subText;

  @override
  String toString() {
    return 'Design(image: $image, bgcolor: $bgcolor, color: $color, text: $text, subText: $subText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.bgcolor, bgcolor) || other.bgcolor == bgcolor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.subText, subText) || other.subText == subText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, bgcolor, color, text, subText);

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
      {required final String? image,
      required final String? bgcolor,
      required final String? color,
      required final String? text,
      required final String? subText}) = _$DesignImpl;

  factory _Design.fromJson(Map<String, dynamic> json) = _$DesignImpl.fromJson;

  @override
  String? get image;
  @override
  String? get bgcolor;
  @override
  String? get color;
  @override
  String? get text;
  @override
  String? get subText;
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
abstract class _$$BigBannerImageImplCopyWith<$Res>
    implements $BigBannerImageCopyWith<$Res> {
  factory _$$BigBannerImageImplCopyWith(_$BigBannerImageImpl value,
          $Res Function(_$BigBannerImageImpl) then) =
      __$$BigBannerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, String? url, String? discount});
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
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$BigBannerImageImpl(
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
class _$BigBannerImageImpl implements _BigBannerImage {
  const _$BigBannerImageImpl(
      {required this.imageUrl, required this.url, required this.discount});

  factory _$BigBannerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BigBannerImageImplFromJson(json);

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
      {required final String? imageUrl,
      required final String? url,
      required final String? discount}) = _$BigBannerImageImpl;

  factory _BigBannerImage.fromJson(Map<String, dynamic> json) =
      _$BigBannerImageImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get url;
  @override
  String? get discount;
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
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
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
  $Res call(
      {String? imageUrl,
      String? url,
      String? discount,
      @JsonKey(name: '_id') String? id});
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
abstract class _$$SmallBannerImageImplCopyWith<$Res>
    implements $SmallBannerImageCopyWith<$Res> {
  factory _$$SmallBannerImageImplCopyWith(_$SmallBannerImageImpl value,
          $Res Function(_$SmallBannerImageImpl) then) =
      __$$SmallBannerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imageUrl,
      String? url,
      String? discount,
      @JsonKey(name: '_id') String? id});
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
    Object? imageUrl = freezed,
    Object? url = freezed,
    Object? discount = freezed,
    Object? id = freezed,
  }) {
    return _then(_$SmallBannerImageImpl(
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
class _$SmallBannerImageImpl implements _SmallBannerImage {
  const _$SmallBannerImageImpl(
      {required this.imageUrl,
      required this.url,
      required this.discount,
      @JsonKey(name: '_id') required this.id});

  factory _$SmallBannerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmallBannerImageImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? url;
  @override
  final String? discount;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'SmallBannerImage(imageUrl: $imageUrl, url: $url, discount: $discount, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
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
          {required final String? imageUrl,
          required final String? url,
          required final String? discount,
          @JsonKey(name: '_id') required final String? id}) =
      _$SmallBannerImageImpl;

  factory _SmallBannerImage.fromJson(Map<String, dynamic> json) =
      _$SmallBannerImageImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get url;
  @override
  String? get discount;
  @override
  @JsonKey(name: '_id')
  String? get id;
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
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
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
      {@JsonKey(name: '_id') String? id,
      String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? id = freezed,
    Object? categoryId = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.categoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? categoryId;
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
  bool operator ==(dynamic other) {
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
      {@JsonKey(name: '_id') required final String? id,
      required final String? categoryId,
      required final String? title,
      required final String? image,
      required final String? createdAt,
      required final String? updatedAt}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get categoryId;
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
