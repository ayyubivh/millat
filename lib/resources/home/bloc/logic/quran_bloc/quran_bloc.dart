import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/chapter_verses_model/chapter_verses_model.dart';
import 'package:millat/resources/home/bloc/models/para_verses/para_verses_model.dart';
import 'package:millat/resources/home/bloc/service/quran_service.dart';

import '../../models/chapter_by_id_model/chapter_by_id_model.dart';
// import '../../models/para_verses/verses_by_key_model.dart';
import '../../models/quran_chapter_models/quran_chapter_models.dart';
import '../../models/quran_para_model/quran_para_model.dart';
import '../../models/verses_translation_model/verses_translation.dart';
import '../../models/versesbykey_model/verses_by_key_model.dart';

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
    on<ChangeExpandEvent>(_chageExpandedEvent);
    on<ChangeExpandOnSearchEvent>(_changeExpandOnSearchEvent);
    on<FechtChapterbyId>(_fechtChapterbyId);
    on<SearchChapterEvent>(_searchChapterEvent);
    on<FetchVersesByKey>(_fetchVerseByKey);
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
        chapterVersesModel: data,
        isLoading: false,
      ));
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
        paraVersesModel: data,
        isLoading: false,
      ));
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

  _chageExpandedEvent(ChangeExpandEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(isExpand: state.isExpand == false ? true : false));
  }

  _fechtChapterbyId(FechtChapterbyId event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchChaptersByIds(event.id);
      emit(state.copyWith(chapterByIdModel: data, isLoading: false));
      print('here is the data of lists of quan by id $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _changeExpandOnSearchEvent(
      ChangeExpandOnSearchEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(isExpand2: state.isExpand2 == false ? true : false));
  }

  _searchChapterEvent(SearchChapterEvent event, Emitter<QuranState> emit) {
    final query = event.query.toLowerCase();
    if (query.isEmpty) {
      emit(state.copyWith(searchChapters: state.quranChaptersModel?.chapters));
    } else {
      final filteredChapters = state.quranChaptersModel!.chapters
          .where((chapter) => chapter.nameSimple.toLowerCase().contains(query))
          .toList();

      emit(state.copyWith(searchChapters: filteredChapters));
    }
  }

  _fetchVerseByKey(FetchVersesByKey event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchVersesbyKey(event.verseKey);
      emit(state.copyWith(versesByKeyModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }
}
