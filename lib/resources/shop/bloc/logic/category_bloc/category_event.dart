part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetchFilterProducts(
      {required String? category,
      required String? subCategory,
      String? itemId}) = FetchFilterProducts;
  const factory CategoryEvent.fetchCategories() = FetchCategories;
  const factory CategoryEvent.fetchSubcategories() = FetchSubcategories;
  const factory CategoryEvent.onSelectFilter({required String value}) =
      OnSelectFilter;
  const factory CategoryEvent.fetchItemsByCategory({
    required String category,
  }) = FetchItemsByCategory;

  const factory CategoryEvent.filterEvent(
      {required String? category, required String? subCategory}) = FilterEvent;
  const factory CategoryEvent.filterBrandPickEvent({required String brand}) =
      FilterBrandPickEvent;
  const factory CategoryEvent.priceRangeEvent({
    required int index,
  }) = PriceRangeEvent;
  const factory CategoryEvent.fetchSubCategoriesByCategoryId({
    required String categoryId,
  }) = FetchSubCategoriesByCategoryId;
  const factory CategoryEvent.saveCategoryFilterVal(
      {required String filterVal}) = SaveCategoryFilterVal;

  const factory CategoryEvent.savePriceRange({
    required String minPrice,
    required String maxPrice,
    required RangeValues rangeValues,
  }) = SavePriceRange;
  const factory CategoryEvent.fetchProductSortByPrice({
    required String order,
    required String? category,
    required String? subCategory,
  }) = FetchProductSortByPrice;
  const factory CategoryEvent.changeSortListIndex({
    required int index,
  }) = ChangeSortListIndex;
  const factory CategoryEvent.fetchProductsByFilterPricerange(
      {required String minPrice,
      required String maxPrice,
      required String category,
      required String subCategory}) = FetchProductsByFilterPricerange;
}
