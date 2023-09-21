// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFilterProductsCopyWith<$Res> {
  factory _$$FetchFilterProductsCopyWith(_$FetchFilterProducts value,
          $Res Function(_$FetchFilterProducts) then) =
      __$$FetchFilterProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category, String? subCategory, String? itemId});
}

/// @nodoc
class __$$FetchFilterProductsCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchFilterProducts>
    implements _$$FetchFilterProductsCopyWith<$Res> {
  __$$FetchFilterProductsCopyWithImpl(
      _$FetchFilterProducts _value, $Res Function(_$FetchFilterProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$FetchFilterProducts(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchFilterProducts implements FetchFilterProducts {
  const _$FetchFilterProducts(
      {required this.category, required this.subCategory, this.itemId});

  @override
  final String? category;
  @override
  final String? subCategory;
  @override
  final String? itemId;

  @override
  String toString() {
    return 'CategoryEvent.fetchFilterProducts(category: $category, subCategory: $subCategory, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFilterProducts &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, subCategory, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFilterProductsCopyWith<_$FetchFilterProducts> get copyWith =>
      __$$FetchFilterProductsCopyWithImpl<_$FetchFilterProducts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return fetchFilterProducts(category, subCategory, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return fetchFilterProducts?.call(category, subCategory, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchFilterProducts != null) {
      return fetchFilterProducts(category, subCategory, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchFilterProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchFilterProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchFilterProducts != null) {
      return fetchFilterProducts(this);
    }
    return orElse();
  }
}

abstract class FetchFilterProducts implements CategoryEvent {
  const factory FetchFilterProducts(
      {required final String? category,
      required final String? subCategory,
      final String? itemId}) = _$FetchFilterProducts;

  String? get category;
  String? get subCategory;
  String? get itemId;
  @JsonKey(ignore: true)
  _$$FetchFilterProductsCopyWith<_$FetchFilterProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoriesCopyWith<$Res> {
  factory _$$FetchCategoriesCopyWith(
          _$FetchCategories value, $Res Function(_$FetchCategories) then) =
      __$$FetchCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchCategories>
    implements _$$FetchCategoriesCopyWith<$Res> {
  __$$FetchCategoriesCopyWithImpl(
      _$FetchCategories _value, $Res Function(_$FetchCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategories implements FetchCategories {
  const _$FetchCategories();

  @override
  String toString() {
    return 'CategoryEvent.fetchCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class FetchCategories implements CategoryEvent {
  const factory FetchCategories() = _$FetchCategories;
}

/// @nodoc
abstract class _$$FetchSubcategoriesCopyWith<$Res> {
  factory _$$FetchSubcategoriesCopyWith(_$FetchSubcategories value,
          $Res Function(_$FetchSubcategories) then) =
      __$$FetchSubcategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSubcategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchSubcategories>
    implements _$$FetchSubcategoriesCopyWith<$Res> {
  __$$FetchSubcategoriesCopyWithImpl(
      _$FetchSubcategories _value, $Res Function(_$FetchSubcategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSubcategories implements FetchSubcategories {
  const _$FetchSubcategories();

  @override
  String toString() {
    return 'CategoryEvent.fetchSubcategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSubcategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubcategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubcategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchSubcategories != null) {
      return fetchSubcategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubcategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubcategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchSubcategories != null) {
      return fetchSubcategories(this);
    }
    return orElse();
  }
}

abstract class FetchSubcategories implements CategoryEvent {
  const factory FetchSubcategories() = _$FetchSubcategories;
}

/// @nodoc
abstract class _$$OnSelectFilterCopyWith<$Res> {
  factory _$$OnSelectFilterCopyWith(
          _$OnSelectFilter value, $Res Function(_$OnSelectFilter) then) =
      __$$OnSelectFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnSelectFilterCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$OnSelectFilter>
    implements _$$OnSelectFilterCopyWith<$Res> {
  __$$OnSelectFilterCopyWithImpl(
      _$OnSelectFilter _value, $Res Function(_$OnSelectFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnSelectFilter(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSelectFilter implements OnSelectFilter {
  const _$OnSelectFilter({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.onSelectFilter(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectFilter &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectFilterCopyWith<_$OnSelectFilter> get copyWith =>
      __$$OnSelectFilterCopyWithImpl<_$OnSelectFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return onSelectFilter(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return onSelectFilter?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (onSelectFilter != null) {
      return onSelectFilter(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return onSelectFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return onSelectFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (onSelectFilter != null) {
      return onSelectFilter(this);
    }
    return orElse();
  }
}

abstract class OnSelectFilter implements CategoryEvent {
  const factory OnSelectFilter({required final String value}) =
      _$OnSelectFilter;

  String get value;
  @JsonKey(ignore: true)
  _$$OnSelectFilterCopyWith<_$OnSelectFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterEventCopyWith<$Res> {
  factory _$$FilterEventCopyWith(
          _$FilterEvent value, $Res Function(_$FilterEvent) then) =
      __$$FilterEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category, String? subCategory});
}

/// @nodoc
class __$$FilterEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FilterEvent>
    implements _$$FilterEventCopyWith<$Res> {
  __$$FilterEventCopyWithImpl(
      _$FilterEvent _value, $Res Function(_$FilterEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$FilterEvent(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterEvent implements FilterEvent {
  const _$FilterEvent({required this.category, required this.subCategory});

  @override
  final String? category;
  @override
  final String? subCategory;

  @override
  String toString() {
    return 'CategoryEvent.filterEvent(category: $category, subCategory: $subCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEvent &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEventCopyWith<_$FilterEvent> get copyWith =>
      __$$FilterEventCopyWithImpl<_$FilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return filterEvent(category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return filterEvent?.call(category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (filterEvent != null) {
      return filterEvent(category, subCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return filterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return filterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (filterEvent != null) {
      return filterEvent(this);
    }
    return orElse();
  }
}

abstract class FilterEvent implements CategoryEvent {
  const factory FilterEvent(
      {required final String? category,
      required final String? subCategory}) = _$FilterEvent;

  String? get category;
  String? get subCategory;
  @JsonKey(ignore: true)
  _$$FilterEventCopyWith<_$FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterBrandPickEventCopyWith<$Res> {
  factory _$$FilterBrandPickEventCopyWith(_$FilterBrandPickEvent value,
          $Res Function(_$FilterBrandPickEvent) then) =
      __$$FilterBrandPickEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String brand});
}

/// @nodoc
class __$$FilterBrandPickEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FilterBrandPickEvent>
    implements _$$FilterBrandPickEventCopyWith<$Res> {
  __$$FilterBrandPickEventCopyWithImpl(_$FilterBrandPickEvent _value,
      $Res Function(_$FilterBrandPickEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
  }) {
    return _then(_$FilterBrandPickEvent(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterBrandPickEvent implements FilterBrandPickEvent {
  const _$FilterBrandPickEvent({required this.brand});

  @override
  final String brand;

  @override
  String toString() {
    return 'CategoryEvent.filterBrandPickEvent(brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterBrandPickEvent &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterBrandPickEventCopyWith<_$FilterBrandPickEvent> get copyWith =>
      __$$FilterBrandPickEventCopyWithImpl<_$FilterBrandPickEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return filterBrandPickEvent(brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return filterBrandPickEvent?.call(brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (filterBrandPickEvent != null) {
      return filterBrandPickEvent(brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return filterBrandPickEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return filterBrandPickEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (filterBrandPickEvent != null) {
      return filterBrandPickEvent(this);
    }
    return orElse();
  }
}

abstract class FilterBrandPickEvent implements CategoryEvent {
  const factory FilterBrandPickEvent({required final String brand}) =
      _$FilterBrandPickEvent;

  String get brand;
  @JsonKey(ignore: true)
  _$$FilterBrandPickEventCopyWith<_$FilterBrandPickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceRangeEventCopyWith<$Res> {
  factory _$$PriceRangeEventCopyWith(
          _$PriceRangeEvent value, $Res Function(_$PriceRangeEvent) then) =
      __$$PriceRangeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PriceRangeEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$PriceRangeEvent>
    implements _$$PriceRangeEventCopyWith<$Res> {
  __$$PriceRangeEventCopyWithImpl(
      _$PriceRangeEvent _value, $Res Function(_$PriceRangeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$PriceRangeEvent(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PriceRangeEvent implements PriceRangeEvent {
  const _$PriceRangeEvent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryEvent.priceRangeEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeEventCopyWith<_$PriceRangeEvent> get copyWith =>
      __$$PriceRangeEventCopyWithImpl<_$PriceRangeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return priceRangeEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return priceRangeEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (priceRangeEvent != null) {
      return priceRangeEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return priceRangeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return priceRangeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (priceRangeEvent != null) {
      return priceRangeEvent(this);
    }
    return orElse();
  }
}

abstract class PriceRangeEvent implements CategoryEvent {
  const factory PriceRangeEvent({required final int index}) = _$PriceRangeEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$PriceRangeEventCopyWith<_$PriceRangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubCategoriesByCategoryIdCopyWith<$Res> {
  factory _$$FetchSubCategoriesByCategoryIdCopyWith(
          _$FetchSubCategoriesByCategoryId value,
          $Res Function(_$FetchSubCategoriesByCategoryId) then) =
      __$$FetchSubCategoriesByCategoryIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$FetchSubCategoriesByCategoryIdCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchSubCategoriesByCategoryId>
    implements _$$FetchSubCategoriesByCategoryIdCopyWith<$Res> {
  __$$FetchSubCategoriesByCategoryIdCopyWithImpl(
      _$FetchSubCategoriesByCategoryId _value,
      $Res Function(_$FetchSubCategoriesByCategoryId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$FetchSubCategoriesByCategoryId(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSubCategoriesByCategoryId
    implements FetchSubCategoriesByCategoryId {
  const _$FetchSubCategoriesByCategoryId({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'CategoryEvent.fetchSubCategoriesByCategoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubCategoriesByCategoryId &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubCategoriesByCategoryIdCopyWith<_$FetchSubCategoriesByCategoryId>
      get copyWith => __$$FetchSubCategoriesByCategoryIdCopyWithImpl<
          _$FetchSubCategoriesByCategoryId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubCategoriesByCategoryId(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubCategoriesByCategoryId?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchSubCategoriesByCategoryId != null) {
      return fetchSubCategoriesByCategoryId(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubCategoriesByCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
  }) {
    return fetchSubCategoriesByCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    required TResult orElse(),
  }) {
    if (fetchSubCategoriesByCategoryId != null) {
      return fetchSubCategoriesByCategoryId(this);
    }
    return orElse();
  }
}

abstract class FetchSubCategoriesByCategoryId implements CategoryEvent {
  const factory FetchSubCategoriesByCategoryId(
      {required final String categoryId}) = _$FetchSubCategoriesByCategoryId;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$FetchSubCategoriesByCategoryIdCopyWith<_$FetchSubCategoriesByCategoryId>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  ProductModel? get product => throw _privateConstructorUsedError;
  bool get productLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  bool get categoryLoading => throw _privateConstructorUsedError;
  SubCategoryModel? get subCategory => throw _privateConstructorUsedError;
  bool get subCategoryLoading => throw _privateConstructorUsedError;
  String get selectedFilter => throw _privateConstructorUsedError;
  String? get filterCategory => throw _privateConstructorUsedError;
  String? get filterSubCategory => throw _privateConstructorUsedError;
  String? get filterBrand => throw _privateConstructorUsedError;
  int? get priceRangeIndex => throw _privateConstructorUsedError;
  SubcategoryByCategoryIdModel? get subcategoryByCategoryIdModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {ProductModel? product,
      bool productLoading,
      String errorMessage,
      CategoryModel? category,
      bool categoryLoading,
      SubCategoryModel? subCategory,
      bool subCategoryLoading,
      String selectedFilter,
      String? filterCategory,
      String? filterSubCategory,
      String? filterBrand,
      int? priceRangeIndex,
      SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel});

  $ProductModelCopyWith<$Res>? get product;
  $CategoryModelCopyWith<$Res>? get category;
  $SubCategoryModelCopyWith<$Res>? get subCategory;
  $SubcategoryByCategoryIdModelCopyWith<$Res>? get subcategoryByCategoryIdModel;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? productLoading = null,
    Object? errorMessage = null,
    Object? category = freezed,
    Object? categoryLoading = null,
    Object? subCategory = freezed,
    Object? subCategoryLoading = null,
    Object? selectedFilter = null,
    Object? filterCategory = freezed,
    Object? filterSubCategory = freezed,
    Object? filterBrand = freezed,
    Object? priceRangeIndex = freezed,
    Object? subcategoryByCategoryIdModel = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      productLoading: null == productLoading
          ? _value.productLoading
          : productLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categoryLoading: null == categoryLoading
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategoryModel?,
      subCategoryLoading: null == subCategoryLoading
          ? _value.subCategoryLoading
          : subCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      filterCategory: freezed == filterCategory
          ? _value.filterCategory
          : filterCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      filterSubCategory: freezed == filterSubCategory
          ? _value.filterSubCategory
          : filterSubCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      filterBrand: freezed == filterBrand
          ? _value.filterBrand
          : filterBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRangeIndex: freezed == priceRangeIndex
          ? _value.priceRangeIndex
          : priceRangeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      subcategoryByCategoryIdModel: freezed == subcategoryByCategoryIdModel
          ? _value.subcategoryByCategoryIdModel
          : subcategoryByCategoryIdModel // ignore: cast_nullable_to_non_nullable
              as SubcategoryByCategoryIdModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryModelCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $SubCategoryModelCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubcategoryByCategoryIdModelCopyWith<$Res>?
      get subcategoryByCategoryIdModel {
    if (_value.subcategoryByCategoryIdModel == null) {
      return null;
    }

    return $SubcategoryByCategoryIdModelCopyWith<$Res>(
        _value.subcategoryByCategoryIdModel!, (value) {
      return _then(
          _value.copyWith(subcategoryByCategoryIdModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel? product,
      bool productLoading,
      String errorMessage,
      CategoryModel? category,
      bool categoryLoading,
      SubCategoryModel? subCategory,
      bool subCategoryLoading,
      String selectedFilter,
      String? filterCategory,
      String? filterSubCategory,
      String? filterBrand,
      int? priceRangeIndex,
      SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $SubCategoryModelCopyWith<$Res>? get subCategory;
  @override
  $SubcategoryByCategoryIdModelCopyWith<$Res>? get subcategoryByCategoryIdModel;
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_CategoryState>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? productLoading = null,
    Object? errorMessage = null,
    Object? category = freezed,
    Object? categoryLoading = null,
    Object? subCategory = freezed,
    Object? subCategoryLoading = null,
    Object? selectedFilter = null,
    Object? filterCategory = freezed,
    Object? filterSubCategory = freezed,
    Object? filterBrand = freezed,
    Object? priceRangeIndex = freezed,
    Object? subcategoryByCategoryIdModel = freezed,
  }) {
    return _then(_$_CategoryState(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      productLoading: null == productLoading
          ? _value.productLoading
          : productLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      categoryLoading: null == categoryLoading
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategoryModel?,
      subCategoryLoading: null == subCategoryLoading
          ? _value.subCategoryLoading
          : subCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      filterCategory: freezed == filterCategory
          ? _value.filterCategory
          : filterCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      filterSubCategory: freezed == filterSubCategory
          ? _value.filterSubCategory
          : filterSubCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      filterBrand: freezed == filterBrand
          ? _value.filterBrand
          : filterBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRangeIndex: freezed == priceRangeIndex
          ? _value.priceRangeIndex
          : priceRangeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      subcategoryByCategoryIdModel: freezed == subcategoryByCategoryIdModel
          ? _value.subcategoryByCategoryIdModel
          : subcategoryByCategoryIdModel // ignore: cast_nullable_to_non_nullable
              as SubcategoryByCategoryIdModel?,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required this.product,
      required this.productLoading,
      required this.errorMessage,
      required this.category,
      required this.categoryLoading,
      required this.subCategory,
      required this.subCategoryLoading,
      required this.selectedFilter,
      required this.filterCategory,
      required this.filterSubCategory,
      required this.filterBrand,
      required this.priceRangeIndex,
      required this.subcategoryByCategoryIdModel});

  @override
  final ProductModel? product;
  @override
  final bool productLoading;
  @override
  final String errorMessage;
  @override
  final CategoryModel? category;
  @override
  final bool categoryLoading;
  @override
  final SubCategoryModel? subCategory;
  @override
  final bool subCategoryLoading;
  @override
  final String selectedFilter;
  @override
  final String? filterCategory;
  @override
  final String? filterSubCategory;
  @override
  final String? filterBrand;
  @override
  final int? priceRangeIndex;
  @override
  final SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel;

  @override
  String toString() {
    return 'CategoryState(product: $product, productLoading: $productLoading, errorMessage: $errorMessage, category: $category, categoryLoading: $categoryLoading, subCategory: $subCategory, subCategoryLoading: $subCategoryLoading, selectedFilter: $selectedFilter, filterCategory: $filterCategory, filterSubCategory: $filterSubCategory, filterBrand: $filterBrand, priceRangeIndex: $priceRangeIndex, subcategoryByCategoryIdModel: $subcategoryByCategoryIdModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.productLoading, productLoading) ||
                other.productLoading == productLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryLoading, categoryLoading) ||
                other.categoryLoading == categoryLoading) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.subCategoryLoading, subCategoryLoading) ||
                other.subCategoryLoading == subCategoryLoading) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.filterCategory, filterCategory) ||
                other.filterCategory == filterCategory) &&
            (identical(other.filterSubCategory, filterSubCategory) ||
                other.filterSubCategory == filterSubCategory) &&
            (identical(other.filterBrand, filterBrand) ||
                other.filterBrand == filterBrand) &&
            (identical(other.priceRangeIndex, priceRangeIndex) ||
                other.priceRangeIndex == priceRangeIndex) &&
            (identical(other.subcategoryByCategoryIdModel,
                    subcategoryByCategoryIdModel) ||
                other.subcategoryByCategoryIdModel ==
                    subcategoryByCategoryIdModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      productLoading,
      errorMessage,
      category,
      categoryLoading,
      subCategory,
      subCategoryLoading,
      selectedFilter,
      filterCategory,
      filterSubCategory,
      filterBrand,
      priceRangeIndex,
      subcategoryByCategoryIdModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final ProductModel? product,
      required final bool productLoading,
      required final String errorMessage,
      required final CategoryModel? category,
      required final bool categoryLoading,
      required final SubCategoryModel? subCategory,
      required final bool subCategoryLoading,
      required final String selectedFilter,
      required final String? filterCategory,
      required final String? filterSubCategory,
      required final String? filterBrand,
      required final int? priceRangeIndex,
      required final SubcategoryByCategoryIdModel?
          subcategoryByCategoryIdModel}) = _$_CategoryState;

  @override
  ProductModel? get product;
  @override
  bool get productLoading;
  @override
  String get errorMessage;
  @override
  CategoryModel? get category;
  @override
  bool get categoryLoading;
  @override
  SubCategoryModel? get subCategory;
  @override
  bool get subCategoryLoading;
  @override
  String get selectedFilter;
  @override
  String? get filterCategory;
  @override
  String? get filterSubCategory;
  @override
  String? get filterBrand;
  @override
  int? get priceRangeIndex;
  @override
  SubcategoryByCategoryIdModel? get subcategoryByCategoryIdModel;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
