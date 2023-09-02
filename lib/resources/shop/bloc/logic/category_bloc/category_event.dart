part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetchFilterProducts(
      {required String? category,
      required String? subCategory}) = FetchFilterProducts;
  const factory CategoryEvent.fetchCategories() = FetchCategories;
  const factory CategoryEvent.fetchSubcategories() = FetchSubcategories;
  const factory CategoryEvent.onSelectFilter({required String value}) =
      OnSelectFilter;
  const factory CategoryEvent.filterEvent(
      {required String? category, required String? subCategory}) = FilterEvent;
  const factory CategoryEvent.filterBrandPickEvent({required String brand}) =
      FilterBrandPickEvent;
  const factory CategoryEvent.priceRangeEvent({
    required int index,
  }) = PriceRangeEvent;
}
