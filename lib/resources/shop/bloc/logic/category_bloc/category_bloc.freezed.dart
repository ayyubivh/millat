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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFilterProducts value) fetchFilterProducts,
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(FetchSubcategories value) fetchSubcategories,
    required TResult Function(OnSelectFilter value) onSelectFilter,
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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

class _$FetchFilterProducts
    with DiagnosticableTreeMixin
    implements FetchFilterProducts {
  const _$FetchFilterProducts(
      {required this.category, required this.subCategory, this.itemId});

  @override
  final String? category;
  @override
  final String? subCategory;
  @override
  final String? itemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchFilterProducts(category: $category, subCategory: $subCategory, itemId: $itemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.fetchFilterProducts'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subCategory', subCategory))
      ..add(DiagnosticsProperty('itemId', itemId));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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

class _$FetchCategories
    with DiagnosticableTreeMixin
    implements FetchCategories {
  const _$FetchCategories();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CategoryEvent.fetchCategories'));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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

class _$FetchSubcategories
    with DiagnosticableTreeMixin
    implements FetchSubcategories {
  const _$FetchSubcategories();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchSubcategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CategoryEvent.fetchSubcategories'));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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

class _$OnSelectFilter with DiagnosticableTreeMixin implements OnSelectFilter {
  const _$OnSelectFilter({required this.value});

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.onSelectFilter(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.onSelectFilter'))
      ..add(DiagnosticsProperty('value', value));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
abstract class _$$FetchItemsByCategoryCopyWith<$Res> {
  factory _$$FetchItemsByCategoryCopyWith(_$FetchItemsByCategory value,
          $Res Function(_$FetchItemsByCategory) then) =
      __$$FetchItemsByCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FetchItemsByCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchItemsByCategory>
    implements _$$FetchItemsByCategoryCopyWith<$Res> {
  __$$FetchItemsByCategoryCopyWithImpl(_$FetchItemsByCategory _value,
      $Res Function(_$FetchItemsByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FetchItemsByCategory(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchItemsByCategory
    with DiagnosticableTreeMixin
    implements FetchItemsByCategory {
  const _$FetchItemsByCategory({required this.category});

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchItemsByCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.fetchItemsByCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchItemsByCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchItemsByCategoryCopyWith<_$FetchItemsByCategory> get copyWith =>
      __$$FetchItemsByCategoryCopyWithImpl<_$FetchItemsByCategory>(
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) {
    return fetchItemsByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) {
    return fetchItemsByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (fetchItemsByCategory != null) {
      return fetchItemsByCategory(category);
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) {
    return fetchItemsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) {
    return fetchItemsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (fetchItemsByCategory != null) {
      return fetchItemsByCategory(this);
    }
    return orElse();
  }
}

abstract class FetchItemsByCategory implements CategoryEvent {
  const factory FetchItemsByCategory({required final String category}) =
      _$FetchItemsByCategory;

  String get category;
  @JsonKey(ignore: true)
  _$$FetchItemsByCategoryCopyWith<_$FetchItemsByCategory> get copyWith =>
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

class _$FilterEvent with DiagnosticableTreeMixin implements FilterEvent {
  const _$FilterEvent({required this.category, required this.subCategory});

  @override
  final String? category;
  @override
  final String? subCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.filterEvent(category: $category, subCategory: $subCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.filterEvent'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subCategory', subCategory));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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

class _$FilterBrandPickEvent
    with DiagnosticableTreeMixin
    implements FilterBrandPickEvent {
  const _$FilterBrandPickEvent({required this.brand});

  @override
  final String brand;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.filterBrandPickEvent(brand: $brand)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.filterBrandPickEvent'))
      ..add(DiagnosticsProperty('brand', brand));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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

class _$PriceRangeEvent
    with DiagnosticableTreeMixin
    implements PriceRangeEvent {
  const _$PriceRangeEvent({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.priceRangeEvent(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.priceRangeEvent'))
      ..add(DiagnosticsProperty('index', index));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    with DiagnosticableTreeMixin
    implements FetchSubCategoriesByCategoryId {
  const _$FetchSubCategoriesByCategoryId({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchSubCategoriesByCategoryId(categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CategoryEvent.fetchSubCategoriesByCategoryId'))
      ..add(DiagnosticsProperty('categoryId', categoryId));
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
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
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
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
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
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
abstract class _$$SaveCategoryFilterValCopyWith<$Res> {
  factory _$$SaveCategoryFilterValCopyWith(_$SaveCategoryFilterVal value,
          $Res Function(_$SaveCategoryFilterVal) then) =
      __$$SaveCategoryFilterValCopyWithImpl<$Res>;
  @useResult
  $Res call({String filterVal});
}

/// @nodoc
class __$$SaveCategoryFilterValCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveCategoryFilterVal>
    implements _$$SaveCategoryFilterValCopyWith<$Res> {
  __$$SaveCategoryFilterValCopyWithImpl(_$SaveCategoryFilterVal _value,
      $Res Function(_$SaveCategoryFilterVal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterVal = null,
  }) {
    return _then(_$SaveCategoryFilterVal(
      filterVal: null == filterVal
          ? _value.filterVal
          : filterVal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCategoryFilterVal
    with DiagnosticableTreeMixin
    implements SaveCategoryFilterVal {
  const _$SaveCategoryFilterVal({required this.filterVal});

  @override
  final String filterVal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.saveCategoryFilterVal(filterVal: $filterVal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.saveCategoryFilterVal'))
      ..add(DiagnosticsProperty('filterVal', filterVal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCategoryFilterVal &&
            (identical(other.filterVal, filterVal) ||
                other.filterVal == filterVal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterVal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCategoryFilterValCopyWith<_$SaveCategoryFilterVal> get copyWith =>
      __$$SaveCategoryFilterValCopyWithImpl<_$SaveCategoryFilterVal>(
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) {
    return saveCategoryFilterVal(filterVal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) {
    return saveCategoryFilterVal?.call(filterVal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (saveCategoryFilterVal != null) {
      return saveCategoryFilterVal(filterVal);
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) {
    return saveCategoryFilterVal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) {
    return saveCategoryFilterVal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (saveCategoryFilterVal != null) {
      return saveCategoryFilterVal(this);
    }
    return orElse();
  }
}

abstract class SaveCategoryFilterVal implements CategoryEvent {
  const factory SaveCategoryFilterVal({required final String filterVal}) =
      _$SaveCategoryFilterVal;

  String get filterVal;
  @JsonKey(ignore: true)
  _$$SaveCategoryFilterValCopyWith<_$SaveCategoryFilterVal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePriceRangeCopyWith<$Res> {
  factory _$$SavePriceRangeCopyWith(
          _$SavePriceRange value, $Res Function(_$SavePriceRange) then) =
      __$$SavePriceRangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String minPrice, String maxPrice, RangeValues rangeValues});
}

/// @nodoc
class __$$SavePriceRangeCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SavePriceRange>
    implements _$$SavePriceRangeCopyWith<$Res> {
  __$$SavePriceRangeCopyWithImpl(
      _$SavePriceRange _value, $Res Function(_$SavePriceRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? rangeValues = null,
  }) {
    return _then(_$SavePriceRange(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String,
      rangeValues: null == rangeValues
          ? _value.rangeValues
          : rangeValues // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$SavePriceRange with DiagnosticableTreeMixin implements SavePriceRange {
  const _$SavePriceRange(
      {required this.minPrice,
      required this.maxPrice,
      required this.rangeValues});

  @override
  final String minPrice;
  @override
  final String maxPrice;
  @override
  final RangeValues rangeValues;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.savePriceRange(minPrice: $minPrice, maxPrice: $maxPrice, rangeValues: $rangeValues)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.savePriceRange'))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('rangeValues', rangeValues));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePriceRange &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.rangeValues, rangeValues) ||
                other.rangeValues == rangeValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice, rangeValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePriceRangeCopyWith<_$SavePriceRange> get copyWith =>
      __$$SavePriceRangeCopyWithImpl<_$SavePriceRange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) {
    return savePriceRange(minPrice, maxPrice, rangeValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) {
    return savePriceRange?.call(minPrice, maxPrice, rangeValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (savePriceRange != null) {
      return savePriceRange(minPrice, maxPrice, rangeValues);
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) {
    return savePriceRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) {
    return savePriceRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (savePriceRange != null) {
      return savePriceRange(this);
    }
    return orElse();
  }
}

abstract class SavePriceRange implements CategoryEvent {
  const factory SavePriceRange(
      {required final String minPrice,
      required final String maxPrice,
      required final RangeValues rangeValues}) = _$SavePriceRange;

  String get minPrice;
  String get maxPrice;
  RangeValues get rangeValues;
  @JsonKey(ignore: true)
  _$$SavePriceRangeCopyWith<_$SavePriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductSortByPriceCopyWith<$Res> {
  factory _$$FetchProductSortByPriceCopyWith(_$FetchProductSortByPrice value,
          $Res Function(_$FetchProductSortByPrice) then) =
      __$$FetchProductSortByPriceCopyWithImpl<$Res>;
  @useResult
  $Res call({String order, String? category, String? subCategory});
}

/// @nodoc
class __$$FetchProductSortByPriceCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchProductSortByPrice>
    implements _$$FetchProductSortByPriceCopyWith<$Res> {
  __$$FetchProductSortByPriceCopyWithImpl(_$FetchProductSortByPrice _value,
      $Res Function(_$FetchProductSortByPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? category = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$FetchProductSortByPrice(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$FetchProductSortByPrice
    with DiagnosticableTreeMixin
    implements FetchProductSortByPrice {
  const _$FetchProductSortByPrice(
      {required this.order, required this.category, required this.subCategory});

  @override
  final String order;
  @override
  final String? category;
  @override
  final String? subCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchProductSortByPrice(order: $order, category: $category, subCategory: $subCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CategoryEvent.fetchProductSortByPrice'))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subCategory', subCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductSortByPrice &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, category, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductSortByPriceCopyWith<_$FetchProductSortByPrice> get copyWith =>
      __$$FetchProductSortByPriceCopyWithImpl<_$FetchProductSortByPrice>(
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductSortByPrice(order, category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductSortByPrice?.call(order, category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (fetchProductSortByPrice != null) {
      return fetchProductSortByPrice(order, category, subCategory);
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductSortByPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductSortByPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (fetchProductSortByPrice != null) {
      return fetchProductSortByPrice(this);
    }
    return orElse();
  }
}

abstract class FetchProductSortByPrice implements CategoryEvent {
  const factory FetchProductSortByPrice(
      {required final String order,
      required final String? category,
      required final String? subCategory}) = _$FetchProductSortByPrice;

  String get order;
  String? get category;
  String? get subCategory;
  @JsonKey(ignore: true)
  _$$FetchProductSortByPriceCopyWith<_$FetchProductSortByPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSortListIndexCopyWith<$Res> {
  factory _$$ChangeSortListIndexCopyWith(_$ChangeSortListIndex value,
          $Res Function(_$ChangeSortListIndex) then) =
      __$$ChangeSortListIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeSortListIndexCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ChangeSortListIndex>
    implements _$$ChangeSortListIndexCopyWith<$Res> {
  __$$ChangeSortListIndexCopyWithImpl(
      _$ChangeSortListIndex _value, $Res Function(_$ChangeSortListIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeSortListIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSortListIndex
    with DiagnosticableTreeMixin
    implements ChangeSortListIndex {
  const _$ChangeSortListIndex({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.changeSortListIndex(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.changeSortListIndex'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortListIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortListIndexCopyWith<_$ChangeSortListIndex> get copyWith =>
      __$$ChangeSortListIndexCopyWithImpl<_$ChangeSortListIndex>(
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
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) {
    return changeSortListIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) {
    return changeSortListIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (changeSortListIndex != null) {
      return changeSortListIndex(index);
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) {
    return changeSortListIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) {
    return changeSortListIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (changeSortListIndex != null) {
      return changeSortListIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeSortListIndex implements CategoryEvent {
  const factory ChangeSortListIndex({required final int index}) =
      _$ChangeSortListIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeSortListIndexCopyWith<_$ChangeSortListIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductsByFilterPricerangeCopyWith<$Res> {
  factory _$$FetchProductsByFilterPricerangeCopyWith(
          _$FetchProductsByFilterPricerange value,
          $Res Function(_$FetchProductsByFilterPricerange) then) =
      __$$FetchProductsByFilterPricerangeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String minPrice, String maxPrice, String category, String subCategory});
}

/// @nodoc
class __$$FetchProductsByFilterPricerangeCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchProductsByFilterPricerange>
    implements _$$FetchProductsByFilterPricerangeCopyWith<$Res> {
  __$$FetchProductsByFilterPricerangeCopyWithImpl(
      _$FetchProductsByFilterPricerange _value,
      $Res Function(_$FetchProductsByFilterPricerange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? category = null,
    Object? subCategory = null,
  }) {
    return _then(_$FetchProductsByFilterPricerange(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductsByFilterPricerange
    with DiagnosticableTreeMixin
    implements FetchProductsByFilterPricerange {
  const _$FetchProductsByFilterPricerange(
      {required this.minPrice,
      required this.maxPrice,
      required this.category,
      required this.subCategory});

  @override
  final String minPrice;
  @override
  final String maxPrice;
  @override
  final String category;
  @override
  final String subCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchProductsByFilterPricerange(minPrice: $minPrice, maxPrice: $maxPrice, category: $category, subCategory: $subCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CategoryEvent.fetchProductsByFilterPricerange'))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subCategory', subCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductsByFilterPricerange &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, minPrice, maxPrice, category, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductsByFilterPricerangeCopyWith<_$FetchProductsByFilterPricerange>
      get copyWith => __$$FetchProductsByFilterPricerangeCopyWithImpl<
          _$FetchProductsByFilterPricerange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, String? subCategory, String? itemId)
        fetchFilterProducts,
    required TResult Function() fetchCategories,
    required TResult Function() fetchSubcategories,
    required TResult Function(String value) onSelectFilter,
    required TResult Function(String category) fetchItemsByCategory,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductsByFilterPricerange(
        minPrice, maxPrice, category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult? Function()? fetchCategories,
    TResult? Function()? fetchSubcategories,
    TResult? Function(String value)? onSelectFilter,
    TResult? Function(String category)? fetchItemsByCategory,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductsByFilterPricerange?.call(
        minPrice, maxPrice, category, subCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, String? subCategory, String? itemId)?
        fetchFilterProducts,
    TResult Function()? fetchCategories,
    TResult Function()? fetchSubcategories,
    TResult Function(String value)? onSelectFilter,
    TResult Function(String category)? fetchItemsByCategory,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (fetchProductsByFilterPricerange != null) {
      return fetchProductsByFilterPricerange(
          minPrice, maxPrice, category, subCategory);
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
    required TResult Function(FetchItemsByCategory value) fetchItemsByCategory,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilterPricerange value)
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductsByFilterPricerange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
  }) {
    return fetchProductsByFilterPricerange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilterPricerange value)?
        fetchProductsByFilterPricerange,
    required TResult orElse(),
  }) {
    if (fetchProductsByFilterPricerange != null) {
      return fetchProductsByFilterPricerange(this);
    }
    return orElse();
  }
}

abstract class FetchProductsByFilterPricerange implements CategoryEvent {
  const factory FetchProductsByFilterPricerange(
      {required final String minPrice,
      required final String maxPrice,
      required final String category,
      required final String subCategory}) = _$FetchProductsByFilterPricerange;

  String get minPrice;
  String get maxPrice;
  String get category;
  String get subCategory;
  @JsonKey(ignore: true)
  _$$FetchProductsByFilterPricerangeCopyWith<_$FetchProductsByFilterPricerange>
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
  String get filterVal => throw _privateConstructorUsedError;
  String get minPrice => throw _privateConstructorUsedError;
  String get maxPrice => throw _privateConstructorUsedError;
  int get sortListIndex => throw _privateConstructorUsedError;
  RangeValues get rangeValues => throw _privateConstructorUsedError;
  CategoryItemModel? get categoryItemModel =>
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
      SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel,
      String filterVal,
      String minPrice,
      String maxPrice,
      int sortListIndex,
      RangeValues rangeValues,
      CategoryItemModel? categoryItemModel});

  $ProductModelCopyWith<$Res>? get product;
  $CategoryModelCopyWith<$Res>? get category;
  $SubCategoryModelCopyWith<$Res>? get subCategory;
  $SubcategoryByCategoryIdModelCopyWith<$Res>? get subcategoryByCategoryIdModel;
  $CategoryItemModelCopyWith<$Res>? get categoryItemModel;
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
    Object? filterVal = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? sortListIndex = null,
    Object? rangeValues = null,
    Object? categoryItemModel = freezed,
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
      filterVal: null == filterVal
          ? _value.filterVal
          : filterVal // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String,
      sortListIndex: null == sortListIndex
          ? _value.sortListIndex
          : sortListIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rangeValues: null == rangeValues
          ? _value.rangeValues
          : rangeValues // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      categoryItemModel: freezed == categoryItemModel
          ? _value.categoryItemModel
          : categoryItemModel // ignore: cast_nullable_to_non_nullable
              as CategoryItemModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $CategoryItemModelCopyWith<$Res>? get categoryItemModel {
    if (_value.categoryItemModel == null) {
      return null;
    }

    return $CategoryItemModelCopyWith<$Res>(_value.categoryItemModel!, (value) {
      return _then(_value.copyWith(categoryItemModel: value) as $Val);
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
      SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel,
      String filterVal,
      String minPrice,
      String maxPrice,
      int sortListIndex,
      RangeValues rangeValues,
      CategoryItemModel? categoryItemModel});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $SubCategoryModelCopyWith<$Res>? get subCategory;
  @override
  $SubcategoryByCategoryIdModelCopyWith<$Res>? get subcategoryByCategoryIdModel;
  @override
  $CategoryItemModelCopyWith<$Res>? get categoryItemModel;
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
    Object? filterVal = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? sortListIndex = null,
    Object? rangeValues = null,
    Object? categoryItemModel = freezed,
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
      filterVal: null == filterVal
          ? _value.filterVal
          : filterVal // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String,
      sortListIndex: null == sortListIndex
          ? _value.sortListIndex
          : sortListIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rangeValues: null == rangeValues
          ? _value.rangeValues
          : rangeValues // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      categoryItemModel: freezed == categoryItemModel
          ? _value.categoryItemModel
          : categoryItemModel // ignore: cast_nullable_to_non_nullable
              as CategoryItemModel?,
    ));
  }
}

/// @nodoc

class _$_CategoryState with DiagnosticableTreeMixin implements _CategoryState {
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
      required this.subcategoryByCategoryIdModel,
      required this.filterVal,
      required this.minPrice,
      required this.maxPrice,
      required this.sortListIndex,
      required this.rangeValues,
      required this.categoryItemModel});

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
  final String filterVal;
  @override
  final String minPrice;
  @override
  final String maxPrice;
  @override
  final int sortListIndex;
  @override
  final RangeValues rangeValues;
  @override
  final CategoryItemModel? categoryItemModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState(product: $product, productLoading: $productLoading, errorMessage: $errorMessage, category: $category, categoryLoading: $categoryLoading, subCategory: $subCategory, subCategoryLoading: $subCategoryLoading, selectedFilter: $selectedFilter, filterCategory: $filterCategory, filterSubCategory: $filterSubCategory, filterBrand: $filterBrand, priceRangeIndex: $priceRangeIndex, subcategoryByCategoryIdModel: $subcategoryByCategoryIdModel, filterVal: $filterVal, minPrice: $minPrice, maxPrice: $maxPrice, sortListIndex: $sortListIndex, rangeValues: $rangeValues, categoryItemModel: $categoryItemModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState'))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('productLoading', productLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('categoryLoading', categoryLoading))
      ..add(DiagnosticsProperty('subCategory', subCategory))
      ..add(DiagnosticsProperty('subCategoryLoading', subCategoryLoading))
      ..add(DiagnosticsProperty('selectedFilter', selectedFilter))
      ..add(DiagnosticsProperty('filterCategory', filterCategory))
      ..add(DiagnosticsProperty('filterSubCategory', filterSubCategory))
      ..add(DiagnosticsProperty('filterBrand', filterBrand))
      ..add(DiagnosticsProperty('priceRangeIndex', priceRangeIndex))
      ..add(DiagnosticsProperty(
          'subcategoryByCategoryIdModel', subcategoryByCategoryIdModel))
      ..add(DiagnosticsProperty('filterVal', filterVal))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('sortListIndex', sortListIndex))
      ..add(DiagnosticsProperty('rangeValues', rangeValues))
      ..add(DiagnosticsProperty('categoryItemModel', categoryItemModel));
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
                    subcategoryByCategoryIdModel) &&
            (identical(other.filterVal, filterVal) ||
                other.filterVal == filterVal) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.sortListIndex, sortListIndex) ||
                other.sortListIndex == sortListIndex) &&
            (identical(other.rangeValues, rangeValues) ||
                other.rangeValues == rangeValues) &&
            (identical(other.categoryItemModel, categoryItemModel) ||
                other.categoryItemModel == categoryItemModel));
  }

  @override
  int get hashCode => Object.hashAll([
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
        subcategoryByCategoryIdModel,
        filterVal,
        minPrice,
        maxPrice,
        sortListIndex,
        rangeValues,
        categoryItemModel
      ]);

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
      required final SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel,
      required final String filterVal,
      required final String minPrice,
      required final String maxPrice,
      required final int sortListIndex,
      required final RangeValues rangeValues,
      required final CategoryItemModel? categoryItemModel}) = _$_CategoryState;

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
  String get filterVal;
  @override
  String get minPrice;
  @override
  String get maxPrice;
  @override
  int get sortListIndex;
  @override
  RangeValues get rangeValues;
  @override
  CategoryItemModel? get categoryItemModel;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
