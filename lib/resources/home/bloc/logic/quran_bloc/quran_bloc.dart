import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/chapter_verses_model/chapter_verses_model.dart';
import 'package:millat/resources/home/bloc/models/para_verses/para_verses_model.dart';
import 'package:millat/resources/home/bloc/service/quran_service.dart';

import '../../models/quran_chapter_models/quran_chapter_models.dart';
import '../../models/quran_para_model/quran_para_model.dart';
import '../../models/verses_translation_model/verses_translation.dart';

part 'quran_event.dart';
part 'quran_state.dart';
part 'quran_bloc.freezed.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  final QuranServices quranServices = QuranServices();
  QuranBloc() : super(QuranState.initial()) {
    on<FetchQuaranChaptersEvent>(_fetchQuranChapters);
    on<FetchChaperVersesEvent>(_fetchChaperVersesEvent);
    on<FetchParaVerses>(_fetchParaVerses);
    on<FetchQuranPara>(_fetchQuranPara);
    on<FetchTranslationChapter>(_fetchTranslationChapter);
    on<FetchTranslationJuz>(_fetchTranslationJuz);
  }

  _fetchQuranChapters(
      FetchQuaranChaptersEvent event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchQuranChapters();
      emit(state.copyWith(quranChaptersModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchChaperVersesEvent(event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchChapterVerses(id: event.id);
      emit(state.copyWith(
          chapterVersesModel: data, isLoading: false, chatpterId: event.id));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchParaVerses(FetchParaVerses event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchParaVerses(id: event.id);
      emit(state.copyWith(
          paraVersesModel: data, isLoading: false, paraId: event.id));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchQuranPara(FetchQuranPara event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchQuranPara();
      emit(state.copyWith(quranParaModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchTranslationChapter(
      FetchTranslationChapter event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetcTranslationChapter(
        event.chapterId,
      );
      emit(state.copyWith(versesTranslationModel: data, isLoading: false));
      print('here is the all result of translation $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchTranslationJuz(
      FetchTranslationJuz event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchTranslationJuz(
        event.juzId,
      );
      emit(state.copyWith(versesTranslationModel: data, isLoading: false));
      print('here is the all result of translation $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }
}
