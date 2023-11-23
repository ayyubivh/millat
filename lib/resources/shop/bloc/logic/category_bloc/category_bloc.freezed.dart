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
    required TResult Function(int index) changeCategoryIndexEvent,
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
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FetchFilterProductsImpl
    with DiagnosticableTreeMixin
    implements FetchFilterProducts {
  const _$FetchFilterProductsImpl(
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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FetchCategoriesImpl
    with DiagnosticableTreeMixin
    implements FetchCategories {
  const _$FetchCategoriesImpl();

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FetchSubcategoriesImpl
    with DiagnosticableTreeMixin
    implements FetchSubcategories {
  const _$FetchSubcategoriesImpl();

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$OnSelectFilterImpl
    with DiagnosticableTreeMixin
    implements OnSelectFilter {
  const _$OnSelectFilterImpl({required this.value});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FetchItemsByCategoryImpl
    with DiagnosticableTreeMixin
    implements FetchItemsByCategory {
  const _$FetchItemsByCategoryImpl({required this.category});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$ChangeCategoryIndexEventImpl
    with DiagnosticableTreeMixin
    implements ChangeCategoryIndexEvent {
  const _$ChangeCategoryIndexEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.changeCategoryIndexEvent(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CategoryEvent.changeCategoryIndexEvent'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FilterEventImpl with DiagnosticableTreeMixin implements FilterEvent {
  const _$FilterEventImpl({required this.category, required this.subCategory});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FilterBrandPickEventImpl
    with DiagnosticableTreeMixin
    implements FilterBrandPickEvent {
  const _$FilterBrandPickEventImpl({required this.brand});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$PriceRangeEventImpl
    with DiagnosticableTreeMixin
    implements PriceRangeEvent {
  const _$PriceRangeEventImpl({required this.index});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    with DiagnosticableTreeMixin
    implements FetchSubCategoriesByCategoryId {
  const _$FetchSubCategoriesByCategoryIdImpl({required this.categoryId});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
abstract class _$$SaveCategoryFilterValImplCopyWith<$Res> {
  factory _$$SaveCategoryFilterValImplCopyWith(
          _$SaveCategoryFilterValImpl value,
          $Res Function(_$SaveCategoryFilterValImpl) then) =
      __$$SaveCategoryFilterValImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filterVal});
}

/// @nodoc
class __$$SaveCategoryFilterValImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SaveCategoryFilterValImpl>
    implements _$$SaveCategoryFilterValImplCopyWith<$Res> {
  __$$SaveCategoryFilterValImplCopyWithImpl(_$SaveCategoryFilterValImpl _value,
      $Res Function(_$SaveCategoryFilterValImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterVal = null,
  }) {
    return _then(_$SaveCategoryFilterValImpl(
      filterVal: null == filterVal
          ? _value.filterVal
          : filterVal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCategoryFilterValImpl
    with DiagnosticableTreeMixin
    implements SaveCategoryFilterVal {
  const _$SaveCategoryFilterValImpl({required this.filterVal});

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
            other is _$SaveCategoryFilterValImpl &&
            (identical(other.filterVal, filterVal) ||
                other.filterVal == filterVal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterVal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCategoryFilterValImplCopyWith<_$SaveCategoryFilterValImpl>
      get copyWith => __$$SaveCategoryFilterValImplCopyWithImpl<
          _$SaveCategoryFilterValImpl>(this, _$identity);

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(int index)? changeCategoryIndexEvent,
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
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(int index)? changeCategoryIndexEvent,
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
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndexEvent,
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
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult? Function(FilterEvent value)? filterEvent,
    TResult? Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult? Function(PriceRangeEvent value)? priceRangeEvent,
    TResult? Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndexEvent,
    TResult Function(FilterEvent value)? filterEvent,
    TResult Function(FilterBrandPickEvent value)? filterBrandPickEvent,
    TResult Function(PriceRangeEvent value)? priceRangeEvent,
    TResult Function(FetchSubCategoriesByCategoryId value)?
        fetchSubCategoriesByCategoryId,
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
      _$SaveCategoryFilterValImpl;

  String get filterVal;
  @JsonKey(ignore: true)
  _$$SaveCategoryFilterValImplCopyWith<_$SaveCategoryFilterValImpl>
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

class _$SavePriceRangeImpl
    with DiagnosticableTreeMixin
    implements SavePriceRange {
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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$FetchProductSortByPriceImpl
    with DiagnosticableTreeMixin
    implements FetchProductSortByPrice {
  const _$FetchProductSortByPriceImpl(
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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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

class _$ChangeSortListIndexImpl
    with DiagnosticableTreeMixin
    implements ChangeSortListIndex {
  const _$ChangeSortListIndexImpl({required this.index});

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
      {String minPrice,
      String maxPrice,
      String category,
      String subCategory,
      String brand,
      String color});
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
  }) {
    return _then(_$FetchProductsByFilterImpl(
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
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductsByFilterImpl
    with DiagnosticableTreeMixin
    implements FetchProductsByFilter {
  const _$FetchProductsByFilterImpl(
      {required this.minPrice,
      required this.maxPrice,
      required this.category,
      required this.subCategory,
      required this.brand,
      required this.color});

  @override
  final String minPrice;
  @override
  final String maxPrice;
  @override
  final String category;
  @override
  final String subCategory;
  @override
  final String brand;
  @override
  final String color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchProductsByFilter(minPrice: $minPrice, maxPrice: $maxPrice, category: $category, subCategory: $subCategory, brand: $brand, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.fetchProductsByFilter'))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subCategory', subCategory))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductsByFilterImpl &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, minPrice, maxPrice, category, subCategory, brand, color);

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
  }) {
    return fetchProductsByFilter(
        minPrice, maxPrice, category, subCategory, brand, color);
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
  }) {
    return fetchProductsByFilter?.call(
        minPrice, maxPrice, category, subCategory, brand, color);
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (fetchProductsByFilter != null) {
      return fetchProductsByFilter(
          minPrice, maxPrice, category, subCategory, brand, color);
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
      {required final String minPrice,
      required final String maxPrice,
      required final String category,
      required final String subCategory,
      required final String brand,
      required final String color}) = _$FetchProductsByFilterImpl;

  String get minPrice;
  String get maxPrice;
  String get category;
  String get subCategory;
  String get brand;
  String get color;
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

class _$ChangeFilterIndexImpl
    with DiagnosticableTreeMixin
    implements ChangeFilterIndex {
  const _$ChangeFilterIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.changeFilterIndex(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.changeFilterIndex'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
abstract class _$$FilterSubCategoryCheckboxChangingEventImplCopyWith<$Res> {
  factory _$$FilterSubCategoryCheckboxChangingEventImplCopyWith(
          _$FilterSubCategoryCheckboxChangingEventImpl value,
          $Res Function(_$FilterSubCategoryCheckboxChangingEventImpl) then) =
      __$$FilterSubCategoryCheckboxChangingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FilterSubCategoryCheckboxChangingEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res,
        _$FilterSubCategoryCheckboxChangingEventImpl>
    implements _$$FilterSubCategoryCheckboxChangingEventImplCopyWith<$Res> {
  __$$FilterSubCategoryCheckboxChangingEventImplCopyWithImpl(
      _$FilterSubCategoryCheckboxChangingEventImpl _value,
      $Res Function(_$FilterSubCategoryCheckboxChangingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$FilterSubCategoryCheckboxChangingEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterSubCategoryCheckboxChangingEventImpl
    with DiagnosticableTreeMixin
    implements FilterSubCategoryCheckboxChangingEvent {
  const _$FilterSubCategoryCheckboxChangingEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.filterSubCategoryCheckboxChangingEvent(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CategoryEvent.filterSubCategoryCheckboxChangingEvent'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSubCategoryCheckboxChangingEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSubCategoryCheckboxChangingEventImplCopyWith<
          _$FilterSubCategoryCheckboxChangingEventImpl>
      get copyWith =>
          __$$FilterSubCategoryCheckboxChangingEventImplCopyWithImpl<
              _$FilterSubCategoryCheckboxChangingEventImpl>(this, _$identity);

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
  }) {
    return filterSubCategoryCheckboxChangingEvent(index);
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
  }) {
    return filterSubCategoryCheckboxChangingEvent?.call(index);
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (filterSubCategoryCheckboxChangingEvent != null) {
      return filterSubCategoryCheckboxChangingEvent(index);
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
  }) {
    return filterSubCategoryCheckboxChangingEvent(this);
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
  }) {
    return filterSubCategoryCheckboxChangingEvent?.call(this);
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (filterSubCategoryCheckboxChangingEvent != null) {
      return filterSubCategoryCheckboxChangingEvent(this);
    }
    return orElse();
  }
}

abstract class FilterSubCategoryCheckboxChangingEvent implements CategoryEvent {
  const factory FilterSubCategoryCheckboxChangingEvent(
          {required final int index}) =
      _$FilterSubCategoryCheckboxChangingEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$FilterSubCategoryCheckboxChangingEventImplCopyWith<
          _$FilterSubCategoryCheckboxChangingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterBrandCheckboxChangingEventImplCopyWith<$Res> {
  factory _$$FilterBrandCheckboxChangingEventImplCopyWith(
          _$FilterBrandCheckboxChangingEventImpl value,
          $Res Function(_$FilterBrandCheckboxChangingEventImpl) then) =
      __$$FilterBrandCheckboxChangingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FilterBrandCheckboxChangingEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res,
        _$FilterBrandCheckboxChangingEventImpl>
    implements _$$FilterBrandCheckboxChangingEventImplCopyWith<$Res> {
  __$$FilterBrandCheckboxChangingEventImplCopyWithImpl(
      _$FilterBrandCheckboxChangingEventImpl _value,
      $Res Function(_$FilterBrandCheckboxChangingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$FilterBrandCheckboxChangingEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterBrandCheckboxChangingEventImpl
    with DiagnosticableTreeMixin
    implements FilterBrandCheckboxChangingEvent {
  const _$FilterBrandCheckboxChangingEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.filterBrandCheckboxChangingEvent(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CategoryEvent.filterBrandCheckboxChangingEvent'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterBrandCheckboxChangingEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterBrandCheckboxChangingEventImplCopyWith<
          _$FilterBrandCheckboxChangingEventImpl>
      get copyWith => __$$FilterBrandCheckboxChangingEventImplCopyWithImpl<
          _$FilterBrandCheckboxChangingEventImpl>(this, _$identity);

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
  }) {
    return filterBrandCheckboxChangingEvent(index);
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
  }) {
    return filterBrandCheckboxChangingEvent?.call(index);
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (filterBrandCheckboxChangingEvent != null) {
      return filterBrandCheckboxChangingEvent(index);
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
  }) {
    return filterBrandCheckboxChangingEvent(this);
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
  }) {
    return filterBrandCheckboxChangingEvent?.call(this);
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (filterBrandCheckboxChangingEvent != null) {
      return filterBrandCheckboxChangingEvent(this);
    }
    return orElse();
  }
}

abstract class FilterBrandCheckboxChangingEvent implements CategoryEvent {
  const factory FilterBrandCheckboxChangingEvent({required final int index}) =
      _$FilterBrandCheckboxChangingEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$FilterBrandCheckboxChangingEventImplCopyWith<
          _$FilterBrandCheckboxChangingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterColorCheckboxChangingEventImplCopyWith<$Res> {
  factory _$$FilterColorCheckboxChangingEventImplCopyWith(
          _$FilterColorCheckboxChangingEventImpl value,
          $Res Function(_$FilterColorCheckboxChangingEventImpl) then) =
      __$$FilterColorCheckboxChangingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FilterColorCheckboxChangingEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res,
        _$FilterColorCheckboxChangingEventImpl>
    implements _$$FilterColorCheckboxChangingEventImplCopyWith<$Res> {
  __$$FilterColorCheckboxChangingEventImplCopyWithImpl(
      _$FilterColorCheckboxChangingEventImpl _value,
      $Res Function(_$FilterColorCheckboxChangingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$FilterColorCheckboxChangingEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterColorCheckboxChangingEventImpl
    with DiagnosticableTreeMixin
    implements FilterColorCheckboxChangingEvent {
  const _$FilterColorCheckboxChangingEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.filterColorCheckboxChangingEvent(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CategoryEvent.filterColorCheckboxChangingEvent'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterColorCheckboxChangingEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterColorCheckboxChangingEventImplCopyWith<
          _$FilterColorCheckboxChangingEventImpl>
      get copyWith => __$$FilterColorCheckboxChangingEventImplCopyWithImpl<
          _$FilterColorCheckboxChangingEventImpl>(this, _$identity);

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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
  }) {
    return filterColorCheckboxChangingEvent(index);
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
  }) {
    return filterColorCheckboxChangingEvent?.call(index);
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (filterColorCheckboxChangingEvent != null) {
      return filterColorCheckboxChangingEvent(index);
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
  }) {
    return filterColorCheckboxChangingEvent(this);
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
  }) {
    return filterColorCheckboxChangingEvent?.call(this);
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
    required TResult orElse(),
  }) {
    if (filterColorCheckboxChangingEvent != null) {
      return filterColorCheckboxChangingEvent(this);
    }
    return orElse();
  }
}

abstract class FilterColorCheckboxChangingEvent implements CategoryEvent {
  const factory FilterColorCheckboxChangingEvent({required final int index}) =
      _$FilterColorCheckboxChangingEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$FilterColorCheckboxChangingEventImplCopyWith<
          _$FilterColorCheckboxChangingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
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

class _$FetchFilterOptionEventImpl
    with DiagnosticableTreeMixin
    implements FetchFilterOptionEvent {
  const _$FetchFilterOptionEventImpl({required this.category});

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.fetchFilterOptionEvent(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.fetchFilterOptionEvent'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String filterVal) saveCategoryFilterVal,
    required TResult Function(
            String minPrice, String maxPrice, RangeValues rangeValues)
        savePriceRange,
    required TResult Function(
            String order, String? category, String? subCategory)
        fetchProductSortByPrice,
    required TResult Function(int index) changeSortListIndex,
    required TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)
        fetchProductsByFilter,
    required TResult Function(int index) changeFilterIndex,
    required TResult Function(int index) filterSubCategoryCheckboxChangingEvent,
    required TResult Function(int index) filterBrandCheckboxChangingEvent,
    required TResult Function(int index) filterColorCheckboxChangingEvent,
    required TResult Function(String category) fetchFilterOptionEvent,
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
    TResult? Function(String filterVal)? saveCategoryFilterVal,
    TResult? Function(
            String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult? Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult? Function(int index)? changeSortListIndex,
    TResult? Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult? Function(int index)? changeFilterIndex,
    TResult? Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult? Function(int index)? filterBrandCheckboxChangingEvent,
    TResult? Function(int index)? filterColorCheckboxChangingEvent,
    TResult? Function(String category)? fetchFilterOptionEvent,
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
    TResult Function(String filterVal)? saveCategoryFilterVal,
    TResult Function(String minPrice, String maxPrice, RangeValues rangeValues)?
        savePriceRange,
    TResult Function(String order, String? category, String? subCategory)?
        fetchProductSortByPrice,
    TResult Function(int index)? changeSortListIndex,
    TResult Function(String minPrice, String maxPrice, String category,
            String subCategory, String brand, String color)?
        fetchProductsByFilter,
    TResult Function(int index)? changeFilterIndex,
    TResult Function(int index)? filterSubCategoryCheckboxChangingEvent,
    TResult Function(int index)? filterBrandCheckboxChangingEvent,
    TResult Function(int index)? filterColorCheckboxChangingEvent,
    TResult Function(String category)? fetchFilterOptionEvent,
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
    required TResult Function(SaveCategoryFilterVal value)
        saveCategoryFilterVal,
    required TResult Function(SavePriceRange value) savePriceRange,
    required TResult Function(FetchProductSortByPrice value)
        fetchProductSortByPrice,
    required TResult Function(ChangeSortListIndex value) changeSortListIndex,
    required TResult Function(FetchProductsByFilter value)
        fetchProductsByFilter,
    required TResult Function(ChangeFilterIndex value) changeFilterIndex,
    required TResult Function(FilterSubCategoryCheckboxChangingEvent value)
        filterSubCategoryCheckboxChangingEvent,
    required TResult Function(FilterBrandCheckboxChangingEvent value)
        filterBrandCheckboxChangingEvent,
    required TResult Function(FilterColorCheckboxChangingEvent value)
        filterColorCheckboxChangingEvent,
    required TResult Function(FetchFilterOptionEvent value)
        fetchFilterOptionEvent,
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
    TResult? Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult? Function(SavePriceRange value)? savePriceRange,
    TResult? Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult? Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult? Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult? Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult? Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult? Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult? Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult? Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
    TResult Function(SaveCategoryFilterVal value)? saveCategoryFilterVal,
    TResult Function(SavePriceRange value)? savePriceRange,
    TResult Function(FetchProductSortByPrice value)? fetchProductSortByPrice,
    TResult Function(ChangeSortListIndex value)? changeSortListIndex,
    TResult Function(FetchProductsByFilter value)? fetchProductsByFilter,
    TResult Function(ChangeFilterIndex value)? changeFilterIndex,
    TResult Function(FilterSubCategoryCheckboxChangingEvent value)?
        filterSubCategoryCheckboxChangingEvent,
    TResult Function(FilterBrandCheckboxChangingEvent value)?
        filterBrandCheckboxChangingEvent,
    TResult Function(FilterColorCheckboxChangingEvent value)?
        filterColorCheckboxChangingEvent,
    TResult Function(FetchFilterOptionEvent value)? fetchFilterOptionEvent,
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
  int get filterSubcategoryCheckboxIndex => throw _privateConstructorUsedError;
  int get filterBrandCheckboxIndex => throw _privateConstructorUsedError;
  int get filterColorCheckboxIndex => throw _privateConstructorUsedError;
  FilterOptionModel? get filterOptionModel =>
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
      CategoryItemModel? categoryItemModel,
      int categoryIndex,
      int filterIndex,
      int filterSubcategoryCheckboxIndex,
      int filterBrandCheckboxIndex,
      int filterColorCheckboxIndex,
      FilterOptionModel? filterOptionModel});

  $ProductModelCopyWith<$Res>? get product;
  $CategoryModelCopyWith<$Res>? get category;
  $SubCategoryModelCopyWith<$Res>? get subCategory;
  $SubcategoryByCategoryIdModelCopyWith<$Res>? get subcategoryByCategoryIdModel;
  $CategoryItemModelCopyWith<$Res>? get categoryItemModel;
  $FilterOptionModelCopyWith<$Res>? get filterOptionModel;
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
    Object? filterSubcategoryCheckboxIndex = null,
    Object? filterBrandCheckboxIndex = null,
    Object? filterColorCheckboxIndex = null,
    Object? filterOptionModel = freezed,
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
      filterSubcategoryCheckboxIndex: null == filterSubcategoryCheckboxIndex
          ? _value.filterSubcategoryCheckboxIndex
          : filterSubcategoryCheckboxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterBrandCheckboxIndex: null == filterBrandCheckboxIndex
          ? _value.filterBrandCheckboxIndex
          : filterBrandCheckboxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterColorCheckboxIndex: null == filterColorCheckboxIndex
          ? _value.filterColorCheckboxIndex
          : filterColorCheckboxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterOptionModel: freezed == filterOptionModel
          ? _value.filterOptionModel
          : filterOptionModel // ignore: cast_nullable_to_non_nullable
              as FilterOptionModel?,
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
      int filterSubcategoryCheckboxIndex,
      int filterBrandCheckboxIndex,
      int filterColorCheckboxIndex,
      FilterOptionModel? filterOptionModel});

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
    Object? filterSubcategoryCheckboxIndex = null,
    Object? filterBrandCheckboxIndex = null,
    Object? filterColorCheckboxIndex = null,
    Object? filterOptionModel = freezed,
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
      filterSubcategoryCheckboxIndex: null == filterSubcategoryCheckboxIndex
          ? _value.filterSubcategoryCheckboxIndex
          : filterSubcategoryCheckboxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterBrandCheckboxIndex: null == filterBrandCheckboxIndex
          ? _value.filterBrandCheckboxIndex
          : filterBrandCheckboxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterColorCheckboxIndex: null == filterColorCheckboxIndex
          ? _value.filterColorCheckboxIndex
          : filterColorCheckboxIndex // ignore: cast_nullable_to_non_nullable
              as int,
      filterOptionModel: freezed == filterOptionModel
          ? _value.filterOptionModel
          : filterOptionModel // ignore: cast_nullable_to_non_nullable
              as FilterOptionModel?,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl
    with DiagnosticableTreeMixin
    implements _CategoryState {
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
      required this.filterSubcategoryCheckboxIndex,
      required this.filterBrandCheckboxIndex,
      required this.filterColorCheckboxIndex,
      required this.filterOptionModel});

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
  final int filterSubcategoryCheckboxIndex;
  @override
  final int filterBrandCheckboxIndex;
  @override
  final int filterColorCheckboxIndex;
  @override
  final FilterOptionModel? filterOptionModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState(product: $product, productLoading: $productLoading, errorMessage: $errorMessage, category: $category, categoryLoading: $categoryLoading, subCategory: $subCategory, subCategoryLoading: $subCategoryLoading, selectedFilter: $selectedFilter, filterCategory: $filterCategory, filterSubCategory: $filterSubCategory, filterBrand: $filterBrand, priceRangeIndex: $priceRangeIndex, subcategoryByCategoryIdModel: $subcategoryByCategoryIdModel, filterVal: $filterVal, minPrice: $minPrice, maxPrice: $maxPrice, sortListIndex: $sortListIndex, rangeValues: $rangeValues, categoryItemModel: $categoryItemModel, categoryIndex: $categoryIndex, filterIndex: $filterIndex, filterSubcategoryCheckboxIndex: $filterSubcategoryCheckboxIndex, filterBrandCheckboxIndex: $filterBrandCheckboxIndex, filterColorCheckboxIndex: $filterColorCheckboxIndex, filterOptionModel: $filterOptionModel)';
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
      ..add(DiagnosticsProperty('categoryItemModel', categoryItemModel))
      ..add(DiagnosticsProperty('categoryIndex', categoryIndex))
      ..add(DiagnosticsProperty('filterIndex', filterIndex))
      ..add(DiagnosticsProperty(
          'filterSubcategoryCheckboxIndex', filterSubcategoryCheckboxIndex))
      ..add(DiagnosticsProperty(
          'filterBrandCheckboxIndex', filterBrandCheckboxIndex))
      ..add(DiagnosticsProperty(
          'filterColorCheckboxIndex', filterColorCheckboxIndex))
      ..add(DiagnosticsProperty('filterOptionModel', filterOptionModel));
  }

  @override
  bool operator ==(dynamic other) {
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
            (identical(other.filterSubcategoryCheckboxIndex,
                    filterSubcategoryCheckboxIndex) ||
                other.filterSubcategoryCheckboxIndex ==
                    filterSubcategoryCheckboxIndex) &&
            (identical(
                    other.filterBrandCheckboxIndex, filterBrandCheckboxIndex) ||
                other.filterBrandCheckboxIndex == filterBrandCheckboxIndex) &&
            (identical(
                    other.filterColorCheckboxIndex, filterColorCheckboxIndex) ||
                other.filterColorCheckboxIndex == filterColorCheckboxIndex) &&
            (identical(other.filterOptionModel, filterOptionModel) ||
                other.filterOptionModel == filterOptionModel));
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
        filterSubcategoryCheckboxIndex,
        filterBrandCheckboxIndex,
        filterColorCheckboxIndex,
        filterOptionModel
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
      required final int filterSubcategoryCheckboxIndex,
      required final int filterBrandCheckboxIndex,
      required final int filterColorCheckboxIndex,
      required final FilterOptionModel?
          filterOptionModel}) = _$CategoryStateImpl;

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
  int get filterSubcategoryCheckboxIndex;
  @override
  int get filterBrandCheckboxIndex;
  @override
  int get filterColorCheckboxIndex;
  @override
  FilterOptionModel? get filterOptionModel;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
