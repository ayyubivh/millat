import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/service/dua_services.dart';

import '../../models/dua/dua_categories_model/dua_categories_model.dart';
import '../../models/dua/dua_model/dua_model.dart';
import '../../models/dua/dua_subcategoryby_category_model/dua_subcategory_by_category_model.dart';
import '../../models/dua/fetch_dua_bookmark_model/fetch_dua_bookmark_model.dart';

part 'dua_event.dart';
part 'dua_state.dart';
part 'dua_bloc.freezed.dart';

class DuaBloc extends Bloc<DuaEvent, DuaState> {
  DuaServices duaServices = DuaServices();
  DuaBloc() : super(DuaState.initial()) {
    on<FetchDuaCategoryEvent>(_fetchDuaCategoryEvent);
    on<FetchDuaSubCategorybyCategory>(_fetchDuaSubCategorybyCategory);
    on<FetchDuaBookMarksEvent>(_fetchDuaBookMarksEvent);
    on<FetchDuaBySubcategoryEvent>(_fetchDuaBySubcategoryEvent);
  }

  _fetchDuaCategoryEvent(
      FetchDuaCategoryEvent event, Emitter<DuaState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await duaServices.fetchDuaCategory();
      emit(state.copyWith(duaCategoryModel: data, isLoading: false));
      print('here is all the dua categories $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchDuaSubCategorybyCategory(
      FetchDuaSubCategorybyCategory event, Emitter<DuaState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await duaServices.fetchDuaSubCategorybyCategory(
          categoryId: event.categoryId);
      emit(state.copyWith(duaSubcategoryModel: data, isLoading: false));
      print(
          'here is the text of bloc sub categories data ${state.duaSubcategoryModel}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchDuaBookMarksEvent(
      FetchDuaBookMarksEvent event, Emitter<DuaState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await duaServices.fetchDuaBookMark(event.buildcontext);
      emit(state.copyWith(duaBookMarkModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _fetchDuaBySubcategoryEvent(
      FetchDuaBySubcategoryEvent event, Emitter<DuaState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await duaServices.fetchDuabySubCategory(
          subCategoryId: event.subCategoryId);
      emit(state.copyWith(duaModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
