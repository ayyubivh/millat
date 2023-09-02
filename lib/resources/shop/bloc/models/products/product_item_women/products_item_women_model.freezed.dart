// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_item_women_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItemsSubCategoryWomenModel _$ProductItemsSubCategoryWomenModelFromJson(
    Map<String, dynamic> json) {
  return _ProductItemsSubCategoryWomenModel.fromJson(json);
}

/// @nodoc
mixin _$ProductItemsSubCategoryWomenModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  CategoryResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemsSubCategoryWomenModelCopyWith<ProductItemsSubCategoryWomenModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemsSubCategoryWomenModelCopyWith<$Res> {
  factory $ProductItemsSubCategoryWomenModelCopyWith(
          ProductItemsSubCategoryWomenModel value,
          $Res Function(ProductItemsSubCategoryWomenModel) then) =
      _$ProductItemsSubCategoryWomenModelCopyWithImpl<$Res,
          ProductItemsSubCategoryWomenModel>;
  @useResult
  $Res call({int status, String message, String error, CategoryResult result});

  $CategoryResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ProductItemsSubCategoryWomenModelCopyWithImpl<$Res,
        $Val extends ProductItemsSubCategoryWomenModel>
    implements $ProductItemsSubCategoryWomenModelCopyWith<$Res> {
  _$ProductItemsSubCategoryWomenModelCopyWithImpl(this._value, this._then);

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
              as CategoryResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryResultCopyWith<$Res> get result {
    return $CategoryResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductItemsSubCategoryWomenModelCopyWith<$Res>
    implements $ProductItemsSubCategoryWomenModelCopyWith<$Res> {
  factory _$$_ProductItemsSubCategoryWomenModelCopyWith(
          _$_ProductItemsSubCategoryWomenModel value,
          $Res Function(_$_ProductItemsSubCategoryWomenModel) then) =
      __$$_ProductItemsSubCategoryWomenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String error, CategoryResult result});

  @override
  $CategoryResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_ProductItemsSubCategoryWomenModelCopyWithImpl<$Res>
    extends _$ProductItemsSubCategoryWomenModelCopyWithImpl<$Res,
        _$_ProductItemsSubCategoryWomenModel>
    implements _$$_ProductItemsSubCategoryWomenModelCopyWith<$Res> {
  __$$_ProductItemsSubCategoryWomenModelCopyWithImpl(
      _$_ProductItemsSubCategoryWomenModel _value,
      $Res Function(_$_ProductItemsSubCategoryWomenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_ProductItemsSubCategoryWomenModel(
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
              as CategoryResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductItemsSubCategoryWomenModel
    implements _ProductItemsSubCategoryWomenModel {
  const _$_ProductItemsSubCategoryWomenModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_ProductItemsSubCategoryWomenModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductItemsSubCategoryWomenModelFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String error;
  @override
  final CategoryResult result;

  @override
  String toString() {
    return 'ProductItemsSubCategoryWomenModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductItemsSubCategoryWomenModel &&
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
  _$$_ProductItemsSubCategoryWomenModelCopyWith<
          _$_ProductItemsSubCategoryWomenModel>
      get copyWith => __$$_ProductItemsSubCategoryWomenModelCopyWithImpl<
          _$_ProductItemsSubCategoryWomenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductItemsSubCategoryWomenModelToJson(
      this,
    );
  }
}

abstract class _ProductItemsSubCategoryWomenModel
    implements ProductItemsSubCategoryWomenModel {
  const factory _ProductItemsSubCategoryWomenModel(
          {required final int status,
          required final String message,
          required final String error,
          required final CategoryResult result}) =
      _$_ProductItemsSubCategoryWomenModel;

  factory _ProductItemsSubCategoryWomenModel.fromJson(
          Map<String, dynamic> json) =
      _$_ProductItemsSubCategoryWomenModel.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get error;
  @override
  CategoryResult get result;
  @override
  @JsonKey(ignore: true)
  _$$_ProductItemsSubCategoryWomenModelCopyWith<
          _$_ProductItemsSubCategoryWomenModel>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryResult _$CategoryResultFromJson(Map<String, dynamic> json) {
  return _CategoryResult.fromJson(json);
}

/// @nodoc
mixin _$CategoryResult {
  List<CategoryItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResultCopyWith<CategoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResultCopyWith<$Res> {
  factory $CategoryResultCopyWith(
          CategoryResult value, $Res Function(CategoryResult) then) =
      _$CategoryResultCopyWithImpl<$Res, CategoryResult>;
  @useResult
  $Res call({List<CategoryItem> items});
}

/// @nodoc
class _$CategoryResultCopyWithImpl<$Res, $Val extends CategoryResult>
    implements $CategoryResultCopyWith<$Res> {
  _$CategoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryResultCopyWith<$Res>
    implements $CategoryResultCopyWith<$Res> {
  factory _$$_CategoryResultCopyWith(
          _$_CategoryResult value, $Res Function(_$_CategoryResult) then) =
      __$$_CategoryResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryItem> items});
}

/// @nodoc
class __$$_CategoryResultCopyWithImpl<$Res>
    extends _$CategoryResultCopyWithImpl<$Res, _$_CategoryResult>
    implements _$$_CategoryResultCopyWith<$Res> {
  __$$_CategoryResultCopyWithImpl(
      _$_CategoryResult _value, $Res Function(_$_CategoryResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_CategoryResult(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryResult implements _CategoryResult {
  const _$_CategoryResult({required final List<CategoryItem> items})
      : _items = items;

  factory _$_CategoryResult.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryResultFromJson(json);

  final List<CategoryItem> _items;
  @override
  List<CategoryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CategoryResult(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryResult &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryResultCopyWith<_$_CategoryResult> get copyWith =>
      __$$_CategoryResultCopyWithImpl<_$_CategoryResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryResultToJson(
      this,
    );
  }
}

abstract class _CategoryResult implements CategoryResult {
  const factory _CategoryResult({required final List<CategoryItem> items}) =
      _$_CategoryResult;

  factory _CategoryResult.fromJson(Map<String, dynamic> json) =
      _$_CategoryResult.fromJson;

  @override
  List<CategoryItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryResultCopyWith<_$_CategoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) {
  return _CategoryItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryItem {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  CategoryInfo get categoryId => throw _privateConstructorUsedError;
  CategoryInfo get subCategoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res, CategoryItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      CategoryInfo categoryId,
      CategoryInfo subCategoryId,
      String title,
      String image,
      String createdAt,
      String updatedAt});

  $CategoryInfoCopyWith<$Res> get categoryId;
  $CategoryInfoCopyWith<$Res> get subCategoryId;
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res, $Val extends CategoryItem>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
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
              as CategoryInfo,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as CategoryInfo,
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

  @override
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<$Res> get categoryId {
    return $CategoryInfoCopyWith<$Res>(_value.categoryId, (value) {
      return _then(_value.copyWith(categoryId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryInfoCopyWith<$Res> get subCategoryId {
    return $CategoryInfoCopyWith<$Res>(_value.subCategoryId, (value) {
      return _then(_value.copyWith(subCategoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryItemCopyWith<$Res>
    implements $CategoryItemCopyWith<$Res> {
  factory _$$_CategoryItemCopyWith(
          _$_CategoryItem value, $Res Function(_$_CategoryItem) then) =
      __$$_CategoryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      CategoryInfo categoryId,
      CategoryInfo subCategoryId,
      String title,
      String image,
      String createdAt,
      String updatedAt});

  @override
  $CategoryInfoCopyWith<$Res> get categoryId;
  @override
  $CategoryInfoCopyWith<$Res> get subCategoryId;
}

/// @nodoc
class __$$_CategoryItemCopyWithImpl<$Res>
    extends _$CategoryItemCopyWithImpl<$Res, _$_CategoryItem>
    implements _$$_CategoryItemCopyWith<$Res> {
  __$$_CategoryItemCopyWithImpl(
      _$_CategoryItem _value, $Res Function(_$_CategoryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_CategoryItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryInfo,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as CategoryInfo,
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
class _$_CategoryItem implements _CategoryItem {
  const _$_CategoryItem(
      {@JsonKey(name: "_id") required this.id,
      required this.categoryId,
      required this.subCategoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$_CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryItemFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final CategoryInfo categoryId;
  @override
  final CategoryInfo subCategoryId;
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
    return 'CategoryItem(id: $id, categoryId: $categoryId, subCategoryId: $subCategoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryItem &&
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
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, subCategoryId,
      title, image, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryItemCopyWith<_$_CategoryItem> get copyWith =>
      __$$_CategoryItemCopyWithImpl<_$_CategoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryItemToJson(
      this,
    );
  }
}

abstract class _CategoryItem implements CategoryItem {
  const factory _CategoryItem(
      {@JsonKey(name: "_id") required final String id,
      required final CategoryInfo categoryId,
      required final CategoryInfo subCategoryId,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$_CategoryItem;

  factory _CategoryItem.fromJson(Map<String, dynamic> json) =
      _$_CategoryItem.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  CategoryInfo get categoryId;
  @override
  CategoryInfo get subCategoryId;
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
  _$$_CategoryItemCopyWith<_$_CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryInfo _$CategoryInfoFromJson(Map<String, dynamic> json) {
  return _CategoryInfo.fromJson(json);
}

/// @nodoc
mixin _$CategoryInfo {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryInfoCopyWith<CategoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryInfoCopyWith<$Res> {
  factory $CategoryInfoCopyWith(
          CategoryInfo value, $Res Function(CategoryInfo) then) =
      _$CategoryInfoCopyWithImpl<$Res, CategoryInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String title,
      String image,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$CategoryInfoCopyWithImpl<$Res, $Val extends CategoryInfo>
    implements $CategoryInfoCopyWith<$Res> {
  _$CategoryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
abstract class _$$_CategoryInfoCopyWith<$Res>
    implements $CategoryInfoCopyWith<$Res> {
  factory _$$_CategoryInfoCopyWith(
          _$_CategoryInfo value, $Res Function(_$_CategoryInfo) then) =
      __$$_CategoryInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String title,
      String image,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_CategoryInfoCopyWithImpl<$Res>
    extends _$CategoryInfoCopyWithImpl<$Res, _$_CategoryInfo>
    implements _$$_CategoryInfoCopyWith<$Res> {
  __$$_CategoryInfoCopyWithImpl(
      _$_CategoryInfo _value, $Res Function(_$_CategoryInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_CategoryInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryInfo implements _CategoryInfo {
  const _$_CategoryInfo(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$_CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryInfoFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
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
    return 'CategoryInfo(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryInfo &&
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
  _$$_CategoryInfoCopyWith<_$_CategoryInfo> get copyWith =>
      __$$_CategoryInfoCopyWithImpl<_$_CategoryInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryInfoToJson(
      this,
    );
  }
}

abstract class _CategoryInfo implements CategoryInfo {
  const factory _CategoryInfo(
      {@JsonKey(name: "_id") required final String id,
      required final String title,
      required final String image,
      required final String createdAt,
      required final String updatedAt}) = _$_CategoryInfo;

  factory _CategoryInfo.fromJson(Map<String, dynamic> json) =
      _$_CategoryInfo.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
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
  _$$_CategoryInfoCopyWith<_$_CategoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
