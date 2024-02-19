import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/category/categories._model.dart';
import 'package:millat/resources/shop/bloc/models/category/category_items_model.dart';
import 'package:millat/resources/shop/bloc/models/category/subcategories_by_category_id.dart';
import 'package:millat/resources/shop/bloc/models/products/product_filter_model.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/bloc/service/category_services.dart';

import '../../models/category/filter_option_model.dart';
import '../../models/category/subcategories.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryService _categoryService = CategoryService();
  CategoryBloc() : super(CategoryState.initial()) {
    on<FetchFilterProducts>(_fetchFilterProducts);
    on<FetchCategories>(_fetchCategories);
    on<FetchSubcategories>(_fetchSubCategories);
    on<OnSelectFilter>(_onSelectFilter);
    on<FilterEvent>(_filterEvent);
    on<FilterBrandPickEvent>(_filterBrandPickEvent);
    on<PriceRangeEvent>(_priceRangeEvent);
    on<FetchSubCategoriesByCategoryId>(_fetchSubCategoriesByCategoryId);
    on<SavePriceRange>(_savePriceRagne);
    on<FetchProductSortByPrice>(_fetchProductSortByEvent);
    on<ChangeSortListIndex>(_changeSortListIndex);
    on<FetchProductsByFilter>(_fetchProductsByFilter);
    on<FetchItemsByCategory>(_fetchItemsByCategory);
    on<ChangeCategoryIndexEvent>(_changeCategoryIndexEvent);
    on<ChangeFilterIndex>(_changeFilterIndex);
    on<FetchFilterOptionEvent>(_fetchFilterOptionEvent);
    on<SaveSubcategoryFilters>(_saveSubCategoryFilters);
    on<SaveBrandsFilters>(_saveBrandsFilter);
    on<SaveColorsFilters>(_saveColorsFilter);
    on<ClearAllFilterEvent>(_clearAllFilterEvent);
    on<SaveItemTypeFilters>(_saveItemTypeFilterEvent);
    on<MakePaginationDefault>(_makePaginationDefault);
  }

  FutureOr<void> _fetchFilterProducts(
      FetchFilterProducts event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(productLoading: true));

    try {
      final data = await _categoryService.filterProduct(
          event.category, event.subCategory, event.itemId);

      emit(state.copyWith(
        product: data,
        productLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", productLoading: false));
    }
  }

  FutureOr<void> _fetchCategories(
      FetchCategories event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(categoryLoading: true));

    try {
      final data = await _categoryService.fetchCategory();
      emit(state.copyWith(
        category: data,
        categoryLoading: false,
      ));
      debugPrint(state.category!.result!.category!.first.id);
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", categoryLoading: false));
    }
  }

  FutureOr<void> _fetchSubCategories(
      FetchSubcategories event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(subCategoryLoading: true));

    try {
      final data = await _categoryService.fetchSubCategory();
      emit(state.copyWith(subCategory: data, subCategoryLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", subCategoryLoading: false));
    }
  }

  FutureOr<void> _onSelectFilter(
      OnSelectFilter event, Emitter<CategoryState> emit) {
    emit(state.copyWith(selectedFilter: event.value));
  }

  _filterEvent(FilterEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        filterCategory: event.category, filterSubCategory: event.subCategory));
  }

  _filterBrandPickEvent(
      FilterBrandPickEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(filterBrand: event.brand));
  }

  _priceRangeEvent(PriceRangeEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(priceRangeIndex: event.index));
  }

  _fetchSubCategoriesByCategoryId(
      FetchSubCategoriesByCategoryId event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(subCategoryLoading: true));

    try {
      final data = await _categoryService.fetchSubCategoryByCategoryId(
          categoryId: event.categoryId);
      emit(state.copyWith(
          subcategoryByCategoryIdModel: data, subCategoryLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", subCategoryLoading: false));
    }
  }

  _savePriceRagne(SavePriceRange event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        minPrice: event.minPrice,
        maxPrice: event.maxPrice,
        rangeValues: event.rangeValues));
  }

  _fetchProductSortByEvent(
      FetchProductSortByPrice event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(productLoading: true));

    try {
      final data = await _categoryService.fetchProductSortByPrice(
          order: event.order,
          category: event.category ?? "",
          subCategory: event.subCategory ?? "");
      debugPrint("filtered products $data");
      emit(state.copyWith(
        product: data,
        productLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", productLoading: false));
    }
  }

  _changeSortListIndex(ChangeSortListIndex event, Emitter<CategoryState> emit) {
    emit(state.copyWith(sortListIndex: event.index));
  }

  _fetchProductsByFilter(
      FetchProductsByFilter event, Emitter<CategoryState> emit) async {
    if (state.reachMax) {
      return;
    }
    emit(state.copyWith(productLoading: true));

    try {
      log(state.currentPage.toString());
      final data = await _categoryService.fetchProductsByFilter(
        page: state.currentPage,
        maxPrice: event.maxPrice,
        minPrice: event.minPrice,
        category: event.category,
        subCategory: event.subCategory,
        brand: event.brand,
        color: event.color,
        itemType: event.itemId,
      );
      log(state.currentPage.toString());

      if (data.result?.totalPages == state.currentPage) {
        emit(state.copyWith(
          multiFilterProduct: data,
          productLoading: false,
          currentPage: state.currentPage + 1,
          reachMax: true,
        ));
      } else {
        emit(state.copyWith(
            multiFilterProduct: data,
            productLoading: false,
            currentPage: state.currentPage + 1));
      }
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", productLoading: false));
    }
  }

  _fetchItemsByCategory(
      FetchItemsByCategory event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(categoryLoading: true));
    try {
      final data =
          await _categoryService.fetchItemsByCategory(category: event.category);
      emit(state.copyWith(categoryItemModel: data, categoryLoading: false));
    } catch (e) {
      emit(state.copyWith(categoryLoading: false));

      throw Exception(e);
    }
  }

  _changeCategoryIndexEvent(
      ChangeCategoryIndexEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(categoryIndex: event.index));
  }

  _changeFilterIndex(ChangeFilterIndex event, Emitter<CategoryState> emit) {
    emit(state.copyWith(filterIndex: event.index));
  }

  _fetchFilterOptionEvent(
      FetchFilterOptionEvent event, Emitter<CategoryState> emit) async {
    try {
      final data =
          await _categoryService.fetchFilterOptions(category: event.category);
      emit(state.copyWith(filterOptionModel: data));
    } catch (e) {
      throw Exception(e);
    }
  }

  _saveSubCategoryFilters(
      SaveSubcategoryFilters event, Emitter<CategoryState> emit) {
    final List<String> currentList = List.from(state.subcategoryFiltersList);
    if (currentList.contains(event.value)) {
      currentList.remove(event.value);
    } else {
      currentList.add(event.value);
    }
    debugPrint("here current list $currentList");
    emit(state.copyWith(subcategoryFiltersList: currentList));
  }

  _saveBrandsFilter(SaveBrandsFilters event, Emitter<CategoryState> emit) {
    final List<String> currentList = List.from(state.brandsFiltersList);
    if (currentList.contains(event.value)) {
      currentList.remove(event.value);
    } else {
      currentList.add(event.value);
    }
    debugPrint("here current list $currentList");
    emit(state.copyWith(brandsFiltersList: currentList));
  }

  _saveColorsFilter(SaveColorsFilters event, Emitter<CategoryState> emit) {
    final List<String> currentList = List.from(state.colorsFiltersList);
    if (currentList.contains(event.value)) {
      currentList.remove(event.value);
    } else {
      currentList.add(event.value);
    }
    debugPrint("here current list $currentList");
    emit(state.copyWith(colorsFiltersList: currentList));
  }

  _clearAllFilterEvent(event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
      brandsFiltersList: [],
      colorsFiltersList: [],
      subcategoryFiltersList: [],
      itemTypeFiltersList: [],
      minPrice: "5000",
      maxPrice: "1",
      rangeValues: const RangeValues(1, 5000),
    ));
  }

  _saveItemTypeFilterEvent(
      SaveItemTypeFilters event, Emitter<CategoryState> emit) {
    final List<String> currentList = List.from(state.itemTypeFiltersList);
    if (currentList.contains(event.value)) {
      currentList.remove(event.value);
    } else {
      currentList.add(event.value);
    }
    debugPrint("here current list $currentList");
    emit(state.copyWith(itemTypeFiltersList: currentList));
  }

  _makePaginationDefault(
      MakePaginationDefault event, Emitter<CategoryState> emit) {
    emit(state.copyWith(currentPage: 1, reachMax: false));
  }
}
