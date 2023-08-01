import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:millat/resources/home/bloc/service/quran_service.dart';
import '../../../../../utils/string_constants.dart';
import '../../models/al-quran/chapter_by_id_model/chapter_by_id_model.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_indoPak_model.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_model.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_of_noSymbol.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_uthmani_model.dart';
import '../../models/al-quran/para_verses/para_verse_nosymbol.dart';
import '../../models/al-quran/para_verses/para_verse_uthmani.dart';
import '../../models/al-quran/para_verses/para_verses_model.dart';
import '../../models/al-quran/quran_all_translations_model/quran_all_translations_model.dart';
import '../../models/al-quran/quran_chapter_models/quran_chapter_models.dart';
import '../../models/al-quran/quran_para_model/quran_para_model.dart';
import '../../models/al-quran/recitors_mode/recitors_model.dart';
import '../../models/al-quran/versesbykey_model/verses_by_key_model.dart';

// import '../../models/para_verses/verses_by_key_model.dart';

part 'quran_event.dart';
part 'quran_state.dart';
part 'quran_bloc.freezed.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  final QuranServices quranServices = QuranServices();
  final AudioPlayer audioPlayer = AudioPlayer();
  QuranBloc() : super(QuranState.initial()) {
    on<FetchQuaranChaptersEvent>(_fetchQuranChapters);
    on<FetchChaperVersesEvent>(_fetchChaperVersesEvent);
    on<FetchParaVerses>(_fetchParaVerses);
    on<FetchChapterVersesbyTextName>(_fetchChapterVersesbyTextName);
    on<FetchQuranPara>(_fetchQuranPara);
    on<ChangeExpandOnSearchEvent>(_changeExpandOnSearchEvent);
    on<FechtChapterbyId>(_fechtChapterbyId);
    on<SearchChapterEvent>(_searchChapterEvent);
    on<FetchVersesByKey>(_fetchVerseByKey);
    on<ShowMusicbar>(_showMusicBar);
    on<FetchParaAudios>(_fetchParaAudios);
    on<ChangeIndexBackGroundSetting>(_changeIndexBackGroundSetting);
    on<IncreaseFontsize>(_increaseFontsize);
    on<DecreaseFontsize>(_decreaseFontsize);
    on<FetchAllTranslationsEvent>(_fetchAllTranslationsEvent);
    on<FetchTranslationChapterTexts>(_fetchTranslationTexts);
    on<FetchTranslationParaTexts>(_fetchTranslationParaTexts);
    on<PlayAllParaAudiosAuto>(_playAllAudioParaAuto);
    on<FetchChapterAudioFiles>(_fetchChapterAudioFiles);
    on<PlayAllChapterAudiosAuto>(_playAllChapterAudiosAuto);
    on<IsExpandonSearchEvent>(_isExpandonSearchEvent);
    on<SaveGlobalTransilationIdAndName>(_saveTransilationId);
    on<FetchAllRecitors>(_fetchAllRecitors);
    on<SaveRecitorNameAndId>(_saveRecitorNameAndId);
    on<SaveQuranTexttypeName>(_saveQuranTexttypeName);
    on<OnTapofNextEvent>(_onTapofNextEvent);
    on<OnTapofPrevEvent>(_onTapofPrevEvent);
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

  _fetchChapterVersesbyTextName(event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchChapterVersesbyTextName(
          id: event.id, textName: state.quranTextTypeName);

      if (state.quranTextTypeName == indopak) {
        emit(
          state.copyWith(
              chapterVersesIndoPakModel: data,
              isLoading: false,
              chapterName: "Juz ${event.id}"),
        );
        print('indopak aya $data');
      } else if (state.quranTextTypeName == uthmani) {
        emit(state.copyWith(
            chapterVersesOfUthmani: data,
            isLoading: false,
            chapterName: "Juz ${event.id}"));
        print('uthmani aya $data');
      } else if (state.quranTextTypeName == nosymbol) {
        emit(state.copyWith(
            chapterVersesOfNosymbol: data,
            isLoading: false,
            chapterName: "Juz ${event.id}"));
        print('nosymbol aya $data');
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchChaperVersesEvent(event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchChapterVerses(id: event.id);
      emit(
        state.copyWith(
            chapterVersesModel: data,
            isLoading: false,
            chapterName: data.data.englishName),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchParaVerses(FetchParaVerses event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchParaVerses(
          id: event.id, textName: state.quranTextTypeName);

      if (state.quranTextTypeName == indopak) {
        emit(
          state.copyWith(
              paraVersesModel: data,
              isLoading: false,
              chapterName: "Juz ${event.id}"),
        );
      } else if (state.quranTextTypeName == uthmani) {
        emit(state.copyWith(
            paraVersesModelofUthmani: data,
            isLoading: false,
            chapterName: "Juz ${event.id}"));
      } else if (state.quranTextTypeName == nosymbol) {
        emit(state.copyWith(
            paraVersesModelofNoSymbol: data,
            isLoading: false,
            chapterName: "Juz ${event.id}"));
      }
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
      print('here the list verses by key $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _changeIndexBackGroundSetting(
      ChangeIndexBackGroundSetting event, Emitter<QuranState> emit) {
    emit(state.copyWith(currentSettingBgIndex: event.index));
  }

  _increaseFontsize(IncreaseFontsize event, Emitter<QuranState> emit) {
    emit(state.copyWith(fontsize: state.fontsize + 2.0));
  }

  _decreaseFontsize(event, Emitter<QuranState> emit) {
    emit(state.copyWith(fontsize: state.fontsize - 2.0));
  }

  _fetchAllTranslationsEvent(event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchAllTranslations();
      emit(state.copyWith(translationsModel: data, isLoading: false));
      print('here is the translation files in the bloc ${data}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchTranslationTexts(
      FetchTranslationChapterTexts event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchAllChapterTranslationTexts(
          chapterId: event.chapterId, translationId: event.translationId);
      emit(state.copyWith(chapterTranslationText: data, isLoading: false));
      print('here is the audion files in the bloc ${data}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchTranslationParaTexts(
      FetchTranslationParaTexts event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchAllParaTranslationTexts(
          paraId: event.paraId, translationId: event.translationId);
      emit(state.copyWith(paraTranslationText: data, isLoading: false));
      print('here is the audion files in the bloc ${data}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchParaAudios(FetchParaAudios event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchParaAudioFiles(
          recitorId: event.recitorId, id: event.id);
      emit(state.copyWith(paraAudios: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _playAllAudioParaAuto(
      PlayAllParaAudiosAuto event, Emitter<QuranState> emit) async {
    final List<AudioSource> audioSources = state.paraAudios.map((audioData) {
      final audioSource = AudioSource.uri(
          Uri.parse("https://verses.quran.com/${audioData['url']}"));
      return audioSource;
    }).toList();

    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: audioSources,
    );

    if (audioPlayer.playing) {
      await audioPlayer.pause();
      emit(state.copyWith(audioPlaying: false));
    } else {
      emit(state.copyWith(audioPlaying: true));
      await audioPlayer.setAudioSource(playlist,
          initialIndex: event.index, initialPosition: Duration.zero);
      audioPlayer.play();
    }
    audioPlayer.currentIndexStream.listen((event) {
      emit(state.copyWith(audioIndex: event!));
    });
    await for (final playbackState in audioPlayer.playerStateStream) {
      if (playbackState.processingState == ProcessingState.completed) {
        emit(state.copyWith(audioPlaying: false));
        break;
      }
    }
  }

  _playAllChapterAudiosAuto(
      PlayAllChapterAudiosAuto event, Emitter<QuranState> emit) async {
    final List<AudioSource> audioSources = state.chapterAudios.map((audioData) {
      final audioSource = AudioSource.uri(
          Uri.parse("https://verses.quran.com/${audioData['url']}"));
      return audioSource;
    }).toList();

    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: audioSources,
    );

    if (audioPlayer.playing) {
      await audioPlayer.pause();
      emit(state.copyWith(audioPlaying: false));
    } else {
      emit(state.copyWith(audioPlaying: true));
      await audioPlayer.setAudioSource(
        playlist,
        initialIndex: event.index,
        initialPosition: Duration.zero,
      );
      audioPlayer.play();
    }
    audioPlayer.currentIndexStream.listen((event) {
      emit(state.copyWith(audioIndex: event!));
    });
    await for (final playbackState in audioPlayer.playerStateStream) {
      if (playbackState.processingState == ProcessingState.completed) {
        emit(state.copyWith(audioPlaying: false));
        break;
      }
    }
  }

  _fetchChapterAudioFiles(
      FetchChapterAudioFiles event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchChapterAudiofiles(
          id: event.id, recitorId: event.recitorId);
      emit(state.copyWith(chapterAudios: data, isLoading: false));
      print('here is the chapter audios files ${state.chapterAudios}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _showMusicBar(ShowMusicbar event, Emitter<QuranState> emit) {
    emit(state.copyWith(
        isShowMusicbar: state.isShowMusicbar == false ? true : false));
  }

  _isExpandonSearchEvent(
      IsExpandonSearchEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(isExpand: event.isExpand));
    print('here is the is expand state ${state.isExpand}');
  }

  _saveTransilationId(
      SaveGlobalTransilationIdAndName event, Emitter<QuranState> emit) {
    emit(state.copyWith(
        globalTransilationId: event.transilationId,
        transilationName: event.translationName));
  }

  _fetchAllRecitors(FetchAllRecitors event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchAllRecitors();
      emit(state.copyWith(recitationsModel: data, isLoading: false));
      print('here is the recite dat on the bloc $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _saveRecitorNameAndId(SaveRecitorNameAndId event, Emitter<QuranState> emit) {
    emit(state.copyWith(
        recitorId: event.recitorId, recitorName: event.recitorName));
  }

  _saveQuranTexttypeName(
      SaveQuranTexttypeName event, Emitter<QuranState> emit) {
    emit(state.copyWith(quranTextTypeName: event.textName));
    print('here is the texttype in state ${state.quranTextTypeName}');
  }

  _onTapofNextEvent(OnTapofNextEvent event, Emitter<QuranState> emit) {
    if (state.nxtAndprevValue >= 1 && state.nxtAndprevValue <= 30) {
      emit(state.copyWith(nxtAndprevValue: state.nxtAndprevValue + 1));
    }
  }

  _onTapofPrevEvent(OnTapofPrevEvent event, Emitter<QuranState> emit) {
    if (state.nxtAndprevValue >= 1 && state.nxtAndprevValue <= 30) {
      emit(state.copyWith(nxtAndprevValue: state.nxtAndprevValue - 1));
    }
  }
}
