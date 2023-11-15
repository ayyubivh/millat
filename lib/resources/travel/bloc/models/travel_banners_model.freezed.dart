// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_banners_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelBannerModel _$TravelBannerModelFromJson(Map<String, dynamic> json) {
  return _TravelBannerModel.fromJson(json);
}

/// @nodoc
mixin _$TravelBannerModel {
  List<Banners>? get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelBannerModelCopyWith<TravelBannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelBannerModelCopyWith<$Res> {
  factory $TravelBannerModelCopyWith(
          TravelBannerModel value, $Res Function(TravelBannerModel) then) =
      _$TravelBannerModelCopyWithImpl<$Res, TravelBannerModel>;
  @useResult
  $Res call({List<Banners>? banners});
}

/// @nodoc
class _$TravelBannerModelCopyWithImpl<$Res, $Val extends TravelBannerModel>
    implements $TravelBannerModelCopyWith<$Res> {
  _$TravelBannerModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TravelBannerModelImplCopyWith<$Res>
    implements $TravelBannerModelCopyWith<$Res> {
  factory _$$TravelBannerModelImplCopyWith(_$TravelBannerModelImpl value,
          $Res Function(_$TravelBannerModelImpl) then) =
      __$$TravelBannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Banners>? banners});
}

/// @nodoc
class __$$TravelBannerModelImplCopyWithImpl<$Res>
    extends _$TravelBannerModelCopyWithImpl<$Res, _$TravelBannerModelImpl>
    implements _$$TravelBannerModelImplCopyWith<$Res> {
  __$$TravelBannerModelImplCopyWithImpl(_$TravelBannerModelImpl _value,
      $Res Function(_$TravelBannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_$TravelBannerModelImpl(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banners>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelBannerModelImpl implements _TravelBannerModel {
  const _$TravelBannerModelImpl({required final List<Banners>? banners})
      : _banners = banners;

  factory _$TravelBannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelBannerModelImplFromJson(json);

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
    return 'TravelBannerModel(banners: $banners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelBannerModelImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelBannerModelImplCopyWith<_$TravelBannerModelImpl> get copyWith =>
      __$$TravelBannerModelImplCopyWithImpl<_$TravelBannerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelBannerModelImplToJson(
      this,
    );
  }
}

abstract class _TravelBannerModel implements TravelBannerModel {
  const factory _TravelBannerModel({required final List<Banners>? banners}) =
      _$TravelBannerModelImpl;

  factory _TravelBannerModel.fromJson(Map<String, dynamic> json) =
      _$TravelBannerModelImpl.fromJson;

  @override
  List<Banners>? get banners;
  @override
  @JsonKey(ignore: true)
  _$$TravelBannerModelImplCopyWith<_$TravelBannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Banners _$BannersFromJson(Map<String, dynamic> json) {
  return _Banners.fromJson(json);
}

/// @nodoc
mixin _$Banners {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? image,
      String? startDate,
      String? endDate,
      String? status,
      int? discount,
      String? createdAt,
      String? updatedAt,
      String? url});
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
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? image,
      String? startDate,
      String? endDate,
      String? status,
      int? discount,
      String? createdAt,
      String? updatedAt,
      String? url});
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
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_$BannersImpl(
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannersImpl implements _Banners {
  const _$BannersImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required this.image,
      required this.startDate,
      required this.endDate,
      required this.status,
      required this.discount,
      required this.createdAt,
      required this.updatedAt,
      required this.url});

  factory _$BannersImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannersImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? status;
  @override
  final int? discount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? url;

  @override
  String toString() {
    return 'Banners(id: $id, title: $title, image: $image, startDate: $startDate, endDate: $endDate, status: $status, discount: $discount, createdAt: $createdAt, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, startDate,
      endDate, status, discount, createdAt, updatedAt, url);

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
      {@JsonKey(name: "_id") required final String? id,
      required final String? title,
      required final String? image,
      required final String? startDate,
      required final String? endDate,
      required final String? status,
      required final int? discount,
      required final String? createdAt,
      required final String? updatedAt,
      required final String? url}) = _$BannersImpl;

  factory _Banners.fromJson(Map<String, dynamic> json) = _$BannersImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String? get status;
  @override
  int? get discount;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$BannersImplCopyWith<_$BannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
