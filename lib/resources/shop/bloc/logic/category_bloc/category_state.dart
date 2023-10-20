part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required ProductModel? product,
    required bool productLoading,
    required String errorMessage,
    required CategoryModel? category,
    required bool categoryLoading,
    required SubCategoryModel? subCategory,
    required bool subCategoryLoading,
    required String selectedFilter,
    required String? filterCategory,
    required String? filterSubCategory,
    required String? filterBrand,
    required int? priceRangeIndex,
    required SubcategoryByCategoryIdModel? subcategoryByCategoryIdModel,
    required String filterVal,
    required String minPrice,
    required String maxPrice,
    required int sortListIndex,
    required RangeValues rangeValues,
    required CategoryItemModel? categoryItemModel,
    required int categoryIndex,
  }) = _CategoryState;
  factory CategoryState.initial() => const CategoryState(
        product: null,
        productLoading: false,
        errorMessage: "",
        category: null,
        categoryLoading: false,
        subCategory: null,
        subCategoryLoading: false,
        selectedFilter: "",
        filterCategory: '',
        filterSubCategory: '',
        filterBrand: '',
        priceRangeIndex: null,
        subcategoryByCategoryIdModel: null,
        filterVal: "",
        maxPrice: "5000",
        minPrice: "1",
        sortListIndex: 0,
        rangeValues: RangeValues(1, 5000),
        categoryItemModel: null,
        categoryIndex: 0,
      );
}
