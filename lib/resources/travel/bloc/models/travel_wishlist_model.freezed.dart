// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_wishlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelWishlistModel _$TravelWishlistModelFromJson(Map<String, dynamic> json) {
  return _TravelWishlistModel.fromJson(json);
}

/// @nodoc
mixin _$TravelWishlistModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<String>? get products => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelWishlistModelCopyWith<TravelWishlistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelWishlistModelCopyWith<$Res> {
  factory $TravelWishlistModelCopyWith(
          TravelWishlistModel value, $Res Function(TravelWishlistModel) then) =
      _$TravelWishlistModelCopyWithImpl<$Res, TravelWishlistModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? userId,
      List<String>? products,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$TravelWishlistModelCopyWithImpl<$Res, $Val extends TravelWishlistModel>
    implements $TravelWishlistModelCopyWith<$Res> {
  _$TravelWishlistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$TravelWishlistModelImplCopyWith<$Res>
    implements $TravelWishlistModelCopyWith<$Res> {
  factory _$$TravelWishlistModelImplCopyWith(_$TravelWishlistModelImpl value,
          $Res Function(_$TravelWishlistModelImpl) then) =
      __$$TravelWishlistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? userId,
      List<String>? products,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$TravelWishlistModelImplCopyWithImpl<$Res>
    extends _$TravelWishlistModelCopyWithImpl<$Res, _$TravelWishlistModelImpl>
    implements _$$TravelWishlistModelImplCopyWith<$Res> {
  __$$TravelWishlistModelImplCopyWithImpl(_$TravelWishlistModelImpl _value,
      $Res Function(_$TravelWishlistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TravelWishlistModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$TravelWishlistModelImpl implements _TravelWishlistModel {
  const _$TravelWishlistModelImpl(
      {@JsonKey(name: "_id") this.id,
      this.userId,
      final List<String>? products,
      this.createdAt,
      this.updatedAt})
      : _products = products;

  factory _$TravelWishlistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelWishlistModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? userId;
  final List<String>? _products;
  @override
  List<String>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'TravelWishlistModel(id: $id, userId: $userId, products: $products, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelWishlistModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId,
      const DeepCollectionEquality().hash(_products), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelWishlistModelImplCopyWith<_$TravelWishlistModelImpl> get copyWith =>
      __$$TravelWishlistModelImplCopyWithImpl<_$TravelWishlistModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelWishlistModelImplToJson(
      this,
    );
  }
}

abstract class _TravelWishlistModel implements TravelWishlistModel {
  const factory _TravelWishlistModel(
      {@JsonKey(name: "_id") final String? id,
      final String? userId,
      final List<String>? products,
      final String? createdAt,
      final String? updatedAt}) = _$TravelWishlistModelImpl;

  factory _TravelWishlistModel.fromJson(Map<String, dynamic> json) =
      _$TravelWishlistModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get userId;
  @override
  List<String>? get products;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TravelWishlistModelImplCopyWith<_$TravelWishlistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
