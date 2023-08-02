import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/dua/dua_model/dua_model_byId.dart';
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
    on<AddBookmarkEvent>(addBookmarkEvent);
    on<RemoveBookmark>(_removeBookMark);
    on<ChangeSliderEvent>(_changeSliderEvent);
    on<FetchDuaById>(_fetchDuabyId);
    on<ChangeSubcategoryNameEvent>(_changeSubcategoryNameEvent);
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
      final upadatedbookMarklist =
          data.result?.bookmarks[0].bookmarks.map((e) => e.duaId).toSet();
      print('here is the ids of duas $upadatedbookMarklist');
      emit(state.copyWith(
          duaBookMarkModel: data,
          isLoading: false,
          bookmarkItems: upadatedbookMarklist));
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

  addBookmarkEvent(AddBookmarkEvent event, Emitter<DuaState> emit) async {
    try {
      final data = await duaServices.addBookmark(
          context: event.context, duaId: event.duaId);
      final updatedBookmark = state.bookmarkItems?.toSet() ?? {}
        ..add(event.duaId);
      emit(state.copyWith(bookmarkItems: updatedBookmark));
      if (data['status'] == 200) {
        emit(state.copyWith(bookmarkSuccess: data['message']));
      } else {
        emit(state.copyWith(bookmarkError: data['error']));
      }
    } catch (e) {
      emit(
        state.copyWith(bookmarkError: e.toString()),
      );
    }
  }

  _removeBookMark(RemoveBookmark event, Emitter<DuaState> emit) async {
    try {
      final data = await duaServices.removeBookmark(
          context: event.context, duaId: event.duaId);

      if (data['status'] == 200) {
        final updatedList = state
            .duaBookMarkModel?.result?.bookmarks[0].bookmarks
            .where((element) => element.duaId != event.duaId)
            .toList();
        final updatedModel = state.duaBookMarkModel?.result?.bookmarks[0]
            .copyWith(bookmarks: updatedList!);
        emit(state.copyWith(
          duaBookMarkModel: state.duaBookMarkModel?.copyWith(
              result: state.duaBookMarkModel?.result
                  ?.copyWith(bookmarks: [updatedModel])),
          bookmarkSuccess: data['message'],
        ));
      } else {
        emit(state.copyWith(bookmarkError: data['error']));
      }
    } catch (e) {
      emit(state.copyWith(bookmarkError: e.toString()));
    }
  }

  _changeSliderEvent(ChangeSliderEvent event, Emitter<DuaState> emit) {
    emit(state.copyWith(sliderValue: event.sliderVal));
  }

  _fetchDuabyId(FetchDuaById event, Emitter<DuaState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await duaServices.fetchDuasByIds(state
          .duaBookMarkModel!.result!.bookmarks[0].bookmarks
          .map((e) => e.duaId)
          .toList());
      emit(state.copyWith(duaModelbyId: data, isLoading: false));
      print('here is the list of duas by id in the bloc $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e.toString());
    }
  }

  _changeSubcategoryNameEvent(
      ChangeSubcategoryNameEvent event, Emitter<DuaState> emit) {
    emit(state.copyWith(subCategoryName: event.newName));
  }
}
