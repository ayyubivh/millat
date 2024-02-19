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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
abstract class _$$FetchFilterProductsImplCopyWith<$Res> {
  factory _$$FetchFilterProductsImplCopyWith(_$FetchFilterProductsImpl value,
          $Res Function(_$FetchFilterProductsImpl) then) =
      __$$FetchFilterProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category, String? subCategory, String? itemId});
}

/// @nodoc
class __$$FetchFilterProductsImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchFilterProductsImpl>
    implements _$$FetchFilterProductsImplCopyWith<$Res> {
  __$$FetchFilterProductsImplCopyWithImpl(_$FetchFilterProductsImpl _value,
      $Res Function(_$FetchFilterProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$FetchFilterProductsImpl(
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

class _$FetchFilterProductsImpl implements FetchFilterProducts {
  const _$FetchFilterProductsImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFilterProductsImpl &&
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
  _$$FetchFilterProductsImplCopyWith<_$FetchFilterProductsImpl> get copyWith =>
      __$$FetchFilterProductsImplCopyWithImpl<_$FetchFilterProductsImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      final String? itemId}) = _$FetchFilterProductsImpl;

  String? get category;
  String? get subCategory;
  String? get itemId;
  @JsonKey(ignore: true)
  _$$FetchFilterProductsImplCopyWith<_$FetchFilterProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoriesImplCopyWith<$Res> {
  factory _$$FetchCategoriesImplCopyWith(_$FetchCategoriesImpl value,
          $Res Function(_$FetchCategoriesImpl) then) =
      __$$FetchCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchCategoriesImpl>
    implements _$$FetchCategoriesImplCopyWith<$Res> {
  __$$FetchCategoriesImplCopyWithImpl(
      _$FetchCategoriesImpl _value, $Res Function(_$FetchCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategoriesImpl implements FetchCategories {
  const _$FetchCategoriesImpl();

  @override
  String toString() {
    return 'CategoryEvent.fetchCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategoriesImpl);
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class FetchCategories implements CategoryEvent {
  const factory FetchCategories() = _$FetchCategoriesImpl;
}

/// @nodoc
abstract class _$$FetchSubcategoriesImplCopyWith<$Res> {
  factory _$$FetchSubcategoriesImplCopyWith(_$FetchSubcategoriesImpl value,
          $Res Function(_$FetchSubcategoriesImpl) then) =
      __$$FetchSubcategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSubcategoriesImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchSubcategoriesImpl>
    implements _$$FetchSubcategoriesImplCopyWith<$Res> {
  __$$FetchSubcategoriesImplCopyWithImpl(_$FetchSubcategoriesImpl _value,
      $Res Function(_$FetchSubcategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSubcategoriesImpl implements FetchSubcategories {
  const _$FetchSubcategoriesImpl();

  @override
  String toString() {
    return 'CategoryEvent.fetchSubcategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSubcategoriesImpl);
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (fetchSubcategories != null) {
      return fetchSubcategories(this);
    }
    return orElse();
  }
}

abstract class FetchSubcategories implements CategoryEvent {
  const factory FetchSubcategories() = _$FetchSubcategoriesImpl;
}

/// @nodoc
abstract class _$$OnSelectFilterImplCopyWith<$Res> {
  factory _$$OnSelectFilterImplCopyWith(_$OnSelectFilterImpl value,
          $Res Function(_$OnSelectFilterImpl) then) =
      __$$OnSelectFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnSelectFilterImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$OnSelectFilterImpl>
    implements _$$OnSelectFilterImplCopyWith<$Res> {
  __$$OnSelectFilterImplCopyWithImpl(
      _$OnSelectFilterImpl _value, $Res Function(_$OnSelectFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnSelectFilterImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSelectFilterImpl implements OnSelectFilter {
  const _$OnSelectFilterImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.onSelectFilter(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectFilterImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectFilterImplCopyWith<_$OnSelectFilterImpl> get copyWith =>
      __$$OnSelectFilterImplCopyWithImpl<_$OnSelectFilterImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      _$OnSelectFilterImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$OnSelectFilterImplCopyWith<_$OnSelectFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchItemsByCategoryImplCopyWith<$Res> {
  factory _$$FetchItemsByCategoryImplCopyWith(_$FetchItemsByCategoryImpl value,
          $Res Function(_$FetchItemsByCategoryImpl) then) =
      __$$FetchItemsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FetchItemsByCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchItemsByCategoryImpl>
    implements _$$FetchItemsByCategoryImplCopyWith<$Res> {
  __$$FetchItemsByCategoryImplCopyWithImpl(_$FetchItemsByCategoryImpl _value,
      $Res Function(_$FetchItemsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FetchItemsByCategoryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchItemsByCategoryImpl implements FetchItemsByCategory {
  const _$FetchItemsByCategoryImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'CategoryEvent.fetchItemsByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchItemsByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchItemsByCategoryImplCopyWith<_$FetchItemsByCategoryImpl>
      get copyWith =>
          __$$FetchItemsByCategoryImplCopyWithImpl<_$FetchItemsByCategoryImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      _$FetchItemsByCategoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$FetchItemsByCategoryImplCopyWith<_$FetchItemsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryIndexEventImplCopyWith<$Res> {
  factory _$$ChangeCategoryIndexEventImplCopyWith(
          _$ChangeCategoryIndexEventImpl value,
          $Res Function(_$ChangeCategoryIndexEventImpl) then) =
      __$$ChangeCategoryIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCategoryIndexEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ChangeCategoryIndexEventImpl>
    implements _$$ChangeCategoryIndexEventImplCopyWith<$Res> {
  __$$ChangeCategoryIndexEventImplCopyWithImpl(
      _$ChangeCategoryIndexEventImpl _value,
      $Res Function(_$ChangeCategoryIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCategoryIndexEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryIndexEventImpl implements ChangeCategoryIndexEvent {
  const _$ChangeCategoryIndexEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryEvent.changeCategoryIndexEvent(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryIndexEventImplCopyWith<_$ChangeCategoryIndexEventImpl>
      get copyWith => __$$ChangeCategoryIndexEventImplCopyWithImpl<
          _$ChangeCategoryIndexEventImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return changeCategoryIndexEvent(index);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return changeCategoryIndexEvent?.call(index);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (changeCategoryIndexEvent != null) {
      return changeCategoryIndexEvent(index);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return changeCategoryIndexEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return changeCategoryIndexEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (changeCategoryIndexEvent != null) {
      return changeCategoryIndexEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryIndexEvent implements CategoryEvent {
  const factory ChangeCategoryIndexEvent({required final int index}) =
      _$ChangeCategoryIndexEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeCategoryIndexEventImplCopyWith<_$ChangeCategoryIndexEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterEventImplCopyWith<$Res> {
  factory _$$FilterEventImplCopyWith(
          _$FilterEventImpl value, $Res Function(_$FilterEventImpl) then) =
      __$$FilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category, String? subCategory});
}

/// @nodoc
class __$$FilterEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FilterEventImpl>
    implements _$$FilterEventImplCopyWith<$Res> {
  __$$FilterEventImplCopyWithImpl(
      _$FilterEventImpl _value, $Res Function(_$FilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$FilterEventImpl(
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

class _$FilterEventImpl implements FilterEvent {
  const _$FilterEventImpl({required this.category, required this.subCategory});

  @override
  final String? category;
  @override
  final String? subCategory;

  @override
  String toString() {
    return 'CategoryEvent.filterEvent(category: $category, subCategory: $subCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEventImpl &&
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
  _$$FilterEventImplCopyWith<_$FilterEventImpl> get copyWith =>
      __$$FilterEventImplCopyWithImpl<_$FilterEventImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      required final String? subCategory}) = _$FilterEventImpl;

  String? get category;
  String? get subCategory;
  @JsonKey(ignore: true)
  _$$FilterEventImplCopyWith<_$FilterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterBrandPickEventImplCopyWith<$Res> {
  factory _$$FilterBrandPickEventImplCopyWith(_$FilterBrandPickEventImpl value,
          $Res Function(_$FilterBrandPickEventImpl) then) =
      __$$FilterBrandPickEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String brand});
}

/// @nodoc
class __$$FilterBrandPickEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FilterBrandPickEventImpl>
    implements _$$FilterBrandPickEventImplCopyWith<$Res> {
  __$$FilterBrandPickEventImplCopyWithImpl(_$FilterBrandPickEventImpl _value,
      $Res Function(_$FilterBrandPickEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
  }) {
    return _then(_$FilterBrandPickEventImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterBrandPickEventImpl implements FilterBrandPickEvent {
  const _$FilterBrandPickEventImpl({required this.brand});

  @override
  final String brand;

  @override
  String toString() {
    return 'CategoryEvent.filterBrandPickEvent(brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterBrandPickEventImpl &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterBrandPickEventImplCopyWith<_$FilterBrandPickEventImpl>
      get copyWith =>
          __$$FilterBrandPickEventImplCopyWithImpl<_$FilterBrandPickEventImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      _$FilterBrandPickEventImpl;

  String get brand;
  @JsonKey(ignore: true)
  _$$FilterBrandPickEventImplCopyWith<_$FilterBrandPickEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceRangeEventImplCopyWith<$Res> {
  factory _$$PriceRangeEventImplCopyWith(_$PriceRangeEventImpl value,
          $Res Function(_$PriceRangeEventImpl) then) =
      __$$PriceRangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PriceRangeEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$PriceRangeEventImpl>
    implements _$$PriceRangeEventImplCopyWith<$Res> {
  __$$PriceRangeEventImplCopyWithImpl(
      _$PriceRangeEventImpl _value, $Res Function(_$PriceRangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$PriceRangeEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PriceRangeEventImpl implements PriceRangeEvent {
  const _$PriceRangeEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryEvent.priceRangeEvent(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeEventImplCopyWith<_$PriceRangeEventImpl> get copyWith =>
      __$$PriceRangeEventImplCopyWithImpl<_$PriceRangeEventImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (priceRangeEvent != null) {
      return priceRangeEvent(this);
    }
    return orElse();
  }
}

abstract class PriceRangeEvent implements CategoryEvent {
  const factory PriceRangeEvent({required final int index}) =
      _$PriceRangeEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$PriceRangeEventImplCopyWith<_$PriceRangeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubCategoriesByCategoryIdImplCopyWith<$Res> {
  factory _$$FetchSubCategoriesByCategoryIdImplCopyWith(
          _$FetchSubCategoriesByCategoryIdImpl value,
          $Res Function(_$FetchSubCategoriesByCategoryIdImpl) then) =
      __$$FetchSubCategoriesByCategoryIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$FetchSubCategoriesByCategoryIdImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res,
        _$FetchSubCategoriesByCategoryIdImpl>
    implements _$$FetchSubCategoriesByCategoryIdImplCopyWith<$Res> {
  __$$FetchSubCategoriesByCategoryIdImplCopyWithImpl(
      _$FetchSubCategoriesByCategoryIdImpl _value,
      $Res Function(_$FetchSubCategoriesByCategoryIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$FetchSubCategoriesByCategoryIdImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSubCategoriesByCategoryIdImpl
    implements FetchSubCategoriesByCategoryId {
  const _$FetchSubCategoriesByCategoryIdImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'CategoryEvent.fetchSubCategoriesByCategoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubCategoriesByCategoryIdImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubCategoriesByCategoryIdImplCopyWith<
          _$FetchSubCategoriesByCategoryIdImpl>
      get copyWith => __$$FetchSubCategoriesByCategoryIdImplCopyWithImpl<
          _$FetchSubCategoriesByCategoryIdImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
          {required final String categoryId}) =
      _$FetchSubCategoriesByCategoryIdImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$FetchSubCategoriesByCategoryIdImplCopyWith<
          _$FetchSubCategoriesByCategoryIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePriceRangeImplCopyWith<$Res> {
  factory _$$SavePriceRangeImplCopyWith(_$SavePriceRangeImpl value,
          $Res Function(_$SavePriceRangeImpl) then) =
      __$$SavePriceRangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String minPrice, String maxPrice, RangeValues rangeValues});
}

/// @nodoc
class __$$SavePriceRangeImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SavePriceRangeImpl>
    implements _$$SavePriceRangeImplCopyWith<$Res> {
  __$$SavePriceRangeImplCopyWithImpl(
      _$SavePriceRangeImpl _value, $Res Function(_$SavePriceRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? rangeValues = null,
  }) {
    return _then(_$SavePriceRangeImpl(
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

class _$SavePriceRangeImpl implements SavePriceRange {
  const _$SavePriceRangeImpl(
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
  String toString() {
    return 'CategoryEvent.savePriceRange(minPrice: $minPrice, maxPrice: $maxPrice, rangeValues: $rangeValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePriceRangeImpl &&
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
  _$$SavePriceRangeImplCopyWith<_$SavePriceRangeImpl> get copyWith =>
      __$$SavePriceRangeImplCopyWithImpl<_$SavePriceRangeImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      required final RangeValues rangeValues}) = _$SavePriceRangeImpl;

  String get minPrice;
  String get maxPrice;
  RangeValues get rangeValues;
  @JsonKey(ignore: true)
  _$$SavePriceRangeImplCopyWith<_$SavePriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductSortByPriceImplCopyWith<$Res> {
  factory _$$FetchProductSortByPriceImplCopyWith(
          _$FetchProductSortByPriceImpl value,
          $Res Function(_$FetchProductSortByPriceImpl) then) =
      __$$FetchProductSortByPriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String order, String? category, String? subCategory});
}

/// @nodoc
class __$$FetchProductSortByPriceImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchProductSortByPriceImpl>
    implements _$$FetchProductSortByPriceImplCopyWith<$Res> {
  __$$FetchProductSortByPriceImplCopyWithImpl(
      _$FetchProductSortByPriceImpl _value,
      $Res Function(_$FetchProductSortByPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? category = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$FetchProductSortByPriceImpl(
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

class _$FetchProductSortByPriceImpl implements FetchProductSortByPrice {
  const _$FetchProductSortByPriceImpl(
      {required this.order, required this.category, required this.subCategory});

  @override
  final String order;
  @override
  final String? category;
  @override
  final String? subCategory;

  @override
  String toString() {
    return 'CategoryEvent.fetchProductSortByPrice(order: $order, category: $category, subCategory: $subCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductSortByPriceImpl &&
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
  _$$FetchProductSortByPriceImplCopyWith<_$FetchProductSortByPriceImpl>
      get copyWith => __$$FetchProductSortByPriceImplCopyWithImpl<
          _$FetchProductSortByPriceImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      required final String? subCategory}) = _$FetchProductSortByPriceImpl;

  String get order;
  String? get category;
  String? get subCategory;
  @JsonKey(ignore: true)
  _$$FetchProductSortByPriceImplCopyWith<_$FetchProductSortByPriceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSortListIndexImplCopyWith<$Res> {
  factory _$$ChangeSortListIndexImplCopyWith(_$ChangeSortListIndexImpl value,
          $Res Function(_$ChangeSortListIndexImpl) then) =
      __$$ChangeSortListIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeSortListIndexImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ChangeSortListIndexImpl>
    implements _$$ChangeSortListIndexImplCopyWith<$Res> {
  __$$ChangeSortListIndexImplCopyWithImpl(_$ChangeSortListIndexImpl _value,
      $Res Function(_$ChangeSortListIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeSortListIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSortListIndexImpl implements ChangeSortListIndex {
  const _$ChangeSortListIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryEvent.changeSortListIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortListIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortListIndexImplCopyWith<_$ChangeSortListIndexImpl> get copyWith =>
      __$$ChangeSortListIndexImplCopyWithImpl<_$ChangeSortListIndexImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
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
      _$ChangeSortListIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeSortListIndexImplCopyWith<_$ChangeSortListIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductsByFilterImplCopyWith<$Res> {
  factory _$$FetchProductsByFilterImplCopyWith(
          _$FetchProductsByFilterImpl value,
          $Res Function(_$FetchProductsByFilterImpl) then) =
      __$$FetchProductsByFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int minPrice,
      int maxPrice,
      String category,
      List<String> subCategory,
      List<String> brand,
      List<String> color,
      List<String>? itemId});
}

/// @nodoc
class __$$FetchProductsByFilterImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchProductsByFilterImpl>
    implements _$$FetchProductsByFilterImplCopyWith<$Res> {
  __$$FetchProductsByFilterImplCopyWithImpl(_$FetchProductsByFilterImpl _value,
      $Res Function(_$FetchProductsByFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? category = null,
    Object? subCategory = null,
    Object? brand = null,
    Object? color = null,
    Object? itemId = freezed,
  }) {
    return _then(_$FetchProductsByFilterImpl(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value._subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      brand: null == brand
          ? _value._brand
          : brand // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: null == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemId: freezed == itemId
          ? _value._itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$FetchProductsByFilterImpl implements FetchProductsByFilter {
  const _$FetchProductsByFilterImpl(
      {required this.minPrice,
      required this.maxPrice,
      required this.category,
      required final List<String> subCategory,
      required final List<String> brand,
      required final List<String> color,
      final List<String>? itemId})
      : _subCategory = subCategory,
        _brand = brand,
        _color = color,
        _itemId = itemId;

  @override
  final int minPrice;
  @override
  final int maxPrice;
  @override
  final String category;
  final List<String> _subCategory;
  @override
  List<String> get subCategory {
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategory);
  }

  final List<String> _brand;
  @override
  List<String> get brand {
    if (_brand is EqualUnmodifiableListView) return _brand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brand);
  }

  final List<String> _color;
  @override
  List<String> get color {
    if (_color is EqualUnmodifiableListView) return _color;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_color);
  }

  final List<String>? _itemId;
  @override
  List<String>? get itemId {
    final value = _itemId;
    if (value == null) return null;
    if (_itemId is EqualUnmodifiableListView) return _itemId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryEvent.fetchProductsByFilter(minPrice: $minPrice, maxPrice: $maxPrice, category: $category, subCategory: $subCategory, brand: $brand, color: $color, itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductsByFilterImpl &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._subCategory, _subCategory) &&
            const DeepCollectionEquality().equals(other._brand, _brand) &&
            const DeepCollectionEquality().equals(other._color, _color) &&
            const DeepCollectionEquality().equals(other._itemId, _itemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      minPrice,
      maxPrice,
      category,
      const DeepCollectionEquality().hash(_subCategory),
      const DeepCollectionEquality().hash(_brand),
      const DeepCollectionEquality().hash(_color),
      const DeepCollectionEquality().hash(_itemId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductsByFilterImplCopyWith<_$FetchProductsByFilterImpl>
      get copyWith => __$$FetchProductsByFilterImplCopyWithImpl<
          _$FetchProductsByFilterImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return fetchProductsByFilter(
        minPrice, maxPrice, category, subCategory, brand, color, itemId);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return fetchProductsByFilter?.call(
        minPrice, maxPrice, category, subCategory, brand, color, itemId);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (fetchProductsByFilter != null) {
      return fetchProductsByFilter(
          minPrice, maxPrice, category, subCategory, brand, color, itemId);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return fetchProductsByFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return fetchProductsByFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (fetchProductsByFilter != null) {
      return fetchProductsByFilter(this);
    }
    return orElse();
  }
}

abstract class FetchProductsByFilter implements CategoryEvent {
  const factory FetchProductsByFilter(
      {required final int minPrice,
      required final int maxPrice,
      required final String category,
      required final List<String> subCategory,
      required final List<String> brand,
      required final List<String> color,
      final List<String>? itemId}) = _$FetchProductsByFilterImpl;

  int get minPrice;
  int get maxPrice;
  String get category;
  List<String> get subCategory;
  List<String> get brand;
  List<String> get color;
  List<String>? get itemId;
  @JsonKey(ignore: true)
  _$$FetchProductsByFilterImplCopyWith<_$FetchProductsByFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFilterIndexImplCopyWith<$Res> {
  factory _$$ChangeFilterIndexImplCopyWith(_$ChangeFilterIndexImpl value,
          $Res Function(_$ChangeFilterIndexImpl) then) =
      __$$ChangeFilterIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeFilterIndexImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ChangeFilterIndexImpl>
    implements _$$ChangeFilterIndexImplCopyWith<$Res> {
  __$$ChangeFilterIndexImplCopyWithImpl(_$ChangeFilterIndexImpl _value,
      $Res Function(_$ChangeFilterIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeFilterIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeFilterIndexImpl implements ChangeFilterIndex {
  const _$ChangeFilterIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryEvent.changeFilterIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFilterIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFilterIndexImplCopyWith<_$ChangeFilterIndexImpl> get copyWith =>
      __$$ChangeFilterIndexImplCopyWithImpl<_$ChangeFilterIndexImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return changeFilterIndex(index);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return changeFilterIndex?.call(index);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (changeFilterIndex != null) {
      return changeFilterIndex(index);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return changeFilterIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return changeFilterIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (changeFilterIndex != null) {
      return changeFilterIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeFilterIndex implements CategoryEvent {
  const factory ChangeFilterIndex({required final int index}) =
      _$ChangeFilterIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeFilterIndexImplCopyWith<_$ChangeFilterIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFilterOptionEventImplCopyWith<$Res> {
  factory _$$FetchFilterOptionEventImplCopyWith(
          _$FetchFilterOptionEventImpl value,
          $Res Function(_$FetchFilterOptionEventImpl) then) =
      __$$FetchFilterOptionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FetchFilterOptionEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchFilterOptionEventImpl>
    implements _$$FetchFilterOptionEventImplCopyWith<$Res> {
  __$$FetchFilterOptionEventImplCopyWithImpl(
      _$FetchFilterOptionEventImpl _value,
      $Res Function(_$FetchFilterOptionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FetchFilterOptionEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFilterOptionEventImpl implements FetchFilterOptionEvent {
  const _$FetchFilterOptionEventImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'CategoryEvent.fetchFilterOptionEvent(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFilterOptionEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFilterOptionEventImplCopyWith<_$FetchFilterOptionEventImpl>
      get copyWith => __$$FetchFilterOptionEventImplCopyWithImpl<
          _$FetchFilterOptionEventImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return fetchFilterOptionEvent(category);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return fetchFilterOptionEvent?.call(category);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (fetchFilterOptionEvent != null) {
      return fetchFilterOptionEvent(category);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return fetchFilterOptionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return fetchFilterOptionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (fetchFilterOptionEvent != null) {
      return fetchFilterOptionEvent(this);
    }
    return orElse();
  }
}

abstract class FetchFilterOptionEvent implements CategoryEvent {
  const factory FetchFilterOptionEvent({required final String category}) =
      _$FetchFilterOptionEventImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$FetchFilterOptionEventImplCopyWith<_$FetchFilterOptionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveSubcategoryFiltersImplCopyWith<$Res> {
  factory _$$SaveSubcategoryFiltersImplCopyWith(
          _$SaveSubcategoryFiltersImpl value,
          $Res Function(_$SaveSubcategoryFiltersImpl) then) =
      __$$SaveSubcategoryFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SaveSubcategoryFiltersImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveSubcategoryFiltersImpl>
    implements _$$SaveSubcategoryFiltersImplCopyWith<$Res> {
  __$$SaveSubcategoryFiltersImplCopyWithImpl(
      _$SaveSubcategoryFiltersImpl _value,
      $Res Function(_$SaveSubcategoryFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SaveSubcategoryFiltersImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveSubcategoryFiltersImpl implements SaveSubcategoryFilters {
  const _$SaveSubcategoryFiltersImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.saveSubcategoryFilters(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSubcategoryFiltersImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSubcategoryFiltersImplCopyWith<_$SaveSubcategoryFiltersImpl>
      get copyWith => __$$SaveSubcategoryFiltersImplCopyWithImpl<
          _$SaveSubcategoryFiltersImpl>(this, _$identity);

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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return saveSubcategoryFilters(value);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return saveSubcategoryFilters?.call(value);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveSubcategoryFilters != null) {
      return saveSubcategoryFilters(value);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return saveSubcategoryFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return saveSubcategoryFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveSubcategoryFilters != null) {
      return saveSubcategoryFilters(this);
    }
    return orElse();
  }
}

abstract class SaveSubcategoryFilters implements CategoryEvent {
  const factory SaveSubcategoryFilters({required final String value}) =
      _$SaveSubcategoryFiltersImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SaveSubcategoryFiltersImplCopyWith<_$SaveSubcategoryFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveItemTypeFiltersImplCopyWith<$Res> {
  factory _$$SaveItemTypeFiltersImplCopyWith(_$SaveItemTypeFiltersImpl value,
          $Res Function(_$SaveItemTypeFiltersImpl) then) =
      __$$SaveItemTypeFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SaveItemTypeFiltersImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveItemTypeFiltersImpl>
    implements _$$SaveItemTypeFiltersImplCopyWith<$Res> {
  __$$SaveItemTypeFiltersImplCopyWithImpl(_$SaveItemTypeFiltersImpl _value,
      $Res Function(_$SaveItemTypeFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SaveItemTypeFiltersImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveItemTypeFiltersImpl implements SaveItemTypeFilters {
  const _$SaveItemTypeFiltersImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.saveItemTypeFilters(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveItemTypeFiltersImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveItemTypeFiltersImplCopyWith<_$SaveItemTypeFiltersImpl> get copyWith =>
      __$$SaveItemTypeFiltersImplCopyWithImpl<_$SaveItemTypeFiltersImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return saveItemTypeFilters(value);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return saveItemTypeFilters?.call(value);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveItemTypeFilters != null) {
      return saveItemTypeFilters(value);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return saveItemTypeFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return saveItemTypeFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveItemTypeFilters != null) {
      return saveItemTypeFilters(this);
    }
    return orElse();
  }
}

abstract class SaveItemTypeFilters implements CategoryEvent {
  const factory SaveItemTypeFilters({required final String value}) =
      _$SaveItemTypeFiltersImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SaveItemTypeFiltersImplCopyWith<_$SaveItemTypeFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveBrandsFiltersImplCopyWith<$Res> {
  factory _$$SaveBrandsFiltersImplCopyWith(_$SaveBrandsFiltersImpl value,
          $Res Function(_$SaveBrandsFiltersImpl) then) =
      __$$SaveBrandsFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SaveBrandsFiltersImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveBrandsFiltersImpl>
    implements _$$SaveBrandsFiltersImplCopyWith<$Res> {
  __$$SaveBrandsFiltersImplCopyWithImpl(_$SaveBrandsFiltersImpl _value,
      $Res Function(_$SaveBrandsFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SaveBrandsFiltersImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveBrandsFiltersImpl implements SaveBrandsFilters {
  const _$SaveBrandsFiltersImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.saveBrandsFilters(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveBrandsFiltersImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveBrandsFiltersImplCopyWith<_$SaveBrandsFiltersImpl> get copyWith =>
      __$$SaveBrandsFiltersImplCopyWithImpl<_$SaveBrandsFiltersImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return saveBrandsFilters(value);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return saveBrandsFilters?.call(value);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveBrandsFilters != null) {
      return saveBrandsFilters(value);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return saveBrandsFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return saveBrandsFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveBrandsFilters != null) {
      return saveBrandsFilters(this);
    }
    return orElse();
  }
}

abstract class SaveBrandsFilters implements CategoryEvent {
  const factory SaveBrandsFilters({required final String value}) =
      _$SaveBrandsFiltersImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SaveBrandsFiltersImplCopyWith<_$SaveBrandsFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveColorsFiltersImplCopyWith<$Res> {
  factory _$$SaveColorsFiltersImplCopyWith(_$SaveColorsFiltersImpl value,
          $Res Function(_$SaveColorsFiltersImpl) then) =
      __$$SaveColorsFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SaveColorsFiltersImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveColorsFiltersImpl>
    implements _$$SaveColorsFiltersImplCopyWith<$Res> {
  __$$SaveColorsFiltersImplCopyWithImpl(_$SaveColorsFiltersImpl _value,
      $Res Function(_$SaveColorsFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SaveColorsFiltersImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveColorsFiltersImpl implements SaveColorsFilters {
  const _$SaveColorsFiltersImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'CategoryEvent.saveColorsFilters(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveColorsFiltersImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveColorsFiltersImplCopyWith<_$SaveColorsFiltersImpl> get copyWith =>
      __$$SaveColorsFiltersImplCopyWithImpl<_$SaveColorsFiltersImpl>(
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return saveColorsFilters(value);
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return saveColorsFilters?.call(value);
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveColorsFilters != null) {
      return saveColorsFilters(value);
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return saveColorsFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return saveColorsFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (saveColorsFilters != null) {
      return saveColorsFilters(this);
    }
    return orElse();
  }
}

abstract class SaveColorsFilters implements CategoryEvent {
  const factory SaveColorsFilters({required final String value}) =
      _$SaveColorsFiltersImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SaveColorsFiltersImplCopyWith<_$SaveColorsFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllFilterEventImplCopyWith<$Res> {
  factory _$$ClearAllFilterEventImplCopyWith(_$ClearAllFilterEventImpl value,
          $Res Function(_$ClearAllFilterEventImpl) then) =
      __$$ClearAllFilterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllFilterEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ClearAllFilterEventImpl>
    implements _$$ClearAllFilterEventImplCopyWith<$Res> {
  __$$ClearAllFilterEventImplCopyWithImpl(_$ClearAllFilterEventImpl _value,
      $Res Function(_$ClearAllFilterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllFilterEventImpl implements ClearAllFilterEvent {
  const _$ClearAllFilterEventImpl();

  @override
  String toString() {
    return 'CategoryEvent.clearAllFilterEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAllFilterEventImpl);
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
    required TResult Function(int index) changeCategoryIndexEvent,
    required TResult Function(String? category, String? subCategory)
        filterEvent,
    required TResult Function(String brand) filterBrandPickEvent,
    required TResult Function(int index) priceRangeEvent,
    required TResult Function(String categoryId) fetchSubCategoriesByCategoryId,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(String category) fetchFilterOptionEvent,
    required TResult Function(String value) saveSubcategoryFilters,
    required TResult Function(String value) saveItemTypeFilters,
    required TResult Function(String value) saveBrandsFilters,
    required TResult Function(String value) saveColorsFilters,
    required TResult Function() clearAllFilterEvent,
  }) {
    return clearAllFilterEvent();
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
    TResult? Function(int index)? changeCategoryIndexEvent,
    TResult? Function(String? category, String? subCategory)? filterEvent,
    TResult? Function(String brand)? filterBrandPickEvent,
    TResult? Function(int index)? priceRangeEvent,
    TResult? Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(String category)? fetchFilterOptionEvent,
    TResult? Function(String value)? saveSubcategoryFilters,
    TResult? Function(String value)? saveItemTypeFilters,
    TResult? Function(String value)? saveBrandsFilters,
    TResult? Function(String value)? saveColorsFilters,
    TResult? Function()? clearAllFilterEvent,
  }) {
    return clearAllFilterEvent?.call();
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
    TResult Function(int index)? changeCategoryIndexEvent,
    TResult Function(String? category, String? subCategory)? filterEvent,
    TResult Function(String brand)? filterBrandPickEvent,
    TResult Function(int index)? priceRangeEvent,
    TResult Function(String categoryId)? fetchSubCategoriesByCategoryId,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(
            int minPrice,
            int maxPrice,
            String category,
            List<String> subCategory,
            List<String> brand,
            List<String> color,
            List<String>? itemId)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(String category)? fetchFilterOptionEvent,
    TResult Function(String value)? saveSubcategoryFilters,
    TResult Function(String value)? saveItemTypeFilters,
    TResult Function(String value)? saveBrandsFilters,
    TResult Function(String value)? saveColorsFilters,
    TResult Function()? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (clearAllFilterEvent != null) {
      return clearAllFilterEvent();
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
    required TResult Function(FilterEvent value) filterEvent,
    required TResult Function(FilterBrandPickEvent value) filterBrandPickEvent,
    required TResult Function(PriceRangeEvent value) priceRangeEvent,
    required TResult Function(FetchSubCategoriesByCategoryId value)
        fetchSubCategoriesByCategoryId,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
    required TResult Function(SaveSubcategoryFilters value)
        saveSubcategoryFilters,
    required TResult Function(SaveItemTypeFilters value) saveItemTypeFilters,
    required TResult Function(SaveBrandsFilters value) saveBrandsFilters,
    required TResult Function(SaveColorsFilters value) saveColorsFilters,
    required TResult Function(ClearAllFilterEvent value) clearAllFilterEvent,
  }) {
    return clearAllFilterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(FetchSubcategories value)? fetchSubcategories,
    TResult? Function(OnSelectFilter value)? onSelectFilter,
    TResult? Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult? Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult? Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult? Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult? Function(SaveColorsFilters value)? saveColorsFilters,
    TResult? Function(ClearAllFilterEvent value)? clearAllFilterEvent,
  }) {
    return clearAllFilterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFilterProducts value)? fetchFilterProducts,
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(FetchSubcategories value)? fetchSubcategories,
    TResult Function(OnSelectFilter value)? onSelectFilter,
    TResult Function(FetchItemsByCategory value)? fetchItemsByCategory,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    TResult Function(SaveSubcategoryFilters value)? saveSubcategoryFilters,
    TResult Function(SaveItemTypeFilters value)? saveItemTypeFilters,
    TResult Function(SaveBrandsFilters value)? saveBrandsFilters,
    TResult Function(SaveColorsFilters value)? saveColorsFilters,
    TResult Function(ClearAllFilterEvent value)? clearAllFilterEvent,
    required TResult orElse(),
  }) {
    if (clearAllFilterEvent != null) {
      return clearAllFilterEvent(this);
    }
    return orElse();
  }
}

abstract class ClearAllFilterEvent implements CategoryEvent {
  const factory ClearAllFilterEvent() = _$ClearAllFilterEventImpl;
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
  int get categoryIndex => throw _privateConstructorUsedError;
  int get filterIndex => throw _privateConstructorUsedError;
  FilterOptionModel? get filterOptionModel =>
      throw _privateConstructorUsedError;
  List<String> get subcategoryFiltersList => throw _privateConstructorUsedError;
  List<String> get brandsFiltersList => throw _privateConstructorUsedError;
  List<String> get colorsFiltersList => throw _privateConstructorUsedError;
  List<String> get itemTypeFiltersList => throw _privateConstructorUsedError;
  ProductResponse? get multiFilterProduct => throw _privateConstructorUsedError;

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
      CategoryItemModel? categoryItemModel,
      int categoryIndex,
      int filterIndex,
      FilterOptionModel? filterOptionModel,
      List<String> subcategoryFiltersList,
      List<String> brandsFiltersList,
      List<String> colorsFiltersList,
      List<String> itemTypeFiltersList,
      ProductResponse? multiFilterProduct});

  $ProductModelCopyWith<$Res>? get product;
  $CategoryModelCopyWith<$Res>? get category;
  $SubCategoryModelCopyWith<$Res>? get subCategory;
  $SubcategoryByCategoryIdModelCopyWith<$Res>? get subcategoryByCategoryIdModel;
  $CategoryItemModelCopyWith<$Res>? get categoryItemModel;
  $FilterOptionModelCopyWith<$Res>? get filterOptionModel;
  $ProductResponseCopyWith<$Res>? get multiFilterProduct;
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
    Object? categoryIndex = null,
    Object? filterIndex = null,
    Object? filterOptionModel = freezed,
    Object? subcategoryFiltersList = null,
    Object? brandsFiltersList = null,
    Object? colorsFiltersList = null,
    Object? itemTypeFiltersList = null,
    Object? multiFilterProduct = freezed,
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
      categoryIndex: null == categoryIndex
          ? _value.categoryIndex
          : categoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterIndex: null == filterIndex
          ? _value.filterIndex
          : filterIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterOptionModel: freezed == filterOptionModel
          ? _value.filterOptionModel
          : filterOptionModel // ignore: cast_nullable_to_non_nullable
              as FilterOptionModel?,
      subcategoryFiltersList: null == subcategoryFiltersList
          ? _value.subcategoryFiltersList
          : subcategoryFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      brandsFiltersList: null == brandsFiltersList
          ? _value.brandsFiltersList
          : brandsFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      colorsFiltersList: null == colorsFiltersList
          ? _value.colorsFiltersList
          : colorsFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemTypeFiltersList: null == itemTypeFiltersList
          ? _value.itemTypeFiltersList
          : itemTypeFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      multiFilterProduct: freezed == multiFilterProduct
          ? _value.multiFilterProduct
          : multiFilterProduct // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
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

  @override
  @pragma('vm:prefer-inline')
  $FilterOptionModelCopyWith<$Res>? get filterOptionModel {
    if (_value.filterOptionModel == null) {
      return null;
    }

    return $FilterOptionModelCopyWith<$Res>(_value.filterOptionModel!, (value) {
      return _then(_value.copyWith(filterOptionModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResponseCopyWith<$Res>? get multiFilterProduct {
    if (_value.multiFilterProduct == null) {
      return null;
    }

    return $ProductResponseCopyWith<$Res>(_value.multiFilterProduct!, (value) {
      return _then(_value.copyWith(multiFilterProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
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
      CategoryItemModel? categoryItemModel,
      int categoryIndex,
      int filterIndex,
      FilterOptionModel? filterOptionModel,
      List<String> subcategoryFiltersList,
      List<String> brandsFiltersList,
      List<String> colorsFiltersList,
      List<String> itemTypeFiltersList,
      ProductResponse? multiFilterProduct});

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
  @override
  $FilterOptionModelCopyWith<$Res>? get filterOptionModel;
  @override
  $ProductResponseCopyWith<$Res>? get multiFilterProduct;
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
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
    Object? categoryIndex = null,
    Object? filterIndex = null,
    Object? filterOptionModel = freezed,
    Object? subcategoryFiltersList = null,
    Object? brandsFiltersList = null,
    Object? colorsFiltersList = null,
    Object? itemTypeFiltersList = null,
    Object? multiFilterProduct = freezed,
  }) {
    return _then(_$CategoryStateImpl(
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
      categoryIndex: null == categoryIndex
          ? _value.categoryIndex
          : categoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterIndex: null == filterIndex
          ? _value.filterIndex
          : filterIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterOptionModel: freezed == filterOptionModel
          ? _value.filterOptionModel
          : filterOptionModel // ignore: cast_nullable_to_non_nullable
              as FilterOptionModel?,
      subcategoryFiltersList: null == subcategoryFiltersList
          ? _value._subcategoryFiltersList
          : subcategoryFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      brandsFiltersList: null == brandsFiltersList
          ? _value._brandsFiltersList
          : brandsFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      colorsFiltersList: null == colorsFiltersList
          ? _value._colorsFiltersList
          : colorsFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemTypeFiltersList: null == itemTypeFiltersList
          ? _value._itemTypeFiltersList
          : itemTypeFiltersList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      multiFilterProduct: freezed == multiFilterProduct
          ? _value.multiFilterProduct
          : multiFilterProduct // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
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
      required this.categoryItemModel,
      required this.categoryIndex,
      required this.filterIndex,
      required this.filterOptionModel,
      required final List<String> subcategoryFiltersList,
      required final List<String> brandsFiltersList,
      required final List<String> colorsFiltersList,
      required final List<String> itemTypeFiltersList,
      required this.multiFilterProduct})
      : _subcategoryFiltersList = subcategoryFiltersList,
        _brandsFiltersList = brandsFiltersList,
        _colorsFiltersList = colorsFiltersList,
        _itemTypeFiltersList = itemTypeFiltersList;

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
  final int categoryIndex;
  @override
  final int filterIndex;
  @override
  final FilterOptionModel? filterOptionModel;
  final List<String> _subcategoryFiltersList;
  @override
  List<String> get subcategoryFiltersList {
    if (_subcategoryFiltersList is EqualUnmodifiableListView)
      return _subcategoryFiltersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategoryFiltersList);
  }

  final List<String> _brandsFiltersList;
  @override
  List<String> get brandsFiltersList {
    if (_brandsFiltersList is EqualUnmodifiableListView)
      return _brandsFiltersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brandsFiltersList);
  }

  final List<String> _colorsFiltersList;
  @override
  List<String> get colorsFiltersList {
    if (_colorsFiltersList is EqualUnmodifiableListView)
      return _colorsFiltersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colorsFiltersList);
  }

  final List<String> _itemTypeFiltersList;
  @override
  List<String> get itemTypeFiltersList {
    if (_itemTypeFiltersList is EqualUnmodifiableListView)
      return _itemTypeFiltersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemTypeFiltersList);
  }

  @override
  final ProductResponse? multiFilterProduct;

  @override
  String toString() {
    return 'CategoryState(product: $product, productLoading: $productLoading, errorMessage: $errorMessage, category: $category, categoryLoading: $categoryLoading, subCategory: $subCategory, subCategoryLoading: $subCategoryLoading, selectedFilter: $selectedFilter, filterCategory: $filterCategory, filterSubCategory: $filterSubCategory, filterBrand: $filterBrand, priceRangeIndex: $priceRangeIndex, subcategoryByCategoryIdModel: $subcategoryByCategoryIdModel, filterVal: $filterVal, minPrice: $minPrice, maxPrice: $maxPrice, sortListIndex: $sortListIndex, rangeValues: $rangeValues, categoryItemModel: $categoryItemModel, categoryIndex: $categoryIndex, filterIndex: $filterIndex, filterOptionModel: $filterOptionModel, subcategoryFiltersList: $subcategoryFiltersList, brandsFiltersList: $brandsFiltersList, colorsFiltersList: $colorsFiltersList, itemTypeFiltersList: $itemTypeFiltersList, multiFilterProduct: $multiFilterProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
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
                other.categoryItemModel == categoryItemModel) &&
            (identical(other.categoryIndex, categoryIndex) ||
                other.categoryIndex == categoryIndex) &&
            (identical(other.filterIndex, filterIndex) ||
                other.filterIndex == filterIndex) &&
            (identical(other.filterOptionModel, filterOptionModel) ||
                other.filterOptionModel == filterOptionModel) &&
            const DeepCollectionEquality().equals(
                other._subcategoryFiltersList, _subcategoryFiltersList) &&
            const DeepCollectionEquality()
                .equals(other._brandsFiltersList, _brandsFiltersList) &&
            const DeepCollectionEquality()
                .equals(other._colorsFiltersList, _colorsFiltersList) &&
            const DeepCollectionEquality()
                .equals(other._itemTypeFiltersList, _itemTypeFiltersList) &&
            (identical(other.multiFilterProduct, multiFilterProduct) ||
                other.multiFilterProduct == multiFilterProduct));
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
        categoryItemModel,
        categoryIndex,
        filterIndex,
        filterOptionModel,
        const DeepCollectionEquality().hash(_subcategoryFiltersList),
        const DeepCollectionEquality().hash(_brandsFiltersList),
        const DeepCollectionEquality().hash(_colorsFiltersList),
        const DeepCollectionEquality().hash(_itemTypeFiltersList),
        multiFilterProduct
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
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
      required final CategoryItemModel? categoryItemModel,
      required final int categoryIndex,
      required final int filterIndex,
      required final FilterOptionModel? filterOptionModel,
      required final List<String> subcategoryFiltersList,
      required final List<String> brandsFiltersList,
      required final List<String> colorsFiltersList,
      required final List<String> itemTypeFiltersList,
      required final ProductResponse?
          multiFilterProduct}) = _$CategoryStateImpl;

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
  int get categoryIndex;
  @override
  int get filterIndex;
  @override
  FilterOptionModel? get filterOptionModel;
  @override
  List<String> get subcategoryFiltersList;
  @override
  List<String> get brandsFiltersList;
  @override
  List<String> get colorsFiltersList;
  @override
  List<String> get itemTypeFiltersList;
  @override
  ProductResponse? get multiFilterProduct;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
