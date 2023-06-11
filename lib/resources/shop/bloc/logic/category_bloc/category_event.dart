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
}
