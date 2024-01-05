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
  const factory CategoryEvent.changeCategoryIndexEvent({
    required int index,
  }) = ChangeCategoryIndexEvent;
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
  const factory CategoryEvent.fetchProductsByFilter({
    required int minPrice,
    required int maxPrice,
    required String category,
    required List<String> subCategory,
    required List<String> brand,
    required List<String> color,
    List<String>? itemId,
  }) = FetchProductsByFilter;
  const factory CategoryEvent.changeFilterIndex({
    required int index,
  }) = ChangeFilterIndex;

  const factory CategoryEvent.fetchFilterOptionEvent({
    required String category,
  }) = FetchFilterOptionEvent;
  const factory CategoryEvent.saveSubcategoryFilters({required String value}) =
      SaveSubcategoryFilters;
  const factory CategoryEvent.saveItemTypeFilters({required String value}) =
      SaveItemTypeFilters;
  const factory CategoryEvent.saveBrandsFilters({required String value}) =
      SaveBrandsFilters;
  const factory CategoryEvent.saveColorsFilters({required String value}) =
      SaveColorsFilters;
  const factory CategoryEvent.clearAllFilterEvent() = ClearAllFilterEvent;
}
