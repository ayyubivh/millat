part of 'quran_bloc.dart';

@freezed
class QuranState with _$QuranState {
  const factory QuranState({
    required bool isLoading,
    required QuranChapters? quranChaptersModel,
    required ChapterVersesModel? chapterVersesModel,
    required ParaVersesModel? paraVersesModel,
    required QuranParaModel? quranParaModel,
    required List<ChapterByIdModel>? chapterByIdModel,
    required VersesTranslationModel? versesTranslationModel,
    required List<Chapters>? searchChapters,
    required bool isExpand,
    required bool isExpand2,
    required VersesByKeyModel? versesByKeyModel,
  }) = _QuranState;
  factory QuranState.initial() => const QuranState(
      isLoading: false,
      quranChaptersModel: null,
      chapterVersesModel: null,
      paraVersesModel: null,
      quranParaModel: null,
      chapterByIdModel: null,
      versesTranslationModel: null,
      isExpand: false,
      searchChapters: [],
      versesByKeyModel: null,
      isExpand2: false);
}
