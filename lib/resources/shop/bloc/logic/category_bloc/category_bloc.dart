import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/category/categories._model.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/bloc/service/category_services.dart';

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
  }

  FutureOr<void> _fetchFilterProducts(
      FetchFilterProducts event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(productLoading: true));

    try {
      final data = await _categoryService.filterProduct(
          event.category, event.subCategory);
      print('fillter ${data.result!.products.length}');
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
}
