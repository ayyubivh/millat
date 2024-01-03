import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/category/categories._model.dart';
import 'package:millat/resources/shop/bloc/models/category/category_items_model.dart';
import 'package:millat/resources/shop/bloc/models/category/subcategories_by_category_id.dart';
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
    on<SaveCategoryFilterVal>(_saveCategoryFilterVal);
    on<SavePriceRange>(_savePriceRagne);
    on<FetchProductSortByPrice>(_fetchProductSortByEvent);
    on<ChangeSortListIndex>(_changeSortListIndex);
    on<FetchProductsByFilter>(_fetchProductsByFilter);
    on<FetchItemsByCategory>(_fetchItemsByCategory);
    on<ChangeCategoryIndexEvent>(_changeCategoryIndexEvent);
    on<ChangeFilterIndex>(_changeFilterIndex);
    on<FilterSubCategoryCheckboxChangingEvent>(
        _filterSubCategoryCheckboxChangingEvent);
    on<FilterBrandCheckboxChangingEvent>(_filterBrandCheckboxChangingEvent);
    on<FilterColorCheckboxChangingEvent>(_filterColorCheckboxChangingEvent);
    on<FetchFilterOptionEvent>(_fetchFilterOptionEvent);
  }

  FutureOr<void> _fetchFilterProducts(
      FetchFilterProducts event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(productLoading: true));

    try {
      final data = await _categoryService.filterProduct(
          event.category, event.subCategory, event.itemId);
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

  _saveCategoryFilterVal(
      SaveCategoryFilterVal event, Emitter<CategoryState> emit) {
    emit(state.copyWith(filterVal: event.filterVal));
    debugPrint(state.filterVal);
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
    emit(state.copyWith(productLoading: true));

    try {
      final data = await _categoryService.fetchProductsByFilter(
        maxPrice: event.maxPrice,
        minPrice: event.minPrice,
        category: event.category,
        subCategory: event.subCategory,
        brand: event.brand,
        color: event.color,
        itemId: event.itemId,
      );
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

  _filterSubCategoryCheckboxChangingEvent(
      FilterSubCategoryCheckboxChangingEvent event,
      Emitter<CategoryState> emit) {
    emit(state.copyWith(
        filterSubcategoryCheckboxIndex:
            state.filterSubcategoryCheckboxIndex == event.index
                ? -1
                : event.index));
  }

  _filterBrandCheckboxChangingEvent(
      FilterBrandCheckboxChangingEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        filterBrandCheckboxIndex:
            state.filterBrandCheckboxIndex == event.index ? -1 : event.index));
  }

  _filterColorCheckboxChangingEvent(
      FilterColorCheckboxChangingEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        filterColorCheckboxIndex:
            state.filterColorCheckboxIndex == event.index ? -1 : event.index));
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
}
