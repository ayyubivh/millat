// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_address_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PincodeAddressModel _$PincodeAddressModelFromJson(Map<String, dynamic> json) {
  return _PincodeAddressModel.fromJson(json);
}

/// @nodoc
mixin _$PincodeAddressModel {
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'PostOffice')
  List<PostOffice>? get postOffice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PincodeAddressModelCopyWith<PincodeAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeAddressModelCopyWith<$Res> {
  factory $PincodeAddressModelCopyWith(
          PincodeAddressModel value, $Res Function(PincodeAddressModel) then) =
      _$PincodeAddressModelCopyWithImpl<$Res, PincodeAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Status') String? status,
      @JsonKey(name: 'PostOffice') List<PostOffice>? postOffice});
}

/// @nodoc
class _$PincodeAddressModelCopyWithImpl<$Res, $Val extends PincodeAddressModel>
    implements $PincodeAddressModelCopyWith<$Res> {
  _$PincodeAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? postOffice = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      postOffice: freezed == postOffice
          ? _value.postOffice
          : postOffice // ignore: cast_nullable_to_non_nullable
              as List<PostOffice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PincodeAddressModelCopyWith<$Res>
    implements $PincodeAddressModelCopyWith<$Res> {
  factory _$$_PincodeAddressModelCopyWith(_$_PincodeAddressModel value,
          $Res Function(_$_PincodeAddressModel) then) =
      __$$_PincodeAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Status') String? status,
      @JsonKey(name: 'PostOffice') List<PostOffice>? postOffice});
}

/// @nodoc
class __$$_PincodeAddressModelCopyWithImpl<$Res>
    extends _$PincodeAddressModelCopyWithImpl<$Res, _$_PincodeAddressModel>
    implements _$$_PincodeAddressModelCopyWith<$Res> {
  __$$_PincodeAddressModelCopyWithImpl(_$_PincodeAddressModel _value,
      $Res Function(_$_PincodeAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? postOffice = freezed,
  }) {
    return _then(_$_PincodeAddressModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      postOffice: freezed == postOffice
          ? _value._postOffice
          : postOffice // ignore: cast_nullable_to_non_nullable
              as List<PostOffice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PincodeAddressModel implements _PincodeAddressModel {
  const _$_PincodeAddressModel(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'PostOffice') required final List<PostOffice>? postOffice})
      : _postOffice = postOffice;

  factory _$_PincodeAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_PincodeAddressModelFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String? message;
  @override
  @JsonKey(name: 'Status')
  final String? status;
  final List<PostOffice>? _postOffice;
  @override
  @JsonKey(name: 'PostOffice')
  List<PostOffice>? get postOffice {
    final value = _postOffice;
    if (value == null) return null;
    if (_postOffice is EqualUnmodifiableListView) return _postOffice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PincodeAddressModel(message: $message, status: $status, postOffice: $postOffice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PincodeAddressModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._postOffice, _postOffice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status,
      const DeepCollectionEquality().hash(_postOffice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PincodeAddressModelCopyWith<_$_PincodeAddressModel> get copyWith =>
      __$$_PincodeAddressModelCopyWithImpl<_$_PincodeAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PincodeAddressModelToJson(
      this,
    );
  }
}

abstract class _PincodeAddressModel implements PincodeAddressModel {
  const factory _PincodeAddressModel(
      {@JsonKey(name: 'Message') required final String? message,
      @JsonKey(name: 'Status') required final String? status,
      @JsonKey(name: 'PostOffice')
      required final List<PostOffice>? postOffice}) = _$_PincodeAddressModel;

  factory _PincodeAddressModel.fromJson(Map<String, dynamic> json) =
      _$_PincodeAddressModel.fromJson;

  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(name: 'Status')
  String? get status;
  @override
  @JsonKey(name: 'PostOffice')
  List<PostOffice>? get postOffice;
  @override
  @JsonKey(ignore: true)
  _$$_PincodeAddressModelCopyWith<_$_PincodeAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostOffice _$PostOfficeFromJson(Map<String, dynamic> json) {
  return _PostOffice.fromJson(json);
}

/// @nodoc
mixin _$PostOffice {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'BranchType')
  String? get branchType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeliveryStatus')
  String? get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'Circle')
  String? get circle => throw _privateConstructorUsedError;
  @JsonKey(name: 'District')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'Division')
  String? get division => throw _privateConstructorUsedError;
  @JsonKey(name: 'Region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'Block')
  String? get block => throw _privateConstructorUsedError;
  @JsonKey(name: 'State')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pincode')
  String? get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostOfficeCopyWith<PostOffice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostOfficeCopyWith<$Res> {
  factory $PostOfficeCopyWith(
          PostOffice value, $Res Function(PostOffice) then) =
      _$PostOfficeCopyWithImpl<$Res, PostOffice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'BranchType') String? branchType,
      @JsonKey(name: 'DeliveryStatus') String? deliveryStatus,
      @JsonKey(name: 'Circle') String? circle,
      @JsonKey(name: 'District') String? district,
      @JsonKey(name: 'Division') String? division,
      @JsonKey(name: 'Region') String? region,
      @JsonKey(name: 'Block') String? block,
      @JsonKey(name: 'State') String? state,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Pincode') String? pincode});
}

/// @nodoc
class _$PostOfficeCopyWithImpl<$Res, $Val extends PostOffice>
    implements $PostOfficeCopyWith<$Res> {
  _$PostOfficeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? branchType = freezed,
    Object? deliveryStatus = freezed,
    Object? circle = freezed,
    Object? district = freezed,
    Object? division = freezed,
    Object? region = freezed,
    Object? block = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      branchType: freezed == branchType
          ? _value.branchType
          : branchType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      circle: freezed == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostOfficeCopyWith<$Res>
    implements $PostOfficeCopyWith<$Res> {
  factory _$$_PostOfficeCopyWith(
          _$_PostOffice value, $Res Function(_$_PostOffice) then) =
      __$$_PostOfficeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'BranchType') String? branchType,
      @JsonKey(name: 'DeliveryStatus') String? deliveryStatus,
      @JsonKey(name: 'Circle') String? circle,
      @JsonKey(name: 'District') String? district,
      @JsonKey(name: 'Division') String? division,
      @JsonKey(name: 'Region') String? region,
      @JsonKey(name: 'Block') String? block,
      @JsonKey(name: 'State') String? state,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Pincode') String? pincode});
}

/// @nodoc
class __$$_PostOfficeCopyWithImpl<$Res>
    extends _$PostOfficeCopyWithImpl<$Res, _$_PostOffice>
    implements _$$_PostOfficeCopyWith<$Res> {
  __$$_PostOfficeCopyWithImpl(
      _$_PostOffice _value, $Res Function(_$_PostOffice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? branchType = freezed,
    Object? deliveryStatus = freezed,
    Object? circle = freezed,
    Object? district = freezed,
    Object? division = freezed,
    Object? region = freezed,
    Object? block = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_$_PostOffice(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      branchType: freezed == branchType
          ? _value.branchType
          : branchType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      circle: freezed == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostOffice implements _PostOffice {
  const _$_PostOffice(
      {@JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'BranchType') required this.branchType,
      @JsonKey(name: 'DeliveryStatus') required this.deliveryStatus,
      @JsonKey(name: 'Circle') required this.circle,
      @JsonKey(name: 'District') required this.district,
      @JsonKey(name: 'Division') required this.division,
      @JsonKey(name: 'Region') required this.region,
      @JsonKey(name: 'Block') required this.block,
      @JsonKey(name: 'State') required this.state,
      @JsonKey(name: 'Country') required this.country,
      @JsonKey(name: 'Pincode') required this.pincode});

  factory _$_PostOffice.fromJson(Map<String, dynamic> json) =>
      _$$_PostOfficeFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'BranchType')
  final String? branchType;
  @override
  @JsonKey(name: 'DeliveryStatus')
  final String? deliveryStatus;
  @override
  @JsonKey(name: 'Circle')
  final String? circle;
  @override
  @JsonKey(name: 'District')
  final String? district;
  @override
  @JsonKey(name: 'Division')
  final String? division;
  @override
  @JsonKey(name: 'Region')
  final String? region;
  @override
  @JsonKey(name: 'Block')
  final String? block;
  @override
  @JsonKey(name: 'State')
  final String? state;
  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'Pincode')
  final String? pincode;

  @override
  String toString() {
    return 'PostOffice(name: $name, branchType: $branchType, deliveryStatus: $deliveryStatus, circle: $circle, district: $district, division: $division, region: $region, block: $block, state: $state, country: $country, pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostOffice &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.branchType, branchType) ||
                other.branchType == branchType) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.circle, circle) || other.circle == circle) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, branchType, deliveryStatus,
      circle, district, division, region, block, state, country, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostOfficeCopyWith<_$_PostOffice> get copyWith =>
      __$$_PostOfficeCopyWithImpl<_$_PostOffice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostOfficeToJson(
      this,
    );
  }
}

abstract class _PostOffice implements PostOffice {
  const factory _PostOffice(
      {@JsonKey(name: 'Name') required final String? name,
      @JsonKey(name: 'BranchType') required final String? branchType,
      @JsonKey(name: 'DeliveryStatus') required final String? deliveryStatus,
      @JsonKey(name: 'Circle') required final String? circle,
      @JsonKey(name: 'District') required final String? district,
      @JsonKey(name: 'Division') required final String? division,
      @JsonKey(name: 'Region') required final String? region,
      @JsonKey(name: 'Block') required final String? block,
      @JsonKey(name: 'State') required final String? state,
      @JsonKey(name: 'Country') required final String? country,
      @JsonKey(name: 'Pincode')
      required final String? pincode}) = _$_PostOffice;

  factory _PostOffice.fromJson(Map<String, dynamic> json) =
      _$_PostOffice.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'BranchType')
  String? get branchType;
  @override
  @JsonKey(name: 'DeliveryStatus')
  String? get deliveryStatus;
  @override
  @JsonKey(name: 'Circle')
  String? get circle;
  @override
  @JsonKey(name: 'District')
  String? get district;
  @override
  @JsonKey(name: 'Division')
  String? get division;
  @override
  @JsonKey(name: 'Region')
  String? get region;
  @override
  @JsonKey(name: 'Block')
  String? get block;
  @override
  @JsonKey(name: 'State')
  String? get state;
  @override
  @JsonKey(name: 'Country')
  String? get country;
  @override
  @JsonKey(name: 'Pincode')
  String? get pincode;
  @override
  @JsonKey(ignore: true)
  _$$_PostOfficeCopyWith<_$_PostOffice> get copyWith =>
      throw _privateConstructorUsedError;
}
