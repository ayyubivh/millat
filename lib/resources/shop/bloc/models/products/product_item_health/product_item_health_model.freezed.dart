// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item_health_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItemsSubCategoryHealthModel _$ProductItemsSubCategoryHealthModelFromJson(
    Map<String, dynamic> json) {
  return _ProductItemsSubCategoryHealthModel.fromJson(json);
}

/// @nodoc
mixin _$ProductItemsSubCategoryHealthModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemsSubCategoryHealthModelCopyWith<
          ProductItemsSubCategoryHealthModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemsSubCategoryHealthModelCopyWith<$Res> {
  factory $ProductItemsSubCategoryHealthModelCopyWith(
          ProductItemsSubCategoryHealthModel value,
          $Res Function(ProductItemsSubCategoryHealthModel) then) =
      _$ProductItemsSubCategoryHealthModelCopyWithImpl<$Res,
          ProductItemsSubCategoryHealthModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ProductItemsSubCategoryHealthModelCopyWithImpl<$Res,
        $Val extends ProductItemsSubCategoryHealthModel>
    implements $ProductItemsSubCategoryHealthModelCopyWith<$Res> {
  _$ProductItemsSubCategoryHealthModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductItemsSubCategoryHealthModelImplCopyWith<$Res>
    implements $ProductItemsSubCategoryHealthModelCopyWith<$Res> {
  factory _$$ProductItemsSubCategoryHealthModelImplCopyWith(
          _$ProductItemsSubCategoryHealthModelImpl value,
          $Res Function(_$ProductItemsSubCategoryHealthModelImpl) then) =
      __$$ProductItemsSubCategoryHealthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ProductItemsSubCategoryHealthModelImplCopyWithImpl<$Res>
    extends _$ProductItemsSubCategoryHealthModelCopyWithImpl<$Res,
        _$ProductItemsSubCategoryHealthModelImpl>
    implements _$$ProductItemsSubCategoryHealthModelImplCopyWith<$Res> {
  __$$ProductItemsSubCategoryHealthModelImplCopyWithImpl(
      _$ProductItemsSubCategoryHealthModelImpl _value,
      $Res Function(_$ProductItemsSubCategoryHealthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ProductItemsSubCategoryHealthModelImpl(
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
class _$ProductItemsSubCategoryHealthModelImpl
    implements _ProductItemsSubCategoryHealthModel {
  const _$ProductItemsSubCategoryHealthModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$ProductItemsSubCategoryHealthModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductItemsSubCategoryHealthModelImplFromJson(json);

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
    return 'ProductItemsSubCategoryHealthModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemsSubCategoryHealthModelImpl &&
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
  _$$ProductItemsSubCategoryHealthModelImplCopyWith<
          _$ProductItemsSubCategoryHealthModelImpl>
      get copyWith => __$$ProductItemsSubCategoryHealthModelImplCopyWithImpl<
          _$ProductItemsSubCategoryHealthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemsSubCategoryHealthModelImplToJson(
      this,
    );
  }
}

abstract class _ProductItemsSubCategoryHealthModel
    implements ProductItemsSubCategoryHealthModel {
  const factory _ProductItemsSubCategoryHealthModel(
          {required final int? status,
          required final String? message,
          required final String? error,
          required final Result? result}) =
      _$ProductItemsSubCategoryHealthModelImpl;

  factory _ProductItemsSubCategoryHealthModel.fromJson(
          Map<String, dynamic> json) =
      _$ProductItemsSubCategoryHealthModelImpl.fromJson;

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
  _$$ProductItemsSubCategoryHealthModelImplCopyWith<
          _$ProductItemsSubCategoryHealthModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  ItemData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({ItemData? data});

  $ItemDataCopyWith<$Res>? get data;
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
              as ItemData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ItemDataCopyWith<$Res>(_value.data!, (value) {
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
  $Res call({ItemData? data});

  @override
  $ItemDataCopyWith<$Res>? get data;
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
              as ItemData?,
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
  final ItemData? data;

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
  const factory _Result({required final ItemData? data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  ItemData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemData _$ItemDataFromJson(Map<String, dynamic> json) {
  return _ItemData.fromJson(json);
}

/// @nodoc
mixin _$ItemData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  List<ItemList>? get itemList => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDataCopyWith<ItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDataCopyWith<$Res> {
  factory $ItemDataCopyWith(ItemData value, $Res Function(ItemData) then) =
      _$ItemDataCopyWithImpl<$Res, ItemData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? slug,
      String? createdAt,
      List<ItemList>? itemList,
      String? updatedAt});
}

/// @nodoc
class _$ItemDataCopyWithImpl<$Res, $Val extends ItemData>
    implements $ItemDataCopyWith<$Res> {
  _$ItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? itemList = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      itemList: freezed == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ItemList>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDataImplCopyWith<$Res>
    implements $ItemDataCopyWith<$Res> {
  factory _$$ItemDataImplCopyWith(
          _$ItemDataImpl value, $Res Function(_$ItemDataImpl) then) =
      __$$ItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? slug,
      String? createdAt,
      List<ItemList>? itemList,
      String? updatedAt});
}

/// @nodoc
class __$$ItemDataImplCopyWithImpl<$Res>
    extends _$ItemDataCopyWithImpl<$Res, _$ItemDataImpl>
    implements _$$ItemDataImplCopyWith<$Res> {
  __$$ItemDataImplCopyWithImpl(
      _$ItemDataImpl _value, $Res Function(_$ItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? itemList = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ItemDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      itemList: freezed == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ItemList>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDataImpl implements _ItemData {
  const _$ItemDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.slug,
      this.createdAt,
      final List<ItemList>? itemList,
      this.updatedAt})
      : _itemList = itemList;

  factory _$ItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? slug;
  @override
  final String? createdAt;
  final List<ItemList>? _itemList;
  @override
  List<ItemList>? get itemList {
    final value = _itemList;
    if (value == null) return null;
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ItemData(id: $id, slug: $slug, createdAt: $createdAt, itemList: $itemList, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, createdAt,
      const DeepCollectionEquality().hash(_itemList), updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDataImplCopyWith<_$ItemDataImpl> get copyWith =>
      __$$ItemDataImplCopyWithImpl<_$ItemDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDataImplToJson(
      this,
    );
  }
}

abstract class _ItemData implements ItemData {
  const factory _ItemData(
      {@JsonKey(name: '_id') final String? id,
      final String? slug,
      final String? createdAt,
      final List<ItemList>? itemList,
      final String? updatedAt}) = _$ItemDataImpl;

  factory _ItemData.fromJson(Map<String, dynamic> json) =
      _$ItemDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get slug;
  @override
  String? get createdAt;
  @override
  List<ItemList>? get itemList;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ItemDataImplCopyWith<_$ItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemList _$ItemListFromJson(Map<String, dynamic> json) {
  return _ItemList.fromJson(json);
}

/// @nodoc
mixin _$ItemList {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  CategoryId? get categoryId => throw _privateConstructorUsedError;
  SubCategoryId? get subCategoryId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get brandId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemListCopyWith<ItemList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListCopyWith<$Res> {
  factory $ItemListCopyWith(ItemList value, $Res Function(ItemList) then) =
      _$ItemListCopyWithImpl<$Res, ItemList>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      CategoryId? categoryId,
      SubCategoryId? subCategoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt,
      String? brandId});

  $CategoryIdCopyWith<$Res>? get categoryId;
  $SubCategoryIdCopyWith<$Res>? get subCategoryId;
}

/// @nodoc
class _$ItemListCopyWithImpl<$Res, $Val extends ItemList>
    implements $ItemListCopyWith<$Res> {
  _$ItemListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? brandId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId?,
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
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
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
  $SubCategoryIdCopyWith<$Res>? get subCategoryId {
    if (_value.subCategoryId == null) {
      return null;
    }

    return $SubCategoryIdCopyWith<$Res>(_value.subCategoryId!, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemListImplCopyWith<$Res>
    implements $ItemListCopyWith<$Res> {
  factory _$$ItemListImplCopyWith(
          _$ItemListImpl value, $Res Function(_$ItemListImpl) then) =
      __$$ItemListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      CategoryId? categoryId,
      SubCategoryId? subCategoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt,
      String? brandId});

  @override
  $CategoryIdCopyWith<$Res>? get categoryId;
  @override
  $SubCategoryIdCopyWith<$Res>? get subCategoryId;
}

/// @nodoc
class __$$ItemListImplCopyWithImpl<$Res>
    extends _$ItemListCopyWithImpl<$Res, _$ItemListImpl>
    implements _$$ItemListImplCopyWith<$Res> {
  __$$ItemListImplCopyWithImpl(
      _$ItemListImpl _value, $Res Function(_$ItemListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? brandId = freezed,
  }) {
    return _then(_$ItemListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as SubCategoryId?,
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
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemListImpl implements _ItemList {
  const _$ItemListImpl(
      {@JsonKey(name: '_id') this.id,
      this.categoryId,
      this.subCategoryId,
      this.title,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.brandId});

  factory _$ItemListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemListImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final CategoryId? categoryId;
  @override
  final SubCategoryId? subCategoryId;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? brandId;

  @override
  String toString() {
    return 'ItemList(id: $id, categoryId: $categoryId, subCategoryId: $subCategoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, subCategoryId,
      title, image, createdAt, updatedAt, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemListImplCopyWith<_$ItemListImpl> get copyWith =>
      __$$ItemListImplCopyWithImpl<_$ItemListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemListImplToJson(
      this,
    );
  }
}

abstract class _ItemList implements ItemList {
  const factory _ItemList(
      {@JsonKey(name: '_id') final String? id,
      final CategoryId? categoryId,
      final SubCategoryId? subCategoryId,
      final String? title,
      final String? image,
      final String? createdAt,
      final String? updatedAt,
      final String? brandId}) = _$ItemListImpl;

  factory _ItemList.fromJson(Map<String, dynamic> json) =
      _$ItemListImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  CategoryId? get categoryId;
  @override
  SubCategoryId? get subCategoryId;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get brandId;
  @override
  @JsonKey(ignore: true)
  _$$ItemListImplCopyWith<_$ItemListImpl> get copyWith =>
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
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
abstract class _$$CategoryIdImplCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$CategoryIdImplCopyWith(
          _$CategoryIdImpl value, $Res Function(_$CategoryIdImpl) then) =
      __$$CategoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
class _$CategoryIdImpl implements _CategoryId {
  const _$CategoryIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
    return 'CategoryId(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
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
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
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
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategoryId _$SubCategoryIdFromJson(Map<String, dynamic> json) {
  return _SubCategoryId.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  String? get categoryId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
abstract class _$$SubCategoryIdImplCopyWith<$Res>
    implements $SubCategoryIdCopyWith<$Res> {
  factory _$$SubCategoryIdImplCopyWith(
          _$SubCategoryIdImpl value, $Res Function(_$SubCategoryIdImpl) then) =
      __$$SubCategoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$SubCategoryIdImplCopyWithImpl<$Res>
    extends _$SubCategoryIdCopyWithImpl<$Res, _$SubCategoryIdImpl>
    implements _$$SubCategoryIdImplCopyWith<$Res> {
  __$$SubCategoryIdImplCopyWithImpl(
      _$SubCategoryIdImpl _value, $Res Function(_$SubCategoryIdImpl) _then)
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
    return _then(_$SubCategoryIdImpl(
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
class _$SubCategoryIdImpl implements _SubCategoryId {
  const _$SubCategoryIdImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'categoryId') this.categoryId,
      this.title,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$SubCategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'categoryId')
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
    return 'SubCategoryId(id: $id, categoryId: $categoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryIdImpl &&
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
  _$$SubCategoryIdImplCopyWith<_$SubCategoryIdImpl> get copyWith =>
      __$$SubCategoryIdImplCopyWithImpl<_$SubCategoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryIdImplToJson(
      this,
    );
  }
}

abstract class _SubCategoryId implements SubCategoryId {
  const factory _SubCategoryId(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'categoryId') final String? categoryId,
      final String? title,
      final String? image,
      final String? createdAt,
      final String? updatedAt}) = _$SubCategoryIdImpl;

  factory _SubCategoryId.fromJson(Map<String, dynamic> json) =
      _$SubCategoryIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'categoryId')
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
  _$$SubCategoryIdImplCopyWith<_$SubCategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
