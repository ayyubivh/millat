import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:millat/resources/home/bloc/models/al-quran/aya/aya_id_model.dart';
import 'package:millat/resources/home/bloc/models/al-quran/quran_para_model/quran_para_aya_model.dart';
import 'package:millat/resources/home/bloc/service/quran_service.dart';
import '../../../../../utils/string_constants.dart';
import '../../models/al-quran/aya/surah_aya_model.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_indoPak_model.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_of_noSymbol.dart';
import '../../models/al-quran/chapter_verses_model/chapter_verses_uthmani_model.dart';
import '../../models/al-quran/para_verses/para_verse_nosymbol.dart';
import '../../models/al-quran/para_verses/para_verse_uthmani.dart';
import '../../models/al-quran/quran_all_translations_model/quran_all_translations_model.dart';
import '../../models/al-quran/quran_chapter_models/quran_surah_models.dart';
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
    on<IsExpandSearchEvent>(_isExpandSearchEvent);
    on<SaveGlobalTransilationIdAndName>(_saveTransilationId);
    on<FetchAllRecitors>(_fetchAllRecitors);
    on<SaveRecitorNameAndId>(_saveRecitorNameAndId);
    on<SaveQuranTexttypeName>(_saveQuranTexttypeName);
    on<OnTapofNextEvent>(_onTapofNextEvent);
    on<OnTapofPrevEvent>(_onTapofPrevEvent);
    on<SaveLastReadEvent>(_saveLastReadEvent);
    on<FetchSingleVerseTranslation>(_fetchSingleVerseTranslation);
    // on<PlaySingleAudio>(_playSingleAudio);
    on<EmptyQuranVersesbyKey>(_emptyQuranVersesKey);
    on<PlayPlayListAudio>(_playPlayListAudio);
    on<AddVersesToPlayList>(_addVersesToPlayList);
    on<GetShuffledAya>(_getShuffledAya);
    on<FetchQuranAyaById>(_fetchQuranAyaById);
  }

  _fetchQuranChapters(
      FetchQuaranChaptersEvent event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchQuranChapters();
      emit(state.copyWith(quranSurahModel: data, isLoading: false));
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
            // chapterName:,
          ),
        );
      } else if (state.quranTextTypeName == uthmani) {
        emit(state.copyWith(
          chapterVersesOfUthmani: data,
          isLoading: false,
          // chapterName: "Juz ${event.id}"
        ));
      } else if (state.quranTextTypeName == nosymbol) {
        emit(state.copyWith(
          chapterVersesOfNosymbol: data,
          isLoading: false,
          // chapterName: "Juz ${event.id}"
        ));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchChaperVersesEvent(event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchQuranSurahAya(event.id);
      emit(
        state.copyWith(
          quranSurahAyaModel: data,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _fetchParaVerses(FetchParaVerses event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchQuranParaAya(event.id);
      print(data);
      emit(
        state.copyWith(
            paraVersesModel: data,
            isLoading: false,
            chapterName: "Juz ${event.id}"),
      );
      // } else if (state.quranTextTypeName == uthmani) {
      //   emit(state.copyWith(
      //       paraVersesModelofUthmani: data,
      //       isLoading: false,
      //       chapterName: "Juz ${event.id}"));
      // } else if (state.quranTextTypeName == nosymbol) {
      //   emit(state.copyWith(
      //       paraVersesModelofNoSymbol: data,
      //       isLoading: false,
      //       chapterName: "Juz ${event.id}"));
      // }
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
      final data = await quranServices.fetchQuranSurahAya(event.slug);
      emit(state.copyWith(quranSurahAyaModel: data, isLoading: false));
      debugPrint('here is the data of lists of quan by id $data');
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _changeExpandOnSearchEvent(
      ChangeExpandOnSearchEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(isExpand2: !state.isExpand2));
  }

  _searchChapterEvent(SearchChapterEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(isLoading: true));
    try {
      final query = event.query.toLowerCase();
      if (query.isEmpty) {
        emit(state.copyWith(
            searchChapters: state.quranSurahModel, isLoading: false));
      } else {
        final filteredChapters = state.quranSurahModel!
            .where((chapter) => chapter.title!.toLowerCase().contains(query))
            .toList();

        emit(
            state.copyWith(searchChapters: filteredChapters, isLoading: false));
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }
      throw Exception(e);
    }
  }

  _fetchVerseByKey(FetchVersesByKey event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchVersesbyKey(event.verseKey);

      emit(state.copyWith(
        versesByKeyModel: data,
        isLoading: false,
      ));
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
    final increasedSize = state.fontsize + 2.0;
    const maxSize = 35.0;

    final newFontSize = increasedSize <= maxSize ? increasedSize : maxSize;

    emit(state.copyWith(fontsize: newFontSize));
  }

  _decreaseFontsize(event, Emitter<QuranState> emit) {
    final decreasedSize = state.fontsize - 2.0;
    const minSize = 10.0;

    final newFontSize = decreasedSize >= minSize ? decreasedSize : minSize;

    emit(state.copyWith(fontsize: newFontSize));
  }

  _fetchAllTranslationsEvent(event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchAllTranslations();
      emit(state.copyWith(translationsModel: data, isLoading: false));
      debugPrint('here is the translation files in the bloc $data');
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

  // _playSingleAudio(PlaySingleAudio event, Emitter<QuranState> emit) async {
  //   try {
  //     // Replace this with the correct URL or file path to your audio
  //     final audioUrl =
  //         "https://verses.quran.com/Alafasy/mp3/${event.chapterId}${event.aya}.mp3";

  //     // Set the audio source URL
  //     await audioPlayer.setUrl(audioUrl);
  //     emit(state.copyWith(audioPlaying: true));
  //     if (audioPlayer.playing) {
  //       await audioPlayer.pause();
  //       emit(state.copyWith(audioPlaying: false));
  //     } else {
  //       await audioPlayer.play();
  //       emit(state.copyWith(audioPlaying: true));
  //     }
  //     await for (final playbackState in audioPlayer.playerStateStream) {
  //       if (playbackState.processingState == ProcessingState.completed) {
  //         emit(state.copyWith(audioPlaying: false));
  //         break;
  //       }
  //     }
  //   } catch (e) {
  //     emit(state.copyWith(audioPlaying: false));
  //     throw Exception(e);
  //   }
  // }

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

  _playPlayListAudio(PlayPlayListAudio event, Emitter<QuranState> emit) async {
    final List<String> audioUrls = state.bookmarkAudioPlaylist.map((verseKey) {
      List<String> verseKeyParts = verseKey.split(':');

      String chapterNumber = verseKeyParts[0].padLeft(3, '0');
      String verseNumber = verseKeyParts[1].padLeft(3, '0');
      return 'https://verses.quran.com/AbdulBaset/Mujawwad/mp3/$chapterNumber$verseNumber.mp3';
    }).toList();
    // Create an audio playlist from the list of URLs
    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children:
          audioUrls.map((url) => AudioSource.uri(Uri.parse(url))).toList(),
    );

    await audioPlayer.setAudioSource(
      playlist,
      initialPosition: Duration.zero,
    );

    if (state.audioPlaying) {
      await audioPlayer.pause();
      emit(state.copyWith(audioPlaying: false));
    } else {
      emit(state.copyWith(audioPlaying: true));
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

  _addVersesToPlayList(
      AddVersesToPlayList event, Emitter<QuranState> emit) async {
    final data = await quranServices.fetchVersesbyKey(event.verseKey);

    final List<String> verseKeys = data
        .map((e) => e.verses.map((e) => e.verseKey))
        .expand((e) => e)
        .toList();

    // Update the state with the verse keys
    emit(state.copyWith(bookmarkAudioPlaylist: verseKeys));

    debugPrint('Here the list verses by key ${state.bookmarkAudioPlaylist}');
  }

  _fetchChapterAudioFiles(
      FetchChapterAudioFiles event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchChapterAudiofiles(
          id: event.id, recitorId: event.recitorId);
      emit(state.copyWith(chapterAudios: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      debugPrint("error fetch quran bloc $e");
    }
  }

  _showMusicBar(ShowMusicbar event, Emitter<QuranState> emit) {
    emit(state.copyWith(isShowMusicbar: !state.isShowMusicbar));
  }

  _isExpandSearchEvent(IsExpandSearchEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(isExpand: event.isExpand));

    debugPrint('here is the is expand state ${state.isExpand}');
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
      debugPrint('here is the recite dat on the bloc $data');
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
    debugPrint('here is the texttype in state ${state.quranTextTypeName}');
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

  _saveLastReadEvent(SaveLastReadEvent event, Emitter<QuranState> emit) {
    emit(state.copyWith(lastRead: event.value));
  }

  _fetchSingleVerseTranslation(
      FetchSingleVerseTranslation event, Emitter<QuranState> emit) async {
    try {
      final data = await quranServices.fetchSingleVerseTranslationTexts(
          translationId: state.globalTransilationId, verseKey: event.verseKey);
      emit(state.copyWith(singleTranslation: data!));
    } catch (e) {
      throw Exception(e);
    }
  }

  _emptyQuranVersesKey(EmptyQuranVersesbyKey event, Emitter<QuranState> emit) {
    emit(state.copyWith(
      versesByKeyModel: null,
    ));
  }

  _getShuffledAya(GetShuffledAya event, Emitter<QuranState> emit) {
    final shuffledList = List.from(state.tempListAya)..shuffle();
    emit(state.copyWith(shuffleVersKey: shuffledList.first));
  }

  _fetchQuranAyaById(FetchQuranAyaById event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchAyaById(event.id);
      emit(state.copyWith(isLoading: false, ayaById: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
  }
}
